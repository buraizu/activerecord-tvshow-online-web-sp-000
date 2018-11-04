class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    movie = self.highest_rating
    movie.select("title")
  end

  def self.lowest_rating
    self.minimum(:rating)
  end


end
