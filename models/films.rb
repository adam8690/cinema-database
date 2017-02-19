require_relative('../db/sql_runner.rb')

class Film

attr_accessor :title, :price
attr_reader :id

def initialize( options )
  @id = options['id'].to_i
  @title = options['title']
  @price = options['price']
end

def save
  sql = "INSERT INTO films (title, price) VALUES ('#{@title}', #{@price}) RETURNING id"
  @id = SqlRunner.run(sql).first['id'].to_i
  return @id
end

def self.all
sql = "SELECT * FROM films"
return SqlRunner.run(sql).map{|film| Film.new(film)}
end

def update

end

def delete

end

end
