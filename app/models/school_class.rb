class SchoolClass < ApplicationRecord
  def to_s
    title + ' ' + room_number.to_s
  end
end
