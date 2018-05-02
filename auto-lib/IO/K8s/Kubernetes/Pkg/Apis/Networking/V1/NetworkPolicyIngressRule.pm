package IO::K8s::Kubernetes::Pkg::Apis::Networking::V1::NetworkPolicyIngressRule;
  use Moose;

  has 'ports' => (is => 'ro', isa => 'ArrayRef[IO::K8s::Api::Networking::V1::NetworkPolicyPort]'  );
  has 'from' => (is => 'ro', isa => 'ArrayRef[IO::K8s::Api::Networking::V1::NetworkPolicyPeer]'  );
1;