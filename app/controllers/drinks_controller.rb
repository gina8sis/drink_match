class DrinksController < ApplicationController

  def index
  end

  def search
    @drinks = Drink.find(params[:name])
  end

  def new
    @drink = Drink.new
  end

  def create
end

def show
  end

end

