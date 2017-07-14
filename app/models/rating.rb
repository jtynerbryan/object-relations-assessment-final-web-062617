class Rating
  attr_accessor :score, :movie, :viewer

  @@all = []

  def initialize(movie, score)
  	@movie = movie
  	@score = score
  	@@all << self
  end

  def self.all
  	@@all
  end
  
end
