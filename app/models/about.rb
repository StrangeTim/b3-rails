class About < ActiveRecord::Base
  has_attached_file :image, :path => ":rails_root/app/assets/images/about/:basename_:style.:extension",
                    :url => "about/:basename_:style.:extension",
                    :styles => {
                      :display => '300x300'
                    }
  validates_attachment_presence :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
