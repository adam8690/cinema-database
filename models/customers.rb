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

end

def self.all

end

def update

end

def delete

end

end


















end
