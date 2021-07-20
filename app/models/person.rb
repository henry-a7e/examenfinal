class Person < ApplicationRecord
    has_many :person_garments
    def full_name 
        first_name + " " + last_name
    end
end
