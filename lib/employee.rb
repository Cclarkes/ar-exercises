class Employee < ActiveRecord::Base
    belongs_to :store

    validate :first_name_present?, :last_name_present?, :hourly_rate_between_40_200?,
    :employee_in_store?,

    def first_name_present?
        if first_name.present? == false
            errors.add(:first_name, "Please enter a valid first name.")
        end
    end

    def last_name_present?
        if last_name.present? == false
            errors.add(:last_name, "Please enter a valid last name.")
        end
    end

    def hourly_rate_between_40_200?
        if hourly_rate < 40 || hourly_rate > 200
            errors.add(:hourly_rate, "Wage must be between 40 and 200.")
    end
end

def employee_in_store?
    if store.present? == false
        errors.add(:store, "Store must have at least 1 employee")
    end
end
end