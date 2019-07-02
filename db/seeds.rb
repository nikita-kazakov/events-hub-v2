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

Registration.create!(name: "Jack Bloom", email: "jack@bloom.com", how_heard: "Reddit", event_id: 1)
Registration.create!(name: "Lauren Self", email: "lauren@outlook.com", how_heard: "Google", event_id: 1)
Registration.create!(name: "Sue Mellon", email: "sure_mellon@bloom.com", how_heard: "Google", event_id: 1)

Registration.create!(name: "Jake Sive", email: "jake@outlook.com", how_heard: "Reddit", event_id: 2)
Registration.create!(name: "Sun Noon ", email: "sun@outlook.com", how_heard: "Google", event_id: 2)
Registration.create!(name: "Edge Sooner ", email: "edge@outlook.com", how_heard: "Reddit", event_id: 2)

Registration.create!(name: "Corazon Hemhill", email: "corazon@outlook.com", how_heard: "Reddit", event_id: 3)
Registration.create!(name: "Bernie Koch ", email: "bernie@outlook.com", how_heard: "Reddit", event_id: 3)
Registration.create!(name: "Eric Stevenson ", email: "edge@outlook.com", how_heard: "Google", event_id: 3)
Registration.create!(name: "Jonie Stuffel ", email: "joanie@outlook.com", how_heard: "Reddit", event_id: 3)
