# Clear existing data (optional, use with caution)
Category.destroy_all
User.destroy_all
Product.destroy_all

# Seed Categories
categories = ['Clothing', 'Tech', 'Sports', 'Cars', 'Hardware', 'Free']
categories.each { |cate| Category.create!(name: cate) }
puts "Created #{Category.count} categories"

# Seed Users
10.times do
  User.create!(
    email: Faker::Internet.unique.email,
    password: 'password123',
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    username: Faker::Internet.unique.username
  )
end
puts "Created #{User.count} users"

# Seed Products
1000.times do
  Product.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    price: Faker::Commerce.price(range: 1.0..500.0),
    user: User.order("RANDOM()").first,
    category: Category.order("RANDOM()").first
  )
end
puts "#{Product.count} Created #{Product.name} product"

p 'Done'
