class Movie < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  
  has_attached_file :image, styles: { medium: "400x600#", thumb: "100x150#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
