Product.destroy_all 


10.times do |i|
  Product.create!(:name => Faker::Coffee.blend_name, :price => Faker::Number.decimal(2))
end

p "Created #{Product.count} products."
