package IO::K8s::Kubernetes::Pkg::Apis::Authorization::V1beta1::SelfSubjectAccessReview;
  use Moose;

  has 'kind' => (is => 'ro', isa => 'Str'  );
  has 'metadata' => (is => 'ro', isa => 'IO::K8s::Apimachinery::Pkg::Apis::Meta::V1::ObjectMeta'  );
  has 'apiVersion' => (is => 'ro', isa => 'Str'  );
  has 'status' => (is => 'ro', isa => 'IO::K8s::Api::Authorization::V1beta1::SubjectAccessReviewStatus'  );
  has 'spec' => (is => 'ro', isa => 'IO::K8s::Api::Authorization::V1beta1::SelfSubjectAccessReviewSpec'  );
1;