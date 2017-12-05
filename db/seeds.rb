# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Expedition.create!(
    name: 'Yosemite Half dome',
    description: "Rising nearly 5,000 feet above Yosemite Valley and 8,800 feet above sea level, Half Dome is a Yosemite icon and a great challenge to many hikers. Despite an 1865 report declaring that it was \"perfectly inaccessible, being probably the only one of the prominent points about the Yosemite which never has been, and never will be, trodden by human foot,\" George Anderson reached the summit in 1875, in the process laying the predecessor to today's cable route.

    Today, thousands of people reach the summit. For most, it is an exciting, arduous hike; for a few, it becomes more of an adventure than they wanted. Indeed, park rangers assist hundreds of people on the Half Dome trail every summer. Most of these emergencies could have been prevented... read on to learn how.

    Much of the hike to Half Dome is an adventure into Wilderness, and, while there is nothing you can do to guarantee your safety, below you will find some tips to reduce your risk and have a safer, more enjoyable hike.",
    length: 14.5,
    difficulty: 'Hard'
)

Expedition.create!(
    name: 'Big Bend National Park',
    description: 'Dense stands of reeds and mesquite thickets line the river along much of the park boundary making human access difficult, but providing excellent habitat for wildlife. The best way to enjoy this area is from the river itself, but several short hikes provide access into river canyons or elsewhere along its banks.',
    length: 0.5,
    difficulty: 'Moderate'
)