class ProjectsController < ApplicationController
    before_action :authenticate_user!

    def index
        @assigned_projects = current_user.projects
        @other_projects = Project.where.not(id: @assigned_projects.pluck(:id))
    end

    def show
        @project = Project.find(params['id'])
    end

    def new
        @project = Project.new
    end

    def create
        @project = Project.new(permitted_params)
        if @project.save
            redirect_to project_path(@project)
        else
            render :new
        end
    end

    def edit
        @project = Project.find(params[:id])
    end

    def update
        @project = Project.find(params[:id])
        if @project.update(permitted_params)
          redirect_to project_path(@project), notice: 'Project updated successfully'
        else
          render :edit, alert: 'Unable to update the project'
        end
    end

    def destroy
        @project = Project.find(params['id'])
        @project.destroy
        redirect_to projects_path, notice: 'Project deleted'
    end

    protected

    def permitted_params
        params.require(:project).permit(:name, :description, user_ids: [])
    end
end
