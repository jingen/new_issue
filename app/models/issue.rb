class Issue < ActiveRecord::Base
  validates_presence_of :title, :description
  belongs_to :project

  has_attached_file :photo, :styles => { :small => "150x150>" },
                    # :url => "/:attachment/:id/:style/:basename.:extension",
                    :url => "/assets/issues/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/issues/:id/:style/:basename.:extension"
  validate_attachment_presence :photo
  validate_attachment_size :photo, :less_than => 5.megabytes
  validate_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end
