5.times do |i|
  Restaurant.create(name: "Restaurant ##{i}", street: "#{i} Street", city: "City#{i}", state: "ST", country: "USA", postal_code: "#{i}#{i}#{i}#{i}#{i}")
end