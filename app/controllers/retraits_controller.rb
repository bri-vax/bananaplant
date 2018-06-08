class RetraitsController < ApplicationController
    def index
    end
    
    def create
        Retrait.create pre_balance: current_user.balance ,montant_retrai: params[:retrait_field] , users_id: current_user.id 
        current_user.balance = current_user.balance - (params[:retrait_field]).to_i
        current_user.save
    end
    
     def adminRetrait
    
    @all_retrait = Retrait.all
    
  end
end
