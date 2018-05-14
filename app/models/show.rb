class Show < ActiveRecord::Base

  def self.highest_rating
    maximum("rating")
  end


  def self.most_popular_show
    show.maximum(:rating)
  end

  def self.lowest_rating
    minimum("rating")
  end

  def self.least_popular_show
    lowest_rating
  end

  def self.ratings_sum
    sum("rating")
  end

  def self.popular_shows
    where("popular_shows > ?",5)
  end

  def self.shows_by_alphabetical_order
    order("shows_by_alphabetical_order")
  end
end
