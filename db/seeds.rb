# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

User.destroy_all

User.create(name: 'Loki', email: 'abcd@gmail.com', password: 'Aarhus123')
User.create(name: 'Evelina', email: 'fghi@gmail.com', password: 'London123')
User.create(name: 'Ellen', email: 'zxcv@gmail.com', password: 'Paris123')
User.create(name: 'Alex', email: 'uhgu@gmail.com', password: 'Berlin123')

# Event.create(name: '',address:'', description: '', date: Date.today, venue_type: "home", movie: '', ticket_price: 10, capacity: 20, user: User.all.sample)
# Event.create(name: '',address:'', description: '', date: Date.today, venue_type: "pub", movie: '', ticket_price: 15, capacity: 30, user: User.all.sample)
# Event.create(name: '',address:'', description: '', date: Date.today, venue_type: "roof top", movie: '', ticket_price: 5, capacity: 5, user: User.all.sample)
# Event.create(name: '',address:'', description: '', date: Date.today, venue_type: "public space", movie: '', ticket_price: 20, capacity: 10, user: User.all.sample)
