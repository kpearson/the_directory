User.create([{ name: 'John', email: 'john@me.com', password: 'password', admin: true }])
User.create([{ name: 'Paul', email: 'paul@me.com', password: 'password', admin: false }])
User.create([{ name: 'Ringo', email: 'ringo@me.com', password: 'password', admin: false }])

Business.create([ { name: "Nordstrom", suite: 102, user_id: 3 }, 
									{ name: "American Eagle Outfitters", suite: 867, user_id: 3 },
								  { name: "A|X Armani Exchange", suite: 709, user_id: 3 },
								  { name: "Barneys New York CO-OP", suite: 869, user_id: 3 },
								  { name: "H&M", suite: 891, user_id: 3 },
								  { name: "Calvin Klein", suite: 205, user_id: 3 },
									{ name: "Balizza", suite: 132, user_id: 3 },
								  { name: "ILORI", suite: 220, user_id: 3 },
								  { name: "J.Crew", suite: 857, user_id: 3 },
								  { name: "Tiffany & Co.", suite: 796, user_id: 3 },
								  { name: "Cole Haan", suite: 126, user_id: 3 },
								  { name: "Urban Outfitters", suite: 208, user_id: 3 },
									{ name: "Anthropologie", suite: 519, user_id: 3 },
									{ name: "Gilly Hicks", suite: 863, user_id: 3 },
									{ name: "UGG Australia", suite: 712, user_id: 3 },
									{ name: "Apple", suite: 877, user_id: 3 },
									{ name: "Sony", suite: 837, user_id: 3 },
									{ name: "Pacific Wireless", suite: 803, user_id: 3 },
									{ name: "Pacific Theatres 18-Plex", suite: 322, user_id: 3 },
									{ name: "The Coffee Bean & Tea Leaf", suite: 763, user_id: 3 },
									{ name: "Pinkberry", suite: 759, user_id: 3 },
									{ name: "Jersey Mike's", suite: 813, user_id: 3 },
									{ name: "Haagen-Dazs", suite: 668, user_id: 3 },
									{ name: "Deluca's Italian Deli", suite: 781, user_id: 2 },
								  { name: "CrepeMaker", suite: 699, user_id: 2 },
								  { name: "Bar Verde at Nordstrom", suite: 102, user_id: 2 },
								  { name: "Jamba Juice", suite: 761, user_id: 2 },
							  	{ name: "eBar at Nordstrom", suite: 102, user_id: 2 },
									{ name: "Crumbs Bake Shop", suite: 779, user_id: 2 },
									{ name: "Barnes & Noble Cafe", suite: 210, user_id: 2 },
									{ name: "Katsuya", suite: 702, user_id: 2 },
									{ name: "Granville Café", suite: 807, user_id: 2 },
									{ name: "The Cheesecake Factory", suite: 511, user_id: 2 },
									{ name: "Barnes & Noble", suite: 210, user_id: 2 },
							  	{ name: "BCBGMAXAZRIA", suite: 529, user_id: 2 },
								  { name: "Sephora", suite: 230, user_id: 2 } ])

Category.create(name: "department store").businesses << Business.find_by_name('Nordstrom')
Category.create(name: "women's apparel").businesses << Business.find_by_name('Nordstrom')
Category.create(name: "maternity").businesses << Business.find_by_name('H&M')
Category.create(name: "fashion jewelry & eyewear").businesses << Business.find_by_name('Calvin Klein')
Category.create(name: "gems & fine jewelry").businesses << Business.find_by_name('Tiffany & Co.')
Category.create(name: "men's apparel").businesses << Business.find_by_name('J.Crew')
Category.create(name: "apothecary / sundries").businesses << Business.find_by_name('Barneys New York CO-OP')
Category.create(name: "children's apparel & toys").businesses << Business.find_by_name('Anthropologie')
Category.create(name: "beauty & personal care").businesses << Business.find_by_name('Gilly Hicks')
Category.create(name: "footwear").businesses << Business.find_by_name('UGG Australia')
Category.create(name: "technology & electronics").businesses << Business.find_by_name('Apple')
Category.create(name: "home furnishings & accessories").businesses << Business.find_by_name('Anthropologie')
Category.create(name: "handbags / luggage").businesses << Business.find_by_name('BCBGMAXAZRIA')
Category.create(name: "gifts, books, stationary & music").businesses << Business.find_by_name('Barnes & Noble')
Category.create(name: "restaurants").businesses << Business.find_by_name('Granville Café')
Category.create(name: "specialty food").businesses << Business.find_by_name('Jamba Juice')
Category.create(name: "cinima").businesses << Business.find_by_name('Pacific Theatres 18-Plex')
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


