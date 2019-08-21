# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

User.destroy_all

User.create(name: 'Loki', email: 'abcd@gmail.com', password: 'Aarhus123')
User.create(name: 'Evelina', email: 'efgh@gmail.com', password: 'London123')
User.create(name: 'Ellen', email: 'ijkl@gmail.com', password: 'Paris123')
User.create(name: 'Alex', email: 'mnop@gmail.com', password: 'Berlin123')

Event.destroy_all

Event.create(name: 'Rad Taste',address:'213 Norwood Road, Tulse Hill', description: "Join us for jello shots, naked bums, aliens and high tea! Enojy Peter Jackson's classic cult film (uncensored) in our basement.", date: Date.today, venue_type: "Home", movie: 'The Big Short', ticket_price: 10, capacity: 20, user: User.all.sample)
Event.create(name: 'Peace of Your Heart',address:'50 Great Dover St, Southwark', description: "As one of the most widely known names in rock, Janis Joplin never ceases to amaze us with her talents. The film will be followed by an exclusive dance party to Joplin's 1969 Woodstock consert.", date: Date.today, venue_type: "Pub", movie: 'Little Girl Blue', ticket_price: 15, capacity: 30, user: User.all.sample)
Event.create(name: 'Heroine Granger',address:'Bold Tendencies, 7th-10th Floor Multi Storey Car Park, 95A Rye Ln, Peckham', description: "Hermoine - the true hero. We've removed all scenes from the eight HP films Hermoine isn't in. Enjoy!", date: Date.today, venue_type: "Roof top", movie: 'Harry Potter 1-8', ticket_price: 5, capacity: 5, user: User.all.sample)
Event.create(name: 'BEST MOVIE EVER',address:"Regent's Park", description: 'Jeff Goldblum, Richard Attenborough, blood and dinosaurs - can it get any better?', date: Date.today, venue_type: "Public space", movie: 'Jurassic Park', ticket_price: 20, capacity: 10, user: User.all.sample)

# Photo.destroy_all

# Photo.create(image: 'https://cdn.improb.com/wp-content/uploads/2017/11/best-big-home-theatre-movie-projector-screns.jpg', event: Event.where(venue_type: "Home"))
# Photo.create(image: 'https://static.timesofisrael.com/www/uploads/2017/12/Muvix-shachaf-bar-feature.jpg', event: Event.where(venue_type: "Pub"))
# Photo.create(image: 'https://media.timeout.com/images/103902559/1372/772/image.jpg', event: Event.where(venue_type: "Roof top"))
# Photo.create(image: 'https://cub.wsu.edu/media/40381/rooftop-movie-header.jpg?width=1920&height=700&center=0.5,0.5&mode=crop', event: Event.where(venue_type: "Public space"))
# # Photo.create(image: 'https://miro.medium.com/max/1838/1*9cLVMhtUC-rdUpe7oswolQ.jpeg', event: Event.where(venue_type: "Home"))
# # Photo.create(image: 'https://pmcvariety.files.wordpress.com/2015/09/22772-janis_4_-_credit_gettyimages.jpg?w=1000&h=563&crop=1', event: Event.where(venue_type: "Pub"))
# # Photo.create(image: 'https://jojud265nia2bj9sy4ah9b61-wpengine.netdna-ssl.com/wp-content/uploads/2018/12/Harry-Potter-and-the-Prisoner-of-Azkaban-1600x900-c-default.jpg', event: Event.where(venue_type: "Roof top"))
# # Photo.create(image: 'https://cnet1.cbsistatic.com/img/XEaw9vdIVDmcmCADdxttgX_EhJk=/1600x900/2018/03/30/74519a3e-4ebf-4cd6-8543-51558811ebf0/jurassic-park-t-rex.jpg', event: Event.where(venue_type: "Public space"))

