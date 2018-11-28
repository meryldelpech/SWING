class ReservationsController < ApplicationController
  def index_client
    @reservations = current_user.reservations
  end

  def index_talent
    @reservations = current_user.talents_reservations
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
    @reservation.client = current_user
    if @reservation.save
      flash[:notice] = "la reservation a bien été créée"
      redirect_to reservation_path(@reservation)
    else
      flash[:alert] = "un problème est survenu"
      render 'talents/show'
    end
  end

  def edit
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_params)
    redirect_to reservation_path(@reservation)
  end

  def destroy
  end

  private
  def reservation_params
    params.require(:reservation).permit(:duration, :location, :title, :begin_date, :end_date, :status, :total_price, :fees)

  end
end
