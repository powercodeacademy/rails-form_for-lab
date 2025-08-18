class SchoolClass < ApplicationRecord
  def sc_info
    "#{title} #{room_number}"
  end
end
