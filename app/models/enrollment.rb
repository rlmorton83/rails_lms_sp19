class Enrollment < ApplicationRecord
    belongs_to :user
    belomngs_to :course
end
