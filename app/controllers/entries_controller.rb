class EntriesController < ApplicationController
	def index
		@project = Project.find(params[:project_id])
		@entries = @project.entries
		@hours = @project.total_hours_in_month(Time.now.month, Time.now.year)
	end
end
