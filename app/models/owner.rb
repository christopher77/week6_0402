class Owner < ApplicationRecord
    validate :under_18_years_old  
    
    def under_18_years_old
        if birthday.present? && Date.today-birthday < 6570
            errors.add(:birthday, "can't be under 18 years")
        end  
        # age = Date.today.year - birthday.year
        # age -= 1 if Date.today < birthday + age.years
        # if (age < 18)
        #     Owner.errors.birthday
        # end
    end
end
