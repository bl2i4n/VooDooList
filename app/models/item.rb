class Item < ActiveRecord::Base
  belongs_to :user

  def expired
    remaining = (created_at - 7.days.ago).ceil

    if remaining < 0
      true
    else
      false
    end
  end

end
