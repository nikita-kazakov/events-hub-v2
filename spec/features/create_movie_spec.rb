require 'rails_helper'

describe 'Creating an event' do

  it 'should save event and show details' do

    visit events_path
    click_link 'Add Event'
    expect(current_path).to eq(new_event_path)

    fill_in "Name", with:"EVENTNAME"
    fill_in "Location", with: "Denver"
    fill_in "Price", with: "60"
    fill_in "Description", with: "Great Event because it really asks you to think about what is shown."
    fill_in "Capacity", with: "10"
    click_button "Create Event"

    expect(current_path).to eq(events_path)
    expect(page).to have_text("EVENTNAME")
    expect(page).to have_text("Denver")


  end

end