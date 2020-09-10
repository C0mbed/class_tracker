class Student < ActiveRecord::Base
    has_many :classes
    has_many :professors, through: :classes
end