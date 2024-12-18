class Blog < ApplicationRecord
  enum :state, { draft: 0, published: 1 }

  validates :title, :content, presence: true

  # Allow specific attributes to be searchable using Ransack
  def self.ransackable_attributes(auth_object = nil)
    ["title", "state", "content", "summary"]  # Add fields you want to be searchable
  end
end
