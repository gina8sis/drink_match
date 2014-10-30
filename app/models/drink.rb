class Drink < ActiveRecord::Base
  serialize :recipe, Hash

  validates :name, :presence => true

  has_many :occasions
  has_many :seasons
  has_many :flavors

  def recipe_list=(string)
    hash = {}
    string.split(/\r?\n/).each do |line|
      key, val = line.split(',')
      hash[key] = val
    end
    self.recipe = hash
  end

  def recipe_list
    str = ""

    self.recipe.each do |k,v|
      str << "#{k},#{v}\n"
    end

    str
  end

  # base, 2 oz rye
  # sweet, blah blah



end
