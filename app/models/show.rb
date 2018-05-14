class Show < ActiveRecord::Base

  def highest_rating
    show.maximun("rating")
  end

  def most_popular_show
    show.highest_rating
  end

  def lowest_rating
    show.minimum("rating")
  end

  def least_popular_show
    show.lowest_rating
  end

  def ratings_sum
    show.sum("rating")
  end

  def popular_shows
    show.where("popular_shows > ?",5)
  end

  def shows_by_alphabetical_order
    show.order("shows_by_alphabetical_order")
  end




end
