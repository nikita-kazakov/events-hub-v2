require 'rails_helper'

describe 'Viewing list of events' do

  it 'shows events' do

    event1 = Event.create(
        name: "Derailed",
        location: "Colorado Springs, CO",
        price: 20,
        description: "Denver based polyglot developer group. We've been around a long time and have a great group of folks willing to explore new avenues and help people of all backgrounds. ",
        image_file_name: "katacamp.jpg",
        starts_at: Time.now,
        capacity: 9
    )

    event2 = Event.create(
        name: "Javacamp",
        location: "Colorado Springs, CO",
        price: 15,
        description: "Javacamp description",
        image_file_name: "go.jpg",
        starts_at: Time.now,
        capacity: 10
    )

    visit events_url
    expect(page).to have_text(event1.name)
    expect(page).to have_text(event1.location)
    expect(page).to have_text(event2.name)
    expect(page).to have_text("20")


  end

  it 'should display location' do
    event1 = Event.create(event_attributes(location: "Denver"))

    visit events_url
    expect(page).to have_text("In Denver")
    
  end

end