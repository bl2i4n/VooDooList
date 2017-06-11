module ItemsHelper
  include ActionView::Helpers

  def time_left(item)
      "#{distance_of_time_in_words(7.days.ago, item.created_at)} left"
  end

end
