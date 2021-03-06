package IO::K8s::Api::Batch::V1beta1::CronJob;
  use Moose;

  has 'apiVersion' => (is => 'ro', isa => 'Str'  );
  has 'kind' => (is => 'ro', isa => 'Str'  );
  has 'metadata' => (is => 'ro', isa => 'IO::K8s::Apimachinery::Pkg::Apis::Meta::V1::ObjectMeta'  );
  has 'spec' => (is => 'ro', isa => 'IO::K8s::Api::Batch::V1beta1::CronJobSpec'  );
  has 'status' => (is => 'ro', isa => 'IO::K8s::Api::Batch::V1beta1::CronJobStatus'  );
1;
