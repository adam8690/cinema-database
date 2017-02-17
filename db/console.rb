require('pry')
require_relative('../models/customers.rb')
require_relative('../models/films.rb')
require_relative('../models/tickets.rb')

customer1 = Customer.new({'name' => 'Adam Baxter', 'funds' => £50 })
customer2 = Customer.new({'name' => 'Bill Gates', 'funds' => £100 })

film1 = Film.new({'title' => 'Monty Pythons Life of Brian', 'price' => £5 })
film1 = Film.new({'title' => 'Monty Python and the Holy Grail', 'price' => £6 })