class Review
  attr_accessor :restaurant, :content, :customer

  @@all = []

  def initialize(restaurant, content, customer=nil)
    @content = content
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end

end
