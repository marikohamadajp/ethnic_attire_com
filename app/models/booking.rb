class Booking < ApplicationRecord
  belongs_to :dress
  belongs_to :user
end
