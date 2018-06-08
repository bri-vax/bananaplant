class GrillesController < ApplicationController
  def index
    if (!user_signed_in?)
         redirect_to "/users/sign_in"
    end
  end
  def create
    link_tirage = Tirage.maximum(:id).next
    Grille.create num1: params[:num1],num2: params[:num2],num3: params[:num3],num4: params[:num4],num5: params[:num5],exp1: params[:exp1], exp2: params[:exp2], user_id: current_user.id , tirage_id: link_tirage
    current_user.jouer_grilles += 1
    current_user.save
    redirect_to "/grilles-succes"
  end
  
def gestion
  link_tirage = Tirage.maximum(:id)
# @grilles_gestion = Grille.all
  @grilles_gestion = Grille.where("tirage_id= ?", link_tirage)
# @grilles_gestion = Grille.where(['created_at Like ?', "%#{Time.now.strftime("%Y-%m-%d") }%"])
 # @cvs = Cv.where(['experience LIKE ? AND nom LIKE ?', "%#{params[:search]}%", "%#{params[:search_name]}%"])
end
def retri
  
  link_tirage = Tirage.maximum(:id)
  tirage = Tirage.find(link_tirage)
  all_grilles_byTirage = Grille.where("tirage_id= ?", link_tirage)
  ref_numbers = [tirage.t_num1.to_i, tirage.t_num2.to_i,  tirage.t_num3.to_i,  tirage.t_num4.to_i, tirage.t_num5.to_i]
  ref_exp = [tirage.t_exp1.to_i,tirage.t_exp2.to_i]
  all_grilles_byTirage.each do |proposit|

    select_numbers = [proposit.num1.to_i, proposit.num2.to_i , proposit.num3.to_i ,proposit.num4.to_i  , proposit.num5.to_i ]
    code_numbers = 0
      for n in (0..4) do
         for i in (0..4)do
           if select_numbers[n]== ref_numbers[i]
               code_numbers = code_numbers +1
           end
         end
      end

    select_exp = [proposit.exp1.to_i,proposit.exp2.to_i]
    code_exp = 0
      for u in (0..1) do
         for q in (0..1)do
             if select_exp[u]== ref_exp[q]
             code_exp = code_exp +1
            end
         end
      end

 
 
 proposit.code = code_numbers.to_s + code_exp.to_s
 proposit.save
 end
 tirage.nb_jouer  = all_grilles_byTirage.length
 tirage.save
 
 all_users = User.all
    all_users.each do |un_user| 
        un_user.jouer_grilles = 0
        un_user.save
    end
 
 redirect_to "/admin-grilles"
end 


    def remun
        
        redirect_to "/admin-grilles"
    end

   def code
    link_tirage = Tirage.maximum(:id)   
            tirage = Tirage.find(link_tirage)
            all_grilles_byTirage = Grille.where("tirage_id= ?", link_tirage)
            tab = [all_grilles_byTirage.where("code=?","52"), # index[0] - Rang 1 - Code 52
                    all_grilles_byTirage.where("code=?","51"), # index[1] - Rang 2 - Code 51
                     all_grilles_byTirage.where("code=?","50"), # index[2] - Rang 3 - Code 50
                      all_grilles_byTirage.where("code=?","42"), # index[3] - Rang 4 - Code 42
                       all_grilles_byTirage.where("code=?","41"), # index[4] - Rang 5 - Code 41
                        all_grilles_byTirage.where("code=?","32"), # index[5] - Rang 6 - Code 32
                         all_grilles_byTirage.where("code=?","40"), # index[6] - Rang 7 - Code 40
                          all_grilles_byTirage.where("code=?","22"), # index[7] - Rang 8 - Code 22
                           all_grilles_byTirage.where("code=?","31"), # index[8] - Rang 9 - Code 31
                            all_grilles_byTirage.where("code=?","30"), # index[9] - Rang 10 - Code 30
                             all_grilles_byTirage.where("code=?","12"), # index[10] - Rang 11 - Code 12
                              all_grilles_byTirage.where("code=?","21"), # index[11] - Rang 12 - Code 21
                               all_grilles_byTirage.where("code=?","20"), # index[12] - Rang 13 - Code 20
                                all_grilles_byTirage.where("code=?","11")] # index[13] - Rang 14 - Code 11]  
            # Rang payé
            tirage.rank1 = tab[0].length
            tirage.rank2 = tab[1].length    
            tirage.rank3 = tab[2].length
            tirage.rank4 = tab[3].length
            tirage.rank5 = tab[4].length
            tirage.rank6 = tab[5].length
            tirage.rank7 = tab[6].length    
            tirage.rank8 = tab[7].length
            tirage.rank9 = tab[8].length
            tirage.rank10 = tab[9].length
            tirage.rank11 = tab[10].length
            tirage.rank12 = tab[11].length
            # Rang récompensé par grilles
            tirage.rank13 = tab[12].length
            tirage.rank14 = tab[13].length
            # Rang perdant
            tirage.rank15 = all_grilles_byTirage.where("code=?","02").length
            tirage.rank16 = all_grilles_byTirage.where("code=?","10").length
            tirage.rank17 = all_grilles_byTirage.where("code=?","01").length
            tirage.rank18 = all_grilles_byTirage.where("code=?","00").length
            # Save 
            tirage.save
            #Test algo général rang [1 à 12]
            for i in 0..11 # de rank 1 à 12  (rang rémunérer par payement)
                    first = "Valur de i est elle stable : " + i.to_s 
                     logger.debug first
                     if i == 0
                        pourcent = 0.2
                     elsif( i>0  && i<7)
                        pourcent = 0.025
                     else  
                        pourcent = 0.05
                     end
                        if (tab[i].length != 0 )
                            montant_grilles = ((tirage.nb_jouer * 0.05)*pourcent)/(tab[i].length)
                            recup = tab[i]
                            recup.each do |grille|
                                salut = i.to_s + " valeur"
                                logger.debug salut
                                user_topay =  User.find(grille.user_id)
                                user_topay.balance +=  montant_grilles
                                grille.gain = montant_grilles
                                user_topay.save
                                grille.save
                                end
                        end
            end
            #Test algo général rang [13-14]
            for i in 12..13
                    if i==12 
                        grille_win = 3
                    elsif i==13
                        grille_win = 1
                    end
                recup = tab[i]
                recup.each do |grille|
                    user = User.find(grille.user_id)
                    user.max_grilles +=  grille_win
                    user.save
                    end
            end
    end
end

