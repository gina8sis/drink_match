class Drink < ActiveRecord::Base

has_many :occasions
has_many :seasons
has_many :flavors

end
