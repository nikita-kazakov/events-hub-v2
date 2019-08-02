class Category < ApplicationRecord

  has_many :categorizations, dependent: :destroy
  has_many :events, through: :categorizations

end
