class UrlsController < ApplicationController

  before_action :find_url_by_hash, only: [:redirectors, :preview]
  before_action :find_url_by_params, only: [:show, :destroy]

  def index
    @urls = URL.all
  end

  def new
    @url = URL.new
  end

  def create
    @url = URL.new(permitted_attributes)
    @url.generate_short_code
    if @url.save
      flash[:notice] = 'URL added'
      redirect_to url_path(@url.id)
    else
      render 'new'
    end
  end

  def show
  end

  def redirectors
    if @url
      redirect_to @url.link
    else
      @message = "Sorry that isn't a valid URL redirection!"  
    end
  end

  def preview
    unless @url
      @message = "Sorry that isn't a valid URL redirection!" 
    end    
  end

  def destroy
    @url.destroy
    flash[:notice] = 'URL redirector removed'
    redirect_to urls_url
  end

  private

  def permitted_attributes
    params.require(:url).permit(:link)
  end

  def find_url_by_hash
    @url = URL.where(hash_code: params[:some_totally_random_value]).first
  end

  def find_url_by_params
    @url = URL.find(params[:id])
  end

end
