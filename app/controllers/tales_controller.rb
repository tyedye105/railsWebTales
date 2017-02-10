class TalesController < ApplicationController
  def index
    @tales = Tale.all
    if params[:order] == 'title'
      @tales = Tale.all.order('title')
    end
  end

  def show
    @tale = Tale.find(params[:id])
  end

  def new
    @tale = Tale.new
  end

  def create
    @tale = Tale.new(tale_params)
    if @tale.save
      flash[:notice]="You have added a tale!"
      redirect_to tales_path
    else
      flash[:alert]="Oops, something went wrong...try again!"
      render :new
    end
  end

  def edit
    @tale = Tale.find(params[:id])
  end
  def update
    @tale = Tale.find(params[:id])
    if @tale.update(tale_params)
      flash[:notice]="You have updated your tale!"
      redirect_to tale_path(@tale)
    else
      flash[:alert]="Oops, something went wrong...try again!"
      render :edit
    end
  end
  def destroy
    @tale = Tale.find(params[:id])
    @tale.destroy
    redirect_to tales_path
  end
  def images
    @images = all_images
  end

private
  def tale_params
    params.require(:tale).permit(:title)
  end
end
