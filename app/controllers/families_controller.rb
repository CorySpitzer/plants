class FamiliesController < ApplicationController
  def index
    @families = Family.all
  end

  def new
    @family = Family.new()
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

  private
    def family_params
      params.require(:family).permit(:name)
    end

end
