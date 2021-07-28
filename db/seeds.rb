# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Joiner.destroy_all
Item.destroy_all
Order.destroy_all
User.destroy_all
Category.destroy_all

Joiner.reset_pk_sequence
Item.reset_pk_sequence
Order.reset_pk_sequence
User.reset_pk_sequence
Category.reset_pk_sequence


anna = User.create(username: "Anna", email: "anna@gmail.com", password: "123", first_name: "Anna", last_name: "Smith", address: "100 1st Ave, New York, NY 10009")

past_order = Order.create(order_status: true, user: anna)
current_order = anna.orders.create(order_status: false)

# CATEGORIES

home = Category.create(name: "Home & Kitchen", description: "Reduce your amount of waste with our Zero Waste Home & Kitchen products, from organic cotton reusable produce bags to plastic-free cleaning brushes and more.", image: "https://cdn.shopify.com/s/files/1/0203/1620/files/kitchenwareSP_copy_1440x961.jpg?v=1585861991v")
bath_beauty = Category.create(name: "Bath & Beauty", description: "Reduce your amount of waste with our Zero Waste Bath & Beauty products, from sustainable bamboo toothbrushes to plastic-free hair care products and more.", image: "https://cdn.shopify.com/s/files/1/0235/9128/8912/products/image_358315c8-fce4-4401-8fd3-1640756618c0_480x480.jpg?v=1605670805")
# office_yoga = Category.create(name: "Office Yoga", description: "Office Yoga is the perfect antidote to workday stress and postural / muscular problems that can arise due to long hours spent at a desk. ... Unlike standard yoga lessons, my classes are designed to address the specific physical and mental challenges that desk workers tend to encounter.", image: "https://res.cloudinary.com/dv588hi0a/image/upload/v1605136027/samples/20180828_190420_IMG_5614_uz7mow.jpg")

# Home

produce_bag = Item.create(name: "Zero Waste Produce Bags", image: "https://res-console.cloudinary.com/dv588hi0a/thumbnails/v1/image/upload/v1612814421/c2FtcGxlcy9wcm9kdWNlX2JhZ3Nfcnh4d2dk/preview", overview: "In the United States, 100 billion plastic bags are used each year. You can change this! Every single plastic bag that you refuse to use can make a small but important difference in the world. EcoRoots zero waste produce bags are made of 100% Global Organic Textile Standards Cotton (GOTS) (not bleached or treated with anything), a great sustainable and reusable alternative to plastic bags. Our cotton produce bags are super durable, machine washable and 100% biodegradable. Each bag comes with a handy drawstring to help you keep your food from falling out.", category: home, price: 5)
coffee_filter = Item.create(name: "Coffee Filter", image: "https://res-console.cloudinary.com/dv588hi0a/thumbnails/v1/image/upload/v1612814419/c2FtcGxlcy9jb2ZmZWVfZmlsdGVyX3pxZjJhdA==/preview", overview: "Replace your single-use coffee filter for a low-waste alternative with our Reusable Coffee Filter-Pack of 2. Handmade in Colorado, from organic hemp and cotton, this reusable coffee filter is a substitute for single-use paper filters. Our reusable coffee filter works from the kitchen to the campsite and all points in-between. #4 Cone style reusable coffee filters fit most 8-12 Cup Cone Coffee Makers. There are two filters in each pack and each filter lasts for about a year.", category: home, price: 15)
natural_loofah = Item.create(name: "Natural Loofah", image: "https://res-console.cloudinary.com/dv588hi0a/thumbnails/v1/image/upload/v1612814419/c2FtcGxlcy9uYXR1cmFsX2xvb2ZhaF9sZXd1ZGU=/preview", overview: "Say goodbye to plastic sponges with this plant-fiber natural loofah. A great plastic-free alternative for scrubbing and cleaning your dishes or for any general cleaning around your house. Our natural loofah can be used also for mild body exfoliation or to massage your skin as you bathe. It works great for dry skin and rough spots! Loofah is a fiber from the cucumber family, is a very sustainable and effective cleaning product.", category: home, price: 3)
dish_brush = Item.create(name: "Dish Brush", image: "https://res-console.cloudinary.com/dv588hi0a/thumbnails/v1/image/upload/v1612814418/c2FtcGxlcy9kaXNoX2JydXNoX2plaGh2cg==/preview", overview: "Scrub your dishes without plastic! This dish scrubber has a natural beechwood handle and the bristles are made of union fibers (derived from hard Mexican plant fiber). Stiff but flexible union fibers are designed to handle heavy-duty cleaning. Good for scrubbing out stains on a variety of surfaces. Safe to use in boiling water, perfect for cleaning pots, dishes, and pans. Because of his durable design, this pot brush can also be used for just about any cleaning or scrubbing purposes in your home.", category: home, price: 30)
steel_cup = Item.create(name: "Stainless Steel Cup", image: "https://res-console.cloudinary.com/dv588hi0a/thumbnails/v1/image/upload/v1612814420/c2FtcGxlcy9zdGVlbF9jdXBfenZwcWsw/preview", overview: "This Stainless Steel Cup with Carabiner Handle is a great zero waste accessory for outdoor lovers, a must-have plastic-free on the go essential for hiking, camping, climbing or backpacking. This cup is strong, impact-resistant, reusable and made from 100% 304 food-grade stainless steel which is a recyclable material.", category: home, price: 8)
# pc_sat = Item.create(name: "Saturday", category: home, price: 30)
# pc_sun = Item.create(name: "Sunday", category: home, price: 30)

