class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    rating = self.highest_rating
    Show.find_by("rating = ?", rating)
  end

  def self.lowest_rating

  end

  def self.least_popular_show

  end

  def self.ratings_sum

  end

  def self.popular_shows

  end 

  def self.shows_by_alphabetical_order
end
