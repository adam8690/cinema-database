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
end

def update
end

def delete
end


end
