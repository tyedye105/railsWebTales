class ContributionsController < ApplicationController

  def show
    @tales = Tale.find(params[:tale_id])
    @contribution = Contribution.find(params[:id])
end
