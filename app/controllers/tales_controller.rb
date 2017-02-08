class TalesController < ApplicationController
  def index
    @tales = Tale.all
  end
  def show
    @tale = Tale.find(params[:id])
  end
end
