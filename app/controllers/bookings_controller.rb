class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @user_booking = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
    @user = @booking.user
    @studio = @booking.studio
  end

  def new
    @studio = Studio.find(params[:studio_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)

    else
      render_error
    end
  end


private

  def booking_params
    params.require(:booking).permit(:studio_id, :start_date, :end_date)
  end

  def render_error
     render json: { errors: @booking.errors.full_messages },
      status: :unprocessable_entity
    end

end

