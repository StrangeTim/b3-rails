class AddAttachmentImageToArtworks < ActiveRecord::Migration
  def self.up
    change_table :artworks do |t|
      t.attachment :image
    end
    change_table :artists do |t|
      t.attachment :profile_pic
      t.integer :display_image_id
    end
    remove_column :artists, :display_image_name
    remove_column :artists, :display_image_blurb
    remove_column :artists, :display_image_description
  end

  def self.down
    remove_attachment :artworks, :image
    remove_attachment :artists, :profile_pic
  end
end
