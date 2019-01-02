User.delete_all
Journal.delete_all
Entry.delete_all

puts "deleting previous seed data"

puts "seeding"

photos = ["https://www.stockvault.net/data/2007/03/01/102413/thumb16.jpg", "data:image/jpeg;base64,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", "https://www.stockvault.net/data/2008/09/02/106231/thumb16.jpg"]




User.create(
  first_name: "Shelby",
  last_name: "S",
  username: "shelby",
  password: "shelby",
  email: Faker::Internet.email,
  phone: Faker::PhoneNumber.cell_phone
)

theme = ["Wanderlust", "Love", "Financial studies", "Friends", "Professional development", "Plant diaries"]

Journal.create(
  user_id: 1,
  theme: theme[0] #Wanderlust 1
)
Journal.create(
  user_id: 1,
  theme: theme[1] #love 2
)
Journal.create(
  user_id: 1,
  theme: theme[2] #financial studies 3
)
Journal.create(
  user_id: 1,
  theme: theme[3] #friends 4
)
Journal.create(
  user_id: 1,
  theme: theme[4] #professional development 5
)
Journal.create(
  user_id: 1,
  theme: theme[5] #plant diaries 6
)

dates = [
  "Sun Sep 12 2018 03:24:00 GMT-0400 (Eastern Daylight Time)",
  "Tue Oct 13 2018 03:24:00 GMT-0400 (Eastern Daylight Time)",
  "Fri Nov 15 2018 03:24:00 GMT-0500 (Eastern Standard Time)",
  "Sun Dec 17 2018 03:24:00 GMT-0500 (Eastern Standard Time)",
  "Wed Dec 19 2018 10:49:47 GMT-0500 (Eastern Standard Time)",
  "Tue Dec 18 2018 11:15:29 GMT-0500 (Eastern Standard Time)"
  ]


Entry.create(
  journal_id: 1,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "Taos, NM",
  date: dates[0]
)
Entry.create(
  journal_id: 1,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "Taos, NM",
  date: dates[1]
)
Entry.create(
  journal_id: 1,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "Paris, FR",
  date: dates[2]
)
Entry.create(
  journal_id: 1,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[3]
)
Entry.create(
  journal_id: 1,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[4]
)
Entry.create(
  journal_id: 2,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[0]
)
Entry.create(
  journal_id: 2,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[1]
)
Entry.create(
  journal_id: 2,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[2]
)
Entry.create(
  journal_id: 2,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[3]
)
Entry.create(
  journal_id: 2,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[4]
)
Entry.create(
  journal_id: 2,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[5]
)

Entry.create(
  journal_id: 3,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[0]
)
Entry.create(
  journal_id: 3,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[1]
)
Entry.create(
  journal_id: 3,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[2]
)
Entry.create(
  journal_id: 3,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[3]
)
Entry.create(
  journal_id: 3,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[4]
)

Entry.create(
  journal_id: 4,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[0]
)
Entry.create(
  journal_id: 4,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[1]
)
Entry.create(
  journal_id: 4,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[2]
)
Entry.create(
  journal_id: 4,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[3]
)
Entry.create(
  journal_id: 4,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[4]
)
Entry.create(
  journal_id: 4,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[5]
)
Entry.create(
  journal_id: 5,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[0]
)
Entry.create(
  journal_id: 5,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[1]
)
Entry.create(
  journal_id: 5,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[2]
)
Entry.create(
  journal_id: 5,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[3]
)
Entry.create(
  journal_id: 5,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[4]
)
Entry.create(
  journal_id: 5,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[5]
)
Entry.create(
  journal_id: 6,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[0]
)
Entry.create(
  journal_id: 6,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[1]
)
Entry.create(
  journal_id: 6,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[2]
)
Entry.create(
  journal_id: 6,
  title: Faker::Book.title,
  body: Faker::Lorem.paragraphs(2),
  photo: photos.sample,
  location: "New York, NY",
  date: dates[3]
)

puts "done seeding!"
