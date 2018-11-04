class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    self.find_by(self.highest_rating)
  end

  def self.lowest_rating
    self.order(rating: :asc).limit(1)
  end

  def self.least_popular_show
    self.find_by(self.lowest_rating)
  end

  def self.ratings_sum
    self.sum("rating")
  end

  def self.popular_shows
    self.order(rating: :desc).where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    self.order(:name)
  end

end
