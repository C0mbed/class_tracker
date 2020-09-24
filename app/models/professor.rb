class Professor < ApplicationRecord
    validates :name, :department, presence: true
end


