class Movie < ApplicationRecord
  has_one_attached :image
  has_many :reviews,dependent: :destroy
  has_many :comments,dependent: :destroy
  belongs_to :genre

def self.search(search_word)
    where('filmname LIKE ? OR introduction LIKE ?', "%#{keyword}%", "%#{keyword}%")
end

end
