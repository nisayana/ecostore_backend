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


anna = User.create(username: "Anna", email: "anna@gmail.com", password: "123")

past_order = Order.create(order_status: true, user: anna)
current_order = anna.orders.create(order_status: false)

# CATEGORIES

private_classes = Category.create(name: "Private Classes", description: "Private yoga classes allow you to work on the poses and stretches that make sense for you on your schedule and at your own pace. These private sessions allow you to ease into yoga in a safer manner, with proper alignment and a clear focus on your goals and needs.", image: "https://static.wixstatic.com/media/23bb58_93bfed1d9710491c99e9a76b638eb98b~mv2_d_5351_3009_s_4_2.jpeg/v1/fill/w_1000,h_562,al_c,q_90,usm_0.66_1.00_0.01/23bb58_93bfed1d9710491c99e9a76b638eb98b~mv2_d_5351_3009_s_4_2.jpeg")
online_classes = Category.create(name: "Online Classes", description: "Learn to integrate the foundations of yoga: breathing techniques, postural alignment and how to be more present to your mind, body and spirit. You will learn how to build strength and balance by creating a solid foundation that is rooted in good alignment, body awareness, breath and heart.", image: "https://pranayogacenter.com/wp-content/uploads/2020/03/PYC-onine-class-SS1641761863.jpg")
office_yoga = Category.create(name: "Office Yoga", description: "Office Yoga is the perfect antidote to workday stress and postural / muscular problems that can arise due to long hours spent at a desk. ... Unlike standard yoga lessons, my classes are designed to address the specific physical and mental challenges that desk workers tend to encounter.", image: "https://res.cloudinary.com/dv588hi0a/image/upload/v1605136027/samples/20180828_190420_IMG_5614_uz7mow.jpg")
# Private Claasses

pc_mon = Item.create(name: "Monday", category: private_classes, price: 30)
pc_tue = Item.create(name: "Tuesday", category: private_classes, price: 30)
pc_wed = Item.create(name: "Wednesday", category: private_classes, price: 30)
pc_thur = Item.create(name: "Thursday", category: private_classes, price: 30)
pc_fri = Item.create(name: "Friday", category: private_classes, price: 30)
pc_sat = Item.create(name: "Saturday", category: private_classes, price: 30)
pc_sun = Item.create(name: "Sunday", category: private_classes, price: 30)

# Online Classes

oc_mon = Item.create(name: "Monday", category: online_classes, price: 15)
oc_tue = Item.create(name: "Tuesday", category: online_classes, price: 15)
oc_wed = Item.create(name: "Wednesday", category: online_classes, price: 15)
oc_thur = Item.create(name: "Thursday", category: online_classes, price: 15)
oc_fri = Item.create(name: "Friday", category: online_classes, price: 15)
oc_sat = Item.create(name: "Saturday", category: online_classes, price: 15)
oc_sun = Item.create(name: "Sunday", category: online_classes, price: 15)

# Office Yoga

oy_mon = Item.create(name: "Monday", category: office_yoga, price: 100)
oy_tue = Item.create(name: "Tuesday", category: office_yoga, price: 100)
oy_wed = Item.create(name: "Wednesday", category: office_yoga, price: 100)
oy_thur = Item.create(name: "Thursday", category: office_yoga, price: 100)
oy_fri = Item.create(name: "Friday", category: office_yoga, price: 100)


# Joiner

joiner1 = Joiner.create(order: past_order, item: oc_fri)
joiner2 = Joiner.create(order: current_order, item: oy_mon)