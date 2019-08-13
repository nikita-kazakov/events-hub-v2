Event.create!(
    id: 1,
    name: "KataCamp",
    location: "Toronto, Canada",
    price: 30,
    description: "We are Toronto Entrepreneurs, comprised of start-ups, professionals and investors with a variety of expertise and resources in the extended Greater Toronto Area (GTA).",
    image_file_name: "laravel.jpg",
    starts_at: 2.months.from_now,
    capacity: 10
)

Event.create!(
    id: 2,
    name: "C# Valley Entrepreneurs",
    location: "Bay Area, CA",
    price: 23,
    description: "Silicon Valley Entrepreneurs (SVE) is the largest grassroots movements of founders and developers in the Bay Area since 2008.",
    image_file_name: "csharp.jpg",
    starts_at: 3.months.from_now,
    capacity: 7
)

Event.create!(
    id: 3,
    name: "GO Tech Meetup",
    location: "Bay Area, CA",
    price: 0,
    description: "The GO Tech Meetup convenes technologists, entrepreneurs, investors and the broader innovation community regularly to learn and share. Each month, 400+ innovators gather to see demos, launch products and meet their future co-founders, partners and funders.",
    image_file_name: "go.jpg",
    starts_at: 3.weeks.from_now,
    capacity: 4
)

Event.create!(
    id: 4,
    name: "SQL Boston Tech",
    location: "Boston, MA",
    price: 50,
    description: "The GO Tech Meetup convenes technologists, entrepreneurs, investors and the broader innovation community regularly to learn and share. Each month, 400+ innovators gather to see demos, launch products and meet their future co-founders, partners and funders.",
    image_file_name: "hackathon.jpg",
    starts_at: 4.months.ago,
    capacity: 12
)

Event.create!(
    id: 5,
    name: "Derailed",
    location: "Colorado Springs, CO",
    price: 0,
    description: "Denver based polyglot developer group. We've been around a long time and have a great group of folks willing to explore new avenues and help people of all backgrounds. ",
    image_file_name: "katacamp.jpg",
    starts_at: 3.weeks.ago,
    capacity: 9
)

User.create!(name: "Jim", username: "jim", email: "jim@go.com", password: "secret")
User.create!(name: "Bob", username: "bob", email: "bob@go.com", password: "secret")
User.create!(name: "Susan", username: "susan", email: "susan@go.com", password: "secret")
User.create!(name: "Jill", username: "Jill", email: "jill@go.com", password: "secret")
User.create!(name: "Bill", username: "Bill", email: "bill@go.com", password: "secret")
User.create!(name: "Ada", username: "ada", email: "ada@go.com", password: "secret")
User.create!(name: "Phylis", username: "phylis", email: "phylis@go.com", password: "secret")
User.create!(name: "Myung", username: "myung", email: "myung@go.com", password: "secret")
User.create!(name: "Rosa", username: "rosa", email: "rosa@go.com", password: "secret")


30.times.each do
  Like.create(
      user_id: User.all.sample.id,
      event_id: Event.all.sample.id
  )
end

30.times.each do
  Registration.create(
      user_id: User.all.sample.id,
      event_id: Event.all.sample.id,
      how_heard: "Reddit"
  )
end
