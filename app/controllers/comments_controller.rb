class CommentsController < ApplicationController
  #Creates and destroys comments from the projects 'Project Description' page
  
  def create
    @project = Project.find(params[:project_id])
    @comment = @project.comments.create(params[:comment])
    redirect_to project_path(@project)
  end
 
  def destroy
    @project = Project.find(params[:project_id])
    @comment = @project.comments.find(params[:id])
    @comment.destroy
    redirect_to project_path(@project)
  end
  
end
