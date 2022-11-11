class Api::ProjectsController < ApplicationController
  before_action :authenticate_user!

  def index
    projects = Project.all
    render json: projects
  end

  def show
    project = Project.find(params[:id])
    render json: project
  end

  def create
    project = current_user.projects.create(project_params)
    render json: project
  end

  def edit
    project = Project.find(params[:id])
    render json: project
  end

  def update
    project = Project.find(params[:id])
    project.update(project_params)
    render json: project
  end

  def destroy
    project = Project.find(params[:id])
    project.destroy
    render json: project
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :user_id)
  end
end
