class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def show
  end

  def new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @talent = Talent.find(params[:talent_id])
    @reservation.talent_id = @talent.id
    @reservation.save
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def reservation_params
    params.require(:reservation).permit(:duration, :location, :title)

  end
end
