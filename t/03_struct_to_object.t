#!/usr/bin/env perl

use Test::More;
use IO::K8s;

my $io = IO::K8s->new;

my $obj = $io->struct_to_object(
  'IO::K8s::Api::Core::V1::Container',
  {
    name => 'container_name',
    env => [
      { name => 'STR_ENV', value => 'STRVALUE' },
      { name => 'INT_ENV', value => '3306' },
    ],
    ports => [
      { hostPort => '4607' },
    ],
    tty => 1,
  }
);

isa_ok($obj, 'IO::K8s::Api::Core::V1::Container');
cmp_ok($obj->name, 'eq', 'container_name');
isa_ok($obj->env->[0], 'IO::K8s::Api::Core::V1::EnvVar');
cmp_ok($obj->env->[0]->name, 'eq', 'STR_ENV');
cmp_ok($obj->env->[0]->value, 'eq', 'STRVALUE');
isa_ok($obj->ports->[0], 'IO::K8s::Api::Core::V1::ContainerPort');
cmp_ok($obj->ports->[0]->hostPort, '==', 4607);
cmp_ok($obj->tty, '==', 1);

# Turn that into a JSON
my $json = $io->object_to_json($obj);

like($json, qr|"name":"container_name"|);
like($json, qr|"value":"3306"|);
like($json, qr|"hostPort":4607|);
like($json, qr|"tty":true|);

done_testing;