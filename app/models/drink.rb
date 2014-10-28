class Drink < ActiveRecord::Base
  serialize :recipe, Hash

validates :name, :presence => true


has_many :occasions
has_many :seasons
has_many :flavors

end
