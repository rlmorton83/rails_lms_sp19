class User < ApplicationRecord
    has_many :enrollments, dependent: :destroy
    has_many :courses, through: :enrollments

    def full_name
    "#{self.first_name} #{self.Last_name}"
    end

end


