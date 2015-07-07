class Artwork < ActiveRecord::Base
  belongs_to :artist

  validates :name, :presence => true
  validates :artworkImageURL, :presence => true

end
