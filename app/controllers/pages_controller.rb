class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    if current_user
      @bookings = Booking.all
    end
  end
end
