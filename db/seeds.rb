# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

User.destroy_all

User.create(name: 'Loki', email: 'abcd@gmail.com', password: 'Aarhus123')
User.create(name: 'Evelina', email: 'fghi@gmail.com', password: 'London123')
User.create(name: 'Ellen', email: 'zxcv@gmail.com', password: 'Paris123')
User.create(name: 'Alex', email: 'uhgu@gmail.com', password: 'Berlin123')

Event.destroy_all

Event.create(name: 'Rad Taste',address:'213 Norwood Road, Tulse Hill', description: "Join us for jello shots, naked bums, aliens and high tea! Enojy Peter Jackson's classic cult film (uncensored) in our basement.", date: Date.today, venue_type: "home", movie: 'Bad Taste', ticket_price: 10, capacity: 20, user: User.all.sample)
Event.create(name: 'Peace of Your Heart',address:'50 Great Dover St, Southwark', description: "As one of the most widely known names in rock, Janis Joplin never ceases to amaze us with her talents. The film will be followed by an exclusive dance party to Joplin's 1969 Woodstock consert.", date: Date.today, venue_type: "pub", movie: 'Little Girl Blue', ticket_price: 15, capacity: 30, user: User.all.sample)
Event.create(name: 'Heroine Granger',address:'Bold Tendencies, 7th-10th Floor Multi Storey Car Park, 95A Rye Ln, Peckham', description: "Hermoine - the true hero. We've removed all scenes from the eight HP films Hermoine isn't in. Enjoy!", date: Date.today, venue_type: "roof top", movie: 'Harry Potter 1-8', ticket_price: 5, capacity: 5, user: User.all.sample)
Event.create(name: 'BEST MOVIE EVER',address:"Regent's Park", description: 'Jeff Goldblum, Richard Attenborough, blood and dinosaurs - can it get any better?', date: Date.today, venue_type: "public space", movie: 'Jurassic Park', ticket_price: 20, capacity: 10, user: User.all.sample)
