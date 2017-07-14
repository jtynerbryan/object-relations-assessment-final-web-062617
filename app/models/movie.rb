class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    self.title = title
    @@all << self
  end

  def self.all
  	@@all
  end

  def self.find_by_title(title)
  	self.all.detect {|movie| movie.title = title}
  end

  def ratings
  	Rating.all.select {|rating| rating.movie == self}
  end

  def viewers
  	Rating.all.map do |rating|
  		if rating.movie == self
  			rating.viewer
  		end
  	end
  end

  def average_rating
  	scores = self.ratings.map {|rating| rating.score}
  	scores.inject { |sum, el| sum + el }.to_f / scores.size
  end

end
