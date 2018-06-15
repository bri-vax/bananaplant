class Grille < ActiveRecord::Base
    belongs_to :user , foreign_key: 'user_id' , required: false
    belongs_to :tirage , foreign_key: 'tirage_id' , required: false
end
