# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create email: "gooderreads@gooderreads.com", username: "gooderreads", image: "https://www.asme.org/getmedia/c2c8ea5a-b690-4ba7-92bb-34bd1432862b/book_guide_hero_books.aspx"
u2 = User.create email: "mylittlepony@mylittlepony.com", username: "mylittlepony", image: "https://mylittlepony.hasbro.com/images/CharacterPageAvatar_MLP_pinkiepie.png"
u3 = User.create email: "chicken@chicken.com", username: "chicken", image: "http://a57.foxnews.com/images.foxnews.com/content/fox-news/food-drink/2017/03/20/giant-chicken-looks-like-grown-man-in-costume-according-to-internet/_jcr_content/par/featured-media/media-0.img.jpg/0/0/1490031787910.jpg?ve=1"
u4 = User.create email: "catdog@catdog.com", username: "catdog", image: "https://thoughtcatalog.files.wordpress.com/2014/05/screen-shot-2014-05-22-at-4-21-20-pm.png?w=1400"



Book.destroy_all
b1 = Book.create book_title: "Leviathan Wakes", series_title: "The Expanse" , author: "James S. A. Corey", year: 2011, description: "Humanity has colonized the solar system - Mars, the Moon, the Asteroid Belt and beyond - but the stars are still out of our reach.

Jim Holden is XO of an ice miner making runs from the rings of Saturn to the mining stations of the Belt. When he and his crew stumble upon a derelict ship, the Scopuli, they find themselves in possession of a secret they never wanted. A secret that someone is willing to kill for - and kill on a scale unfathomable to Jim and his crew. War is brewing in the system unless he can find out who left the ship and why.

Detective Miller is looking for a girl. One girl in a system of billions, but her parents have money and money talks. When the trail leads him to the Scopuli and rebel sympathizer Holden, he realizes that this girl may be the key to everything.

Holden and Miller must thread the needle between the Earth government, the Outer Planet revolutionaries, and secretive corporations - and the odds are against them. But out in the Belt, the rules are different, and one small ship can change the fate of the universe. ", image: "https://en.wikipedia.org/wiki/Leviathan_Wakes#/media/File:Leviathan_Wakes.jpg", user_id: 1
b2 = Book.create book_title: "Dune", series_title: "Dune Series" , author: "Frank Herbert", year: 1965, description: "Set in the far future amidst a sprawling feudal interstellar empire where planetary dynasties are controlled by noble houses that owe an allegiance to the imperial House Corrino, Dune tells the story of young Paul Atreides (the heir apparent to Duke Leto Atreides and heir of House Atreides) as he and his family accept control of the desert planet Arrakis, the only source of the 'spice' melange, the most important and valuable substance in the cosmos. The story explores the complex, multi-layered interactions of politics, religion, ecology, technology, and human emotion as the forces of the empire confront each other for control of Arrakis.", image: "https://upload.wikimedia.org/wikipedia/en/thumb/d/de/Dune-Frank_Herbert_%281965%29_First_edition.jpg/220px-Dune-Frank_Herbert_%281965%29_First_edition.jpg", user_id: 2
b3 = Book.create book_title: "To Kill a Mockingbird", author: "Harper Lee", year: 1960, description: "The unforgettable novel of a childhood in a sleepy Southern town and the crisis of conscience that rocked it, To Kill A Mockingbird became both an instant bestseller and a critical success when it was first published in 1960. It went on to win the Pulitzer Prize in 1961 and was later made into an Academy Award-winning film, also a classic.

Compassionate, dramatic, and deeply moving, To Kill A Mockingbird takes readers to the roots of human behavior - to innocence and experience, kindness and cruelty, love and hatred, humor and pathos.", image: "https://s-media-cache-ak0.pinimg.com/originals/83/d4/0e/83d40eb390007d962960ba5af35555e5.jpg", user_id: 2
b4 = Book.create book_title: "In Order to Live: A North Korean Girl's Journey to Freedom", author: "Yeonmi Park", year: 2015, description: "Human rights activist Park, who fled North Korea with her mother in 2007 at age 13 and eventually made it to South Korea two years later after a harrowing ordeal, recognized that in order to be 'completely free,' she had to confront the truth of her past. It is an ugly, shameful story of being sold with her mother into slave marriages by Chinese brokers, and although she at first tried to hide the painful details when blending into South Korean society, she realized how her survival story could inspire others. Moreover, her sister had also escaped earlier and had vanished into China for years, prompting the author to go public with her story in the hope of finding her sister.", image: "http://images.gr-assets.com/books/1437799970l/24611623.jpg", user_id: 1


Review.destroy_all
r1 = Review.create review: "Such an incredible book. Makes me cry everytime", user_id: 1, book_id: 3
r2 = Review.create review: "One of my favourite books of all time. A great read.", user_id: 3, book_id: 3
r3 = Review.create review: "Truly inspiring and utterly horrific. Makes you appreciate even the smallest things in life", user_id: 2, book_id: 4
r4 = Review.create review: "This book can be a hard read at times. The themes it touches on are very heavy but need to be discussed and addressed.", user_id: 4, book_id: 4
r5 = Review.create review: "I hate this book. You should too.", user_id: 2, book_id: 3
r6 = Review.create review: "Gripping. Can't wait to read the next book in the series", user_id: 1, book_id: 1
r7 = Review.create review: "AWESOME!", user_id: 4, book_id: 2
r8 = Review.create review: "LOVED IT!", user_id: 4, book_id: 1
r9 = Review.create review: "Crap, crap, crap, crap. Die.", user_id: 2, book_id: 2
r10 = Review.create review: "Fantastic read. Loved every moment", user_id: 1, book_id: 2
