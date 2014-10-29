class DrinksController < ApplicationController

  def index
  end

  def search
    @drinks = Drink.where(:name => params[:search])
    @drink_recipe = Drink.where('recipe ILIKE :search', search: "%#{ params[:search] }%")
    @drinks = (@drinks + @drink_recipe).uniq
  end


  def first_screen
    session['game'] = {}
    session['game']['occasion'] = params[:occasion].keys.first
    #raise 'erer'
    redirect_to '/season'
  end

  def second_screen
    session['game']['season'] = params[:season].keys.first
    redirect_to '/flavor'
  end

  def third_screen
   session['game']['flavor'] = params[:flavor]
   redirect_to '/output'
  end

  def output
    @drink = Drink.first

  end

  def get_drink

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


end

