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
    @studio.user = current_user

    @studio.save
    if @studio.save
      redirect_to studio_path(@studio)
    else
        render_error
    end
  end

  def edit
    @studio = Studio.find(params[:id])
    @studio.user = current_user
  end

  def update
     @studio = Studio.find(params[:id])
     @studio.update(studio_params)
      redirect_to studio_path(@studio)
  end

  def destroy
    @studio = Studio.find(params[:id])
    @studio.destroy
    redirect_to studios_path

  end


private

  def studio_params
    params.require(:studio).permit(:title, :price, :description, :adress, :specific)
  end

  def render_error
     render json: { errors: @studio.errors.full_messages },
      status: :unprocessable_entity
    end

end
