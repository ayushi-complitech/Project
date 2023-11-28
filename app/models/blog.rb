class Blog < ApplicationRecord
  belongs_to :user
  validates :blog_name, presence: true, length: { minimum: 3 }
  has_rich_text :content
  has_one_attached :image
end
