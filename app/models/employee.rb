class Employee < ApplicationRecord
	has_many :company
	has_many :visit
end
