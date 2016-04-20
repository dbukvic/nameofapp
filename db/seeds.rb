Order.create!([
  {user_id: nil, product_id: 1, total: nil}
])
Product.create!([
  {name: "Envelope Addressing", description: "Calligraphy services to address any number of envelopes.", image_url: "Envelope.jpg", colour: "Purple", price: "$5/envelope"},
  {name: "Seating Chart", description: "Custom calligraphy for a seating chart at a wedding", image_url: "seating.jpg", colour: "", price: "$50/chart"},
  {name: "Table Numbers", description: "I also created this product without using the HTML form!", image_url: "table.jpg", colour: "", price: "$10/table"},
  {name: "Bar Signs", description: "I created this product without using the HTML form!", image_url: "sign.jpg", colour: "", price: "$10/sign"}
])
