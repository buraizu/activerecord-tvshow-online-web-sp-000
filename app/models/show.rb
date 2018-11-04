class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    Show.where(self.highest_rating).limit(1)

  end

  def self.lowest_rating
    self.minimum(:rating)
  end


end
