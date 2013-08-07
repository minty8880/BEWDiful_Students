class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end


  def show
    @story = Story.find(params[:id])
  end


  def new
    @story = Story.new
  end


  def create
    @story = current_user.stories.new params.require(:story).permit(:headline, :content)
    if @story.save
      redirect_to story_path(@story), :notice => "Story successfully created"
    else
      render 'new'
    end
  end
end
