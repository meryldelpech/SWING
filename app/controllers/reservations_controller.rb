class ReservationsController < ApplicationController
  def index_client
    @client_reservations = current_user.reservations
  end

  def index_talent
    @talent_reservations = current_user.talents_reservations
  end

  def show
    @reservation = Reservation.find(params[:id])
    if current_user == @reservation.client
      @user = @reservation.talent_user
    else
      @user = @reservation.client
    end
  end

  def new
    #formulaire mis dans la /talents/show
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
