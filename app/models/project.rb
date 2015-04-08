class Project < ActiveRecord::Base
	has_many :entries

	validates :name,  presence: true 
	validates :name,  uniqueness: true
	validates :name,  length: {maximum: 30}
	validates :name,  format: {with: /\w/}
	validates :descriptions,  presence: true 

	def self.last_created_projects(num)
		self.order("created_at desc").limit(num)
	end

	def total_hours_in_month(month, year)
    the_date = DateTime.new(year, month)
	entries_in_month = entries.where(date: the_date.beginning_of_month..the_date.end_of_month)
	entries_in_month.reduce(0) { |total_hours, entry| total_hours + entry.hours }
  end

end
