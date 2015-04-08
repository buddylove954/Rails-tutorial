class ProjectsController < ApplicationController
	def index
		@project = Project.last_created_projects(10)
		if @project.empty?
			render 'no_projects'
		end
	end

	def show
		unless @user_info = Project.find_by(id: params[:id])
			render 'no_projects_found'
		end
	end
end
