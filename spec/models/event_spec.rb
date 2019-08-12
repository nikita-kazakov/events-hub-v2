require 'rails_helper'

describe 'An Event' do

  before(:each) do
    @event = Event.new(name:"Named Thing",
                      location:"Denver, CO",
                      price: 50,
                      image_file_name: 'placeholder.jpg',
                      capacity: 10,
    )

    @registration = @event.registrations.new

  end

  it 'requires a name' do
    @event.name = ""
    @event.valid?
    expect(@event.errors[:name].any?).to eq(true)

  end

  it 'requires a positive price' do
    @event.price = -4
    @event.valid?
    expect(@event.errors[:price].any?).to eq(true)

  end

  it 'requires a description' do
    @event.description
    @event.valid?
    expect(@event.errors[:description].any?).to eq(true)

  end

  it 'requires a location' do
    @event.location = ""
    @event.valid?
    expect(@event.errors[:location].any?).to eq(true)

  end

  it 'is not free if price > 0 and is free if 0' do

    @event.price = 4
    expect(@event.free?).to eq(false)

    @event.price = 0
    expect(@event.free?).to eq(true)

  end

  it 'counts correct # of spots' do
    @event.capacity = 5
    @registration.save

    expect(@event.spots_left).to eq(4)
  end

  it 'Event is sold out' do
    @event.capacity = 1
    @registration.save

    expect(@event.sold_out).to eq(true)
  end

  it 'Has registrations' do
    @registration.save
    expect(@event.anyone_registered).to eq(true)
  end


end