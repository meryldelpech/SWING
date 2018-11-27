class TalentsController < ApplicationController
  def index
  end

  def show
    @talent = Talent.find(params[:id])
    @reservation = Reservation.new
  end

  def new
    @talent = Talent.new
  end

  def create
    @talent = Talent.new(talent_params)
    @talent.user = current_user
    if @talent.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def talent_params
    params.require(:talent).permit(:instrument, :experience, :price, :user_id)
  end
end


