class CommentsController < ApplicationController

  before_action :find_story, :only => [:new, :create]

  def new
    @comment = @story.comments.new
  end
  
  
  def create
    @comment = @story.comments.new params.require(:comment).permit(:content)
    @comment.user = current_user
    if @comment.save
      redirect_to story_path(@story)
    else
      render 'new'
    end
  end
  
  
  protected
  
  def find_story
    @story = Story.find(params[:story_id])    
  end
end