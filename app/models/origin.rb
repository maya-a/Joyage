class Origin < ApplicationRecord
<<<<<<< HEAD
=======
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
>>>>>>> b0bfff1ab122ec26a1c4067f3388ed2b0942d23f
end
