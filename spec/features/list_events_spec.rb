require 'rails_helper'

describe 'Viewing list of events' do

  before(:each) do
    @event1 = Event.create(name:"Named Thing",
                       location:"Denver, CO",
                       price: 50,
                       description: "this event is glorious because we are putting it on for all people to watch.",
                       capacity: 10,
                       starts_at: Time.now

    )

    @event2 = Event.create(name:"Go Here",
                           location:"Pueblo, CO",
                           price: 22,
                           description: "Fantastic because we are putting it on for all people to watch.",
                           capacity: 3,
                           starts_at: Time.now
                           )


  end

  it 'shows events' do

    visit events_url
    expect(page).to have_text(@event1.name)
    expect(page).to have_text(@event2.name)

    expect(page).to have_text(@event1.description)
    expect(page).to have_text(@event2.description)


  end


end