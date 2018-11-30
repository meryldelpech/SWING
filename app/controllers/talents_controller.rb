class TalentsController < ApplicationController

  def index
    #@location = Talent.reservation.where("location ILKIKE '#{params[:location]}")
    # @user = Talent.find(params[:user_id])

    sql_query = " \
           talents.instrument ILIKE :instrument \
         "
    @talents = Talent.where(sql_query, instrument: "%#{params[:instrument]}%")
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
    params.require(:talent).permit(:instrument, :experience, :price, :photo, :user_id)
  end
end
