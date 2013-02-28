class Arma < ActiveRecord::Base
  translates :descricao, :historico
  attr_accessible :descricao, :marca, :modelo, :historico, :tag_list
  acts_as_taggable
end
