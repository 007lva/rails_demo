class ProjectsController < ApplicationController

  def index
    @projects = Project.last_created_projects(10)
  end

  def show
    if @project = Project.find_by(id: params[:id])
      render 'show'
    else
      render 'no_project_found'
    end
  end

end
