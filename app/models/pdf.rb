class Pdf < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader
end
