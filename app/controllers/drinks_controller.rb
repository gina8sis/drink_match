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
   session['game']['flavor'] = params[:flavor].map {|f| f.capitalize }
   redirect_to '/output'
  end

  def output

    occasion_drinks = Occasion.find_by(:name => 'vacation').drinks
    season_drinks = Season.find_by(:name => session['game']['season']).drinks
    flavors = Flavor.where(:descriptor => session['game']['flavor'])
    flavor_drinks = flavors.first.drinks & flavors.last.drinks


    total = occasion_drinks & season_drinks & flavor_drinks
    @drinks = total.sample(3)
  end

  def get_drink

  end

  def new
    @drink = Drink.new
    @drink.save
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
    @drink.update(drink_params)

    # @drink.save
    redirect_to(show_path)
  end

  private

  def drink_params
    params.require(:drink).permit(:name, :description, :recipe, :color, :strength, :risk, :recipe_list)
  end



end

