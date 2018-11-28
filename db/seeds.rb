require 'faker'

puts 'Removing users...'
User.destroy_all

puts 'Creating users...'
users_attributes = [
  {
    first_name:   'Matthieu',
    last_name:   'James',
    description:  'I am a trompetist since I can breathe!',
    date_of_birth: Date.new(2001,2,3),
    phone_number: '0608524335',
    email: 'matthieu.james@gmail.com',
    password: 'matthieujames',
    password_confirmation: 'matthieujames'
  },
  {
    first_name:   'Marta',
    last_name:   'Loca',
    description:  'I am a trompetist since I can breathe!',
    date_of_birth: Date.new(2002,2,3),
    phone_number: '0608524332',
    email: 'marta.loca@gmail.com',
    password: 'matthieujames',
    password_confirmation: 'matthieujames'
  }
]
User.create!(users_attributes)

puts "creating client..."
client = User.create!(
  first_name:   'Colette',
  last_name:   'coco',
  description:  "",
  date_of_birth: Date.new(1988,2,3),
  phone_number: '0608524332',
  email: 'colette.coco@gmail.com',
  password: '12345678',
  password_confirmation: '12345678'
  )

10.times do
  Talent.create(
    instrument:   Faker::Music.instrument,
    experience:   Faker::Music.genre,
    price:  Faker::Number.between(10, 500),
    user: User.all.sample
    )
end

puts "creating reservations..."
Reservation.create!(
  duration: 6,
  location: "Paris",
  title: "Pianiste pour la Fête de la Musique",
  user_id: client.id,
  talent_id: Talent.all.sample.id,
  begin_date: DateTime.now - 2.days,r
  end_date: DateTime.now
  )

puts "seed finished!"
