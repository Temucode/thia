class PagesController < ApplicationController
  def home
    @dessins = Dessin.all.sample(3)
  end
end
