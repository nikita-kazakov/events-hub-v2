class Event < ApplicationRecord
  has_many :registrations, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :likers, through: :likes, source: :user

  validates :name, :location, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0}, presence: true
  validates :description, length: {minimum: 20}


  def free?
    price.blank? || price.zero?
  end

  def spots_left
    capacity - registrations.size
  end

  def sold_out
    spots_left.zero?
  end

  def anyone_registered
    registrations.any?
  end

end
