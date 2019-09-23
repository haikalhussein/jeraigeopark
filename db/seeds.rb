# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |accomodation|
  Accomodation.create!(
    name: "Accomodation #{accomodation}",
    line_address_1: "Line Address One for id: #{accomodation}",
    line_address_2: "Line Address Two for id: #{accomodation}",
    postcode: "Postcode for id: #{accomodation}",
    state: "State for id: #{accomodation}",
    country: "Country for id: #{accomodation}",
    description: "
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ultricies purus lectus, sed ultrices lorem egestas non. Vivamus blandit tortor a pretium bibendum. Duis sagittis mollis libero cursus consectetur. Nam id massa non dui ultrices ullamcorper. Phasellus ac lobortis ligula. Duis sit amet orci in libero varius efficitur nec non"
  )
end

RoomType.create([{ name: "Standard Rooms"}, {name: "Deluxe Rooms"}, {name: "VIP Rooms"}, {name: "Presidential Rooms"}])

