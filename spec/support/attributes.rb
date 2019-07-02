#Override your hashes here.

def event_attributes(overrides={})
  {
      id: 5,
      name: "Derailed",
      location: "Colorado Springs, CO",
      price: 20,
      description: "Denver based polyglot developer group. We've been around a long time and have a great group of folks willing to explore new avenues and help people of all backgrounds. ",
      image_file_name: "katacamp.jpg",
      starts_at: Time.now,
      capacity: 9
  }.merge(overrides)
end