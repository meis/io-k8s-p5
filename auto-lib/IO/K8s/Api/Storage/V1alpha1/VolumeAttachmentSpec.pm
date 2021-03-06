package IO::K8s::Api::Storage::V1alpha1::VolumeAttachmentSpec;
  use Moose;

  has 'attacher' => (is => 'ro', isa => 'Str'  );
  has 'nodeName' => (is => 'ro', isa => 'Str'  );
  has 'source' => (is => 'ro', isa => 'IO::K8s::Api::Storage::V1alpha1::VolumeAttachmentSource'  );
1;
