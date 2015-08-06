class RuolisController < ApplicationController
  before_action :set_ruoli, only: [:show, :edit, :update, :destroy]

  # GET /ruolis
  # GET /ruolis.json
  def index
    @ruolis = Ruoli.all
  end

  # GET /ruolis/1
  # GET /ruolis/1.json
  def show
  end

  # GET /ruolis/new
  def new
    @ruoli = Ruoli.new
  end

  # GET /ruolis/1/edit
  def edit
  end

  # POST /ruolis
  # POST /ruolis.json
  def create
    @ruoli = Ruoli.new(ruoli_params)

    respond_to do |format|
      if @ruoli.save
        format.html { redirect_to @ruoli, notice: 'Ruoli was successfully created.' }
        format.json { render :show, status: :created, location: @ruoli }
      else
        format.html { render :new }
        format.json { render json: @ruoli.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ruolis/1
  # PATCH/PUT /ruolis/1.json
  def update
    respond_to do |format|
      if @ruoli.update(ruoli_params)
        format.html { redirect_to @ruoli, notice: 'Ruoli was successfully updated.' }
        format.json { render :show, status: :ok, location: @ruoli }
      else
        format.html { render :edit }
        format.json { render json: @ruoli.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruolis/1
  # DELETE /ruolis/1.json
  def destroy
    @ruoli.destroy
    respond_to do |format|
      format.html { redirect_to ruolis_url, notice: 'Ruoli was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruoli
      @ruoli = Ruoli.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ruoli_params
      params.require(:ruoli).permit(:ruolo, :user_id)
    end
end
