# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  # movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
  # Character.create(name: 'Luke', movie: movies.first)


testimonials = Testimonial.create(
  [
    { body: ('I am completely satisfied with the way everything was handled,
      and very satisfied with the product and workmanship.').squish,
      client_signature: '~ Greg Chapman, Madison, WI' },

    { body: 'Continue your fine workmanship and courteous service.',
      client_signature: '~ Bruce Zaft, Madison, WI' },

    { body: ('We are so pleased with both the service and our brand new deck!
      R House 2 restored our faith in contractors.').squish,
      client_signature: '~ Nick & Connie Hoagland, McFarland, WI' },

    { body: ('I have always been satisfied with the workmanship and prices.
      You are quick to fix a problem, and are the only company out there
      I trust.').squish,
      client_signature: '~ Nikki Meyers, Stoughton, WI' },

    { body: ('You guys are good! I\'ll recommend R House 2 to anyone who is
      looking for work done on their home.').squish,
      client_signature: '~ Norm Benendum, Madison, WI' },

    { body: ('My wife and I are very proud of our new deck.
      The service was exceptional.').squish,
      client_signature: '~ Dave Gullrap, Verona, WI' },

    { body: 'Very courteous and efficient work! Thank you.',
      client_signature: '~ Suzy & Jay Smith, Jefferson, WI' },

    { body: ('If I come across anyone who is looking for good work done,
      I\'ll recommend you to them.').squish,
      client_signature: '~ Gerold Hoagua , Middleton, WI' }
  ])
