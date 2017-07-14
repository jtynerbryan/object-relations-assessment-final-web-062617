class Viewer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
  	@@all
  end

  def self.find_by_name(name)
  	self.all.detect {|viewer| name == viewer.full_name}
  end

  def create_rating(movie, score)
  	new_rating = Rating.new(movie, score)
  	new_rating.viewer = self
  end
end
