module ItemsHelper
  include ActionView::Helpers

  def time_left(item)
    if item.expired
      "0 days left"
    else
      "#{distance_of_time_in_words(Time.now, item.created_at + 7.days)} left"
    end
  end

end
