class CreateHomeAndAbout < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :title
      t.string :left_header
      t.string :left_body
      t.string :right_header
      t.string :right_body
    end

    create_table :abouts do |t|
      t.string :title
      t.string :body
      t.string :contact_email
      t.string :contact_phone
      t.string :contact_address
    end
  end
end
