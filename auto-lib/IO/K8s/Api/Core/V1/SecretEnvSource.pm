package IO::K8s::Api::Core::V1::SecretEnvSource;
  use Moose;

  has 'optional' => (is => 'ro', isa => 'Bool'  );
  has 'name' => (is => 'ro', isa => 'Str'  );
1;