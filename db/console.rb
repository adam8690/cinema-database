require('pry')
require_relative('../models/customers.rb')
require_relative('../models/films.rb')
require_relative('../models/tickets.rb')

Customer.delete_all
Film.delete_all
Ticket.delete_all

customer1 = Customer.new({'name' => 'Adam Baxter', 'funds' => 50.25 })
customer1.save

customer2 = Customer.new({'name' => 'John Cleese', 'funds' => 100 })
customer2.save

film1 = Film.new({'title' => 'Monty Pythons Life of Brian', 'price' => 5.50 })
film1.save

film2 = Film.new({'title' => 'Monty Python and the Holy Grail', 'price' => 6.10 })
film2.save

ticket1 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film1.id})
ticket1.save

ticket2 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film2.id})
ticket2.save

binding.pry
nil