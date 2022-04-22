class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user
    @booking.total_price = @car.price_per_day * (@booking.end_date - @booking.start_date).to_i
    if @booking.save
      redirect_to car_path(@car)
    else
      render 'cars/show'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
