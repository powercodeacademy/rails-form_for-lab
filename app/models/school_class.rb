class SchoolClass < ApplicationRecord
  def school_class_format
    "#{title} - Room: #{room_number}"
  end
end
