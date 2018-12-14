User.delete_all
Journal.delete_all
Entry.delete_all

puts "deleting previous seed data"

puts "seeding"
users = (1..10).to_a
theme = ["love", "professional goals", "financial studies", "friendship", "happiness", "family"]
journals = (1..30).to_a
photos = ["https://www.stockvault.net/data/2007/03/01/102413/thumb16.jpg", "https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwiniMPCpJbfAhWQc98KHZm0CDMQjRx6BAgBEAU&url=https%3A%2F%2Fwww.istockphoto.com%2Fphotos%2Flandscapes&psig=AOvVaw274eorhIt8iznpAlRxj6Yu&ust=1544566428639497", "https://www.stockvault.net/data/2008/09/02/106231/thumb16.jpg"]


10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Name.initials,
    password: "bob",
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone)
end


30.times do
  Journal.create(
    user_id: users.sample,
    theme: theme.sample
  )
end

200.times do
  Entry.create(
    journal_id: journals.sample,
    title: Faker::Book.title,
    body: Faker::Lorem.paragraphs(2),
    photo: photos.sample,
  )
end

puts "done seeding!"
