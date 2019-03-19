class Store < ActiveRecord::Base
    has_many :employees

    validate :annual_revenue_above_0?, :store_name_long_enough?

    def store_name_long_enough?
        if name.length < 4
            errors.add(:name, "Store name must be at least 3 characters.")
        end
    end

    def annual_revenue_above_0?
        if annual_revenue == nil|| annual_revenue < 1
            errors.add(:annual_revenue, "Annual revenue must be at least $1.")
        end
    end
end
