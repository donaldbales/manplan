class ManplanRecord < ActiveRecord::Base
	self.abstract_class = true

	before_create do
		self.created_by = 'dbales'
	end

	before_update do
		self.updated_by = 'dbales'
	end
end
