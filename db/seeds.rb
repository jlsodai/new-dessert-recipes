Author.create!([
  {name: "asldf", username: "asdhf", password: nil, email: "alsdhfas@ashda.com", bio: "hsdfasd alsdasdf", expertise: nil}
])
Comment.create!([
  {name: "Maestro", email: "jlsodai@gmail.com", recipe_id: 1},
  {name: "Fasigna", email: "fasigna@gmail.com", recipe_id: 1}
])
Recipe.create!([
  {name: "Banku", image: nil, description: "Hello something great", ingredients: nil, directions: nil, ratings: nil, author_id: 2, dessert_type_id: 1},
  {name: "Sugarcane Sauce", image: nil, description: "Something happens everytime", ingredients: nil, directions: nil, ratings: nil, author_id: 2, dessert_type_id: 1}
])
