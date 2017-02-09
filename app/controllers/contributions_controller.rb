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
    @contribution = @tale.contributions.new(contribution_params)
    if @contribution.save
      redirect_to tales_path
    else
      render :new
    end
  end



private
  def contribution_params
  params.require(:contribution).permit(:content, :username)
  end
end
