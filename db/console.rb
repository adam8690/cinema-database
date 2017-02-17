require('pry')
require_relative('../models/customers.rb')
require_relative('../models/films.rb')
require_relative('../models/tickets.rb')

customer1 = Customer.new({'name' => 'Adam Baxter', 'funds' => £50 })
customer2 = Customer.new({'name' => 'Bill Gates', 'funds' => £100 })

film1 = Film.new({'title' => 'Monty Pythons Life of Brian', 'price' => £5 })
film1 = Film.new({'title' => 'Monty Python and the Holy Grail', 'price' => £6 })

ticket1 = Ticket.new({'customer_id' => customer.id, 'film_id' => film.id})
ticket2 = Ticket.new({'customer_id' => customer.id, 'film_id' => film.id})

customer1.save
customer2.save
film1.save
film2.save
ticket1.save
ticket2.save

