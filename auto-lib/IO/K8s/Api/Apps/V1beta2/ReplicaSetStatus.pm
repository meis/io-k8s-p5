package IO::K8s::Api::Apps::V1beta2::ReplicaSetStatus;
  use Moose;

  has 'readyReplicas' => (is => 'ro', isa => 'Int'  );
  has 'replicas' => (is => 'ro', isa => 'Int'  );
  has 'fullyLabeledReplicas' => (is => 'ro', isa => 'Int'  );
  has 'observedGeneration' => (is => 'ro', isa => 'Int'  );
  has 'conditions' => (is => 'ro', isa => 'ArrayRef[IO::K8s::Api::Apps::V1beta2::ReplicaSetCondition]'  );
  has 'availableReplicas' => (is => 'ro', isa => 'Int'  );
1;