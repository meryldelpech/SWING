class TalentsController < ApplicationController
  def index
  end

  def show
    @talent = Talent.find(params[:id])
    @reservation = Reservation.new
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
