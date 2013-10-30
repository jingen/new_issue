class AddAttachmentPhotoToIssues < ActiveRecord::Migration
  def self.up
    change_table :issues do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :issues, :photo
  end
end
