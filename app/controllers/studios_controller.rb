class StudiosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @studios = Studio.all
  end

  def show
    @studio = Studio.find(params[:id])
  end

  def new
    @studio = Studio.new
  end

  def create
   @studio = Studio.new(studio_params)
    @studio.save
  end

  def edit

  end

  def update

  end

  def destroy

  end


private

  def studio_params
    params.require(:studio).permit(:title, )
  end


end
