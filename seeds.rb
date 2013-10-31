User.create([{ name: 'John', email: 'john@me.com', password: 'password', admin: true }])
User.create([{ name: 'Paul', email: 'paul@me.com', password: 'password', admin: false }])
User.create([{ name: 'Ringo', email: 'ringo@me.com', password: 'password', admin: false }])

Business.create([ { name: "Nordstrom", suite: 102, user_id: 3 } ], 
								[ { name: "American Eagle Outfitters", suite: 867, user_id: 3 } ],
								[ { name: "", suite: , user_id: 3 } ],
								[ { name: "", suite: , user_id: 3 } ],
								[ { name: "", suite: , user_id: 3 } ],
								[ { name: "", suite: , user_id: 3 } ],
								[ { name: "", suite: , user_id: 3 } ],
								[ { name: "", suite: , user_id: 3 } ],
								[ { name: "", suite: , user_id: 3 } ],
								[ { name: "", suite: , user_id: 3 } ],
								[ { name: "", suite: , user_id: 3 } ],
								[ { name: "", suite: , user_id: 3 } ],
								[ { name: "", suite: , user_id: 3 } ],
								[ { name: "", suite: , user_id: 3 } ],
								[ { name: "", suite: , user_id: 3 } ],
								[ { name: "", suite: , user_id: 3 } ],
								[ { name: "", suite: , user_id: 3 } ],
								[ { name: "", suite: , user_id: 3 } ],
								[ { name: "", suite: , user_id: 3 } ],
								[ { name: "", suite: , user_id: 3 } ],
								[ { name: "", suite: , user_id: 3 } ],
								[ { name: "", suite: , user_id: 3 } ],
								[ { name: "", suite: , user_id: 3 } ],
								[ { name: "", suite: , user_id: 2 } ],
								[ { name: "", suite: , user_id: 2 } ],
								[ { name: "", suite: , user_id: 2 } ],
								[ { name: "", suite: , user_id: 2 } ],
								[ { name: "", suite: , user_id: 2 } ],
								[ { name: "", suite: , user_id: 2 } ],
								[ { name: "", suite: , user_id: 2 } ],
								[ { name: "", suite: , user_id: 2 } ],
								[ { name: "", suite: , user_id: 2 } ],
								[ { name: "", suite: , user_id: 2 } ],
								[ { name: "", suite: , user_id: 2 } ],
								[ { name: "", suite: , user_id: 2 } ],
								[ { name: "", suite: , user_id: 2 } ],

								)

Category.create(name: "department store").businesses << Business.find_by_name('Nordstrom')


Category.create(name: "women's apparel").businesses << Business.find_by_name('Nordstrom') + Business.find_by_name('American Eagle Outfitters')
Category.create(name: "maternity").businesses << Business.find_by_name('Nordstrom')
Category.create(name: "fashion jewelry & eyewear").businesses << Business.find_by_name('Nordstrom')
Category.create(name: "gems & fine jewelry").businesses << Business.find_by_name('Nordstrom')
Category.create(name: "men's apparel").businesses << Business.find_by_name('Nordstrom')
Category.create(name: "apothecary / sundries").businesses << Business.find_by_name('Nordstrom')
Category.create(name: "children's apparel & toys").businesses << Business.find_by_name('Nordstrom')
Category.create(name: "beauty & personal care").businesses << Business.find_by_name('Nordstrom')
Category.create(name: "footwear").businesses << Business.find_by_name('Nordstrom')
Category.create(name: "technology & electronics").businesses << Business.find_by_name('Nordstrom')
Category.create(name: "home furnishings & accessories").businesses << Business.find_by_name('Nordstrom')
Category.create(name: "handbags / luggage").businesses << Business.find_by_name('Nordstrom')
Category.create(name: "gifts, books, stationary & music").businesses << Business.find_by_name('Nordstrom')
Category.create(name: "restaurants").businesses << Business.find_by_name('Nordstrom')
Category.create(name: "specialty food").businesses << Business.find_by_name('Nordstrom')
Category.create(name: "cinima").businesses << Business.find_by_name('Nordstrom')
Category.create(name: "services").businesses << Business.find_by_name('Nordstrom')
Category.create(name: "the residences luxury apartments").businesses << Business.find_by_name('Nordstrom')
Category.create(name: "the offices").businesses << Business.find_by_name('Nordstrom')



# Category.create([{ name: "department store" }, { name: "women's apparel" }, { name: "maternity" },
#  { name: "fashion jewelry & eyewear" }, { name: "gems & fine jewelry" }, { name: "men's apparel" }, 
#  { name: "apothecary / sundries" }, { name: "children's apparel & toys" }, { name: "beauty & personal care" }, 
#  { name: "footwear" }, { name: "technology & electronics" }, { name: "home furnishings & accessories" }, 
#  { name: "handbags / luggage" }, { name: "gifts, books, stationary & music" }, { name: "restaurants" }, 
#  { name: "specialty food" }, { name: "cinima" }, { name: "services" }, { name: "the residences luxury apartments" }, 
#  { name: "the offices" }])


