require 'rails_helper'

describe "Creating a new event" do

  before do
    user = User.create(name:"bob",
                email: "bob@go.com",
                username: "bob",
                admin: true,
                password: "secret")

    visit root_url
    click_link 'Sign In'
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button 'Sign In'

  end

  it 'saves the event' do

    visit events_url
    click_link "Create Event"

    fill_in "Name", with: "C# Party"
    fill_in "Location", with: "Denver, CO"
    fill_in "Price", with: 50
    select (Time.now.year + 1).to_s, from: "event_starts_at_1i"
    fill_in "Description", with: "What a wonderful and long event full of C# classes and methods for you."
    fill_in "Capacity", with: 20

    click_button 'Create Event'

    expect(page).to have_text('Event Created!')
    expect(page).to have_text("C# Party")
    expect(page).to have_text("50")
  end

  it "doesn't save event if invalid" do
    visit events_url
    click_link "Create Event"

    fill_in "Name", with: "C# Party"

    click_button 'Create Event'
    expect(Event.count).to eq(0) #Making sure no event was created.
    expect(page).to have_text("Oops, you have")



  end

end