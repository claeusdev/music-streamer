class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :genre

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


  has_attached_file :mp3
  validates_attachment :mp3,content_type: { content_type: ["audio/mpeg", "audio/mp3"] },
                      file_name: { matches: [/mp3\Z/] }

  
end
