# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


categories = ["Home", "Clothing", "Footwear", 'Electronic', "Garden"]
stores = ['Dans Sportswear', "Snazzy Trainers", 'Homebase Garden']
products = [{
    title: 'Product A',
    description: 'Product A',
    store_id: 1 
},
{
    title: 'Product B',
    description: 'Product B',
    store_id: 2
},
{
    title: 'Product C',
    description: 'Product C',
    store_id: 3
}]

stores.each do |store|
    Store.create!(name: store, description: 'This is a test store')
end



categories.each do |category|
    Category.create(name: category)
end

products.each do |product|
    Product.create(
        title: product[:title],
        description: product[:description],
        store_id: product[:store_id]
    )
end