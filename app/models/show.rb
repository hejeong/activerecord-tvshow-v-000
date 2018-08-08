class Show < ActiveRecord::Base
  def highest_rating
    Show.maximum(:rating)
  end

  def most_popular_show
    rating = highest_rating
    Show.find_by("rating = ?", rating)
  end
end
