class ContributionsController < ApplicationController

  def show
    @tale = Tale.find(params[:tale_id])
    @contribution = Contribution.find(params[:id])
  end
  def new
    @tale = Tale.find(params[:tale_id])
    @contribution = Contribution.new
  end
  def create
    @tale = Tale.find(params[:tale_id])
    @contribution = Contribution.new(contribution_params)
    if @tale.contributions.save(@contribution)
  end


private
  params.require(:contribution).permit(:content, :username)
end
end
