class Arma < ActiveRecord::Base
  attr_accessible :descricao, :marca, :modelo, :historico, :tag_list
  acts_as_taggable
end
