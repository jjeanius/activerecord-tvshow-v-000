class Show < ActiveRecord::Base[5.1]

  def highest_rating
    show.maximun.rating
  end

  def most_popular_show
    show.highest_rating
  end

  def lowest_rating
    show.minimum.rating
  end




end
