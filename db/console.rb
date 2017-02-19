require('pry')
require_relative('../models/customers.rb')
require_relative('../models/films.rb')
require_relative('../models/tickets.rb')

Customer.delete_all
Film.delete_all
Ticket.delete_all

customer1 = Customer.new({'name' => 'Adam Baxter', 'funds' => 50.00 })
customer1.save

customer2 = Customer.new({'name' => 'John Cleese', 'funds' => 100 })
customer2.save

customer3 = Customer.new({'name' => 'Eric Idle', 'funds' => 100 })
customer3.save

customer4 = Customer.new({'name' => 'Graham Chapman', 'funds' => 100 })
customer4.save

customer5 = Customer.new({'name' => 'Terry Gilliam', 'funds' => 100 })
customer5.save

customer6 = Customer.new({'name' => 'Michael Palin', 'funds' => 100 })
customer6.save

customer7 = Customer.new({'name' => 'Terry Jones', 'funds' => 100 })
customer7.save

film1 = Film.new({'title' => 'Monty Pythons Life of Brian', 'price' => 5.50 })
film1.save

film2 = Film.new({'title' => 'Monty Python and the Holy Grail', 'price' => 6.10 })
film2.save

film3 = Film.new({'title' => 'And Now For Something Completely Different', 'price' => 6.10 })
film3.save

film4 = Film.new({'title' => 'Monty Pythons Meaning of Life', 'price' => 6.10 })
film4.save


customer1.buy_ticket(film1)
customer1.buy_ticket(film2)

customer2.buy_ticket(film3)

customer3.buy_ticket(film1)
customer3.buy_ticket(film1)
customer3.buy_ticket(film1)




# ticket1 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film1.id})
# ticket1.save

# ticket2 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film1.id})
# ticket2.save

# ticket3 = Ticket.new({'customer_id' => customer3.id, 'film_id' => film2.id})
# ticket3.save

# ticket4 = Ticket.new({'customer_id' => customer4.id, 'film_id' => film2.id})
# ticket4.save

# ticket5 = Ticket.new({'customer_id' => customer5.id, 'film_id' => film3.id})
# ticket5.save

# ticket6 = Ticket.new({'customer_id' => customer6.id, 'film_id' => film3.id})
# ticket6.save

# ticket7 = Ticket.new({'customer_id' => customer7.id, 'film_id' => film4.id})
# ticket7.save

binding.pry
nil