class ReservationsController < ApplicationController
  def index_talent
    @reservations = Reservation.all
  end

  def index_client
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
    if @reservation.save
      flash[:notice] = "la reservation a bien été créée"
      redirect_to talent_reservation_path(@talent.id, @reservation.id)
    else
      flash[:alert] = "un problème est survenu"
      render 'talents/show'
    end
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
