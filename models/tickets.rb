require_relative('../db/sql_runner.rb')

class Ticket

attr_accessor :customer_id, :film_id
attr_reader :id

def initialize( options )
@id = options['id'].to_i
@customer_id = options['customer_id'].to_i
@film_id = options['film_id'].to_i
end

def save
sql = "INSERT INTO tickets (customer_id, film_id) VALUES (#{customer_id}, #{film_id}) RETURNING id;"
@id = SqlRunner.run(sql).first['id'].to_i
return @id
end

def self.all

end

def update

end

def delete

end








end