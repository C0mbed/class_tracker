class Professor < ApplicationRecord
    validates :name, :department, presence: true
    validates :tenure, inclusion: {in: [true, false]}
end


