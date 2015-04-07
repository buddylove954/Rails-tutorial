class Project < ActiveRecord::Base
	has_many :entries
	def self.last_created_projects(num)
		self.order("created_at desc").limit(num)
	end
end
