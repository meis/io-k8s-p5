package IO::K8s::Api::Networking::V1::NetworkPolicySpec;
  use Moose;

  has 'egress' => (is => 'ro', isa => 'ArrayRef[IO::K8s::Api::Networking::V1::NetworkPolicyEgressRule]'  );
  has 'ingress' => (is => 'ro', isa => 'ArrayRef[IO::K8s::Api::Networking::V1::NetworkPolicyIngressRule]'  );
  has 'podSelector' => (is => 'ro', isa => 'IO::K8s::Apimachinery::Pkg::Apis::Meta::V1::LabelSelector'  );
  has 'policyTypes' => (is => 'ro', isa => 'ArrayRef[Str]'  );
1;
