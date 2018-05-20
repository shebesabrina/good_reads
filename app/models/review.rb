class Review < ApplicationRecord
  validate_precesence_of :title

  belongs_to :user
  belongs_to :book
end
