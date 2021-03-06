package IO::K8s::Api::Core::V1::Secret;
  use Moose;

  has 'apiVersion' => (is => 'ro', isa => 'Str'  );
  has 'data' => (is => 'ro', isa => 'HashRef[Str]'  );
  has 'kind' => (is => 'ro', isa => 'Str'  );
  has 'metadata' => (is => 'ro', isa => 'IO::K8s::Apimachinery::Pkg::Apis::Meta::V1::ObjectMeta'  );
  has 'stringData' => (is => 'ro', isa => 'HashRef[Str]'  );
  has 'type' => (is => 'ro', isa => 'Str'  );
1;
