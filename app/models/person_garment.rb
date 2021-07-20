class PersonGarment < ApplicationRecord
  belongs_to :person
  belongs_to :transmission
  belongs_to :garment
end
