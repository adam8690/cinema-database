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

end

def self.all

end

def update

end

def delete

end

end








end