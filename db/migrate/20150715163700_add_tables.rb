class AddTables < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :bio
      t.string :display_image_name
      t.string :display_image_blurb
      t.string :display_image_description
      t.string :updated_by
      t.timestamps
    end

    create_table :artworks do |t|
      t.string :name
      t.string :blurb
      t.string :image_description
      t.string :updated_by
    end
  end
end
