# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

User.destroy_all

User.create(name: 'Loki', email: 'abcd@gmail.com', password: 'Aarhus123')
User.create(name: 'Evelina', email: 'efgh@gmail.com', password: 'London123')
User.create(name: 'Ellen', email: 'ijkl@gmail.com', password: 'Paris123')
User.create(name: 'Alex', email: 'mnop@gmail.com', password: 'Berlin123')

Event.destroy_all

Event.create(name: 'SELL SELL SELL', address:'213 Norwood Road, London Borough of Lambeth, England, United Kingdom', description: "Join us for an education on the 2008 financial crisis - all while staring at Ryan Gosling’s positively dreamy face.", date: Date.today, venue_type: "Home", movie: 'The Big Short', ticket_price: 10, capacity: 20, user: User.all.sample)
Event.create(name: 'Peace of Your Heart', address:'138 Kingsland Road, London Borough of Hackney, England, United Kingdom', description: "As one of the most widely known names in rock, Janis Joplin never ceases to amaze us with her talents. The film will be followed by an exclusive dance party to Joplin's 1969 Woodstock consert.", date: Date.today, venue_type: "Pub", movie: 'Little Girl Blue', ticket_price: 15, capacity: 30, user: User.all.sample)
Event.create(name: 'Heroine Granger', address:'Rye Lane, London Borough of Southwark, England, United Kingdom', description: "Hermoine - the true hero. We've removed all scenes from the eight HP films Hermoine isn't in. Enjoy!", date: Date.today, venue_type: "Roof top", movie: 'Harry Potter 1-8', ticket_price: 5, capacity: 5, user: User.all.sample)
Event.create(name: 'BEST MOVIE EVER', address: "Regent's Place Plaza, London Borough of Camden, England, United Kingdom", description: 'JeffJeffGoldblum, Richard Attenborough, blood and dinosaurs - can it get any better?', date: Date.today, venue_type: "Public space", movie: 'Jurassic Park', ticket_price: 20, capacity: 10, user: User.all.sample)

