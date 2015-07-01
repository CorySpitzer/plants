class FamiliesController < ApplicationController
  def index
    @families = Family.all
  end

  def new
    @family = Family.new()
  end

  def show
    @family = Family.find(params[:id])
  end

  def create
    @family = Family.new(family_params)
    if @family.save
      flash[:notice] = "Family Saved!"
      redirect_to families_path
    else
      render :new
    end
  end

  def edit
    @family = Family.find(params[:id])
  end

  def update
    @family = Family.find(params[:id])
    if @family.update(family_params)
      redirect_to family_path(@family)
    else
      render :edit
    end
  end

  private
    def family_params
      params.require(:family).permit(:name)
    end

end
