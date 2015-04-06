class Project < ActiveRecord::Base
	def self.last_created_projects(num)
		self.order("created_at desc").limit(num)
	end
end
