class PagesController < ApplicationController
  def index
  end
  
  def succes
  end 
  
  def init
    current_user.balance = 0
    current_user.jouer_grilles =0
    current_user.max_grilles =12
    current_user.gain_grilles = 0
    current_user.save
    redirect_to "/grilles"
  end
  
  def mesGrilles
    @grilles_per_user = Grille.where("user_id= ?", current_user).reverse.take(10)
  end
  
  
end