# Bath & beauty

# soap_dish = Item.create(name: "Bamboo Soap Dish", image: "https://res-console.cloudinary.com/dv588hi0a/thumbnails/v1/image/upload/v1612814421/c2FtcGxlcy9zb2FwX2Rpc2hfczFmc3Nq/preview", overview: "Bamboo Soap Dish is made of sustainable bamboo, 100% compostable material. This zero waste soap rack is a great accessory to keep your favorite soap or shampoo bar dry in your bathroom. Our soap holder is designed to keep your soap off the counters, showers, and tubs and allows your soap or shampoo bar to dry quickly and last longer.", category: bath_beauty, price: 7)
body_soap = Item.create(name: "Body Soap", image: "https://res-console.cloudinary.com/dv588hi0a/thumbnails/v1/image/upload/v1612814421/c2FtcGxlcy9zb2FwX2Rpc2hfczFmc3Nq/preview", overview: "Indulge your shower routine with this organic body soap that will leave your skin feeling nourished and healthy, without stripping it of its natural oils. Our natural body wash is made with organic and vegan ingredients, a great zero-waste option for every skin type and concern.", category: bath_beauty, price: 15)
facial_soap = Item.create(name: "Facial Soap", image: "https://res-console.cloudinary.com/dv588hi0a/thumbnails/v1/image/upload/v1612814418/c2FtcGxlcy9mYWNpYWxfc29hcF9uNmdvY24=/preview", overview: "Rose Clay Natural Facial Soap (5.8oz) is made with virgin shea butter and enriched with mango butter rose petal oil, rose hips, French pink clay, and creamy coconut milk. Also great for the whole body! Soothing geranium essential oil creates a balance between oily and dry skin. Palmarosa and Ylang Ylang, gentle oils used in skin care products for acne, dry, sensitive or inflamed skin, and dermatitis, are believed to help dull, mature skin.", category: bath_beauty, price: 15)
toothbrush = Item.create(name: "Bamboo Toothbrush", image: "https://res-console.cloudinary.com/dv588hi0a/thumbnails/v1/image/upload/v1612814419/c2FtcGxlcy90b290aGJydXNoX2Jqa3E0aQ==/preview", overview: "Bamboo Sustainable Toothbrush is a great alternative to plastic toothbrushes that usually end up in landfills or oceans. By making the switch you will help to protect and preserve our beautiful planet from plastic pollution. Quit single-use plastic & brush sustainable with our natural toothbrush!", category: bath_beauty, price: 5)
# hair_oil = Item.create(name: "Hair Oil", overiview: "This sustainably crafted, invigorating, transformative, and versatile holistic natural hair oil is made to moisturize, promote your healthy hair growth, elasticity, prevent damage against heat, chemicals, and natural elements. Very rich in vitamins B, C, &, E, omega fatty acids. Plant-based extracts such as cayenne pepper and cinnamon have been combined to nourish, revitalize, and protect your hair follicles and scalp. These anti-inflammatory properties will help to restore moisture to your scalp. All the ingredients are sustainably sourced and USDA certified organic. Works great on all hair types and textures. A small amount of this powerful natural hair oil goes a long way, too.", category: bath_beauty, price: 25)
# hairbrush = Item.create(name: "Wooden Hair Brush", overview: "This gorgeous handmade wooden hair brush set is a great zero waste alternative to hair brushes made out of plastic. Gently detangle and smooth your locks with this lightweight wooden hair brush. Our bamboo hair brush with natural rubber cushioning and smooth bamboo bristles gently massage the scalp in the most relaxing manner and improve blood circulation. This bamboo hair brush glides through your hair promoting the secretion of natural oil and making your hair look more healthy and soft, preventing static which makes hair frizzy and brittle. Ergonomically-designed bamboo handle comfortably fits in your hand for a firmer grip. Lightweight, portable, and suitable for all hair types. ", category: bath_beauty, price: 15)

# # Office Yoga

# # oy_mon = Item.create(name: "Monday", category: office_yoga, price: 100)
# # oy_tue = Item.create(name: "Tuesday", category: office_yoga, price: 100)
# # oy_wed = Item.create(name: "Wednesday", category: office_yoga, price: 100)
# # oy_thur = Item.create(name: "Thursday", category: office_yoga, price: 100)
# # oy_fri = Item.create(name: "Friday", category: office_yoga, price: 100)


# # Joiner

joiner1 = Joiner.create(order: past_order, item: produce_bag)
joiner2 = Joiner.create(order: current_order, item: body_soap)