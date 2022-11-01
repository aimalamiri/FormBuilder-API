class ProjectsController < ApplicationController
  def index
    Project.all
  end
end
