class Event < ApplicationRecord
  has_many :registrations, dependent: :destroy

  has_many :likes, dependent: :destroy
  has_many :likers, through: :likes, source: :user

  has_many :categorizations, dependent: :destroy
  has_many :categories, through: :categorizations

  #Lambda. Query code is evaluated each time.
  scope :past, -> {where('starts_at < ?', Time.now).order(:starts_at)}
  scope :upcoming, -> {where('starts_at > ?', Time.now).order(:starts_at)}
  scope :free, -> {where(price: 0).order(:name)}
  scope :recent, ->(max=1) {past.limit(max)}

  validates :name, :location, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0}, presence: true
  validates :description, length: {minimum: 20}

  #To Param is used to make friendly URLS for this Event Model.
  def to_param
    "#{id}-#{name.parameterize}"
  end


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
