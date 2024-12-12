class Blog < ApplicationRecord
  enum :state, { draft: 0, published: 1 }

  validates :title, :content, presence: true
end
