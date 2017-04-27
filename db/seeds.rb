require 'csv'

Category.create(title: "Land")
Category.create(title: "Sea")
Category.create(title: "Air")

items ||= (CSV.open'db/csv/items.csv', headers: true, header_converters: :symbol)

items.each do |item|
  Item.create!(title: item[:title],
             price: item[:price],
             category: Category.find_by(title: item[:category]),
             description: item[:description])

  puts "created #{item[:title]}"
end
