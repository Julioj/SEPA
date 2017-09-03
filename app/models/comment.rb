class Comment < ApplicationRecord
	belongs_to :company, :foreign_key => 'companyId'
end
