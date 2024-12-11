class Blog < ApplicationRecord
  enum :state, { draft: 0, published: 1 }
end
