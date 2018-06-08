class TiragesController < ApplicationController
  before_action :set_tirage, only: [:show, :edit, :update, :destroy]

  # GET /tirages
  # GET /tirages.json
  def index
    @tirages = Tirage.all
  end

  # GET /tirages/1
  # GET /tirages/1.json
  def show
  end

  # GET /tirages/new
  def new
    @tirage = Tirage.new
  end

  # GET /tirages/1/edit
  def edit
  end

  # POST /tirages
  # POST /tirages.json
  def create
    @tirage = Tirage.new(tirage_params)

    respond_to do |format|
      if @tirage.save
        format.html { redirect_to @tirage, notice: 'Tirage was successfully created.' }
        format.json { render :show, status: :created, location: @tirage }
      else
        format.html { render :new }
        format.json { render json: @tirage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tirages/1
  # PATCH/PUT /tirages/1.json
  def update
    respond_to do |format|
      if @tirage.update(tirage_params)
        format.html { redirect_to @tirage, notice: 'Tirage was successfully updated.' }
        format.json { render :show, status: :ok, location: @tirage }
      else
        format.html { render :edit }
        format.json { render json: @tirage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tirages/1
  # DELETE /tirages/1.json
  def destroy
    @tirage.destroy
    respond_to do |format|
      format.html { redirect_to tirages_url, notice: 'Tirage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def histoTir
    @histo = Tirage.all.reverse
  end

  def showhistoTir
    @le_tirage = Tirage.find(params[:id])
    
    @perso_grilles= Grille.where("user_id= ?", current_user)
    @by_tirage = @perso_grilles.where("tirage_id= ?", params[:id])
     
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tirage
      @tirage = Tirage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tirage_params
      params.require(:tirage).permit(:t_num1, :t_num2, :t_num3, :t_num4, :t_num5, :t_exp1, :t_exp2, :date_tirage)
    end
end
