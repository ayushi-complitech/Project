class Blog < ApplicationRecord
  belongs_to :user
  validates :blog_name, presence: true, length: { minimum: 3 }
end
