require_relative('../db/sql_runner.rb')

class Customer

attr_accessor :name, :funds
attr_reader :id

def initialize( options )
  @id = options['id'].to_i
  @name = options['name']
  @funds = options['funds']
end


def save
  sql = "INSERT INTO customers (name, funds) VALUES ('#{@name}', #{@funds}) RETURNING id;"
  @id = SqlRunner.run(sql)[0]['id'].to_i
  return @id
end

def self.all
  sql = "SELECT * FROM customers;"
  return SqlRunner.run(sql).map {|customer| Customer.new(customer)}
end

def update
  sql = "UPDATE customers SET (name, funds) = ('#{name}', #{funds}) WHERE id = #{@id};"
  SqlRunner.run(sql)
end

def delete
  sql = "DELETE FROM customers WHERE id = #{@id};"
  SqlRunner.run(sql)
end

def self.delete_all
  sql = "DELETE FROM customers;"
  SqlRunner.run(sql)
end



end
