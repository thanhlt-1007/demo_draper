class Book < ApplicationRecord
  enum status: {drafting: 0, published: 1}
end
