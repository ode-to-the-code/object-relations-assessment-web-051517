class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.detect {|customer| customer.name == name}
  end

  def self.find_all_by_first_name(first_name)
    @@all.select {|customer| customer.first_name == first_name}
  end

  def self.all_names
    @@all.collect {|customer|
      customer.full_name
    }
  end


  #add_review(restaurant, content)
  # given some content and a restaurant,
  # creates a new review and associates it with that customer and that restaurant
  def add_review(restaurant, content)
    new_review = Review.new(restaurant, content)
    new_review.customer = self
    new_review.restaurant = restaurant
  end

end
