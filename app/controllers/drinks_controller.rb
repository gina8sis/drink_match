class DrinksController < ApplicationController

  def index
  end

  def search
    @drinks = Drink.where(:name => params[:search])
    @drink_recipe = Drink.where('recipe ILIKE :search', search: "%#{ params[:search] }%")
    @drinks = (@drinks + @drink_recipe).uniq
  end

  def new
    @drink = Drink.new
  end

  def create
  @drink = Drink.new(drink_params)
  if @drink.save
    redirect_to(show_path)
  else
    render :new
  end
end

  def show
  @drinks = Drink.all
  end

  def edit
    @drink = Drink.find(params[:id])
  end

  def update
    @drink = Drink.find(params[:id])
    @drink.save
    redirect_to(show_path)
  end

  def output
    raise
  end

end

