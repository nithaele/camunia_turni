class QualificasController < ApplicationController
  before_action :set_qualifica, only: [:show, :edit, :update, :destroy]

  # GET /qualificas
  # GET /qualificas.json
  def index
    @qualificas = Qualifica.all
  end

  # GET /qualificas/1
  # GET /qualificas/1.json
  def show
  end

  # GET /qualificas/new
  def new
    @qualifica = Qualifica.new
  end

  # GET /qualificas/1/edit
  def edit
  end

  # POST /qualificas
  # POST /qualificas.json
  def create
    @qualifica = Qualifica.new(qualifica_params)

    respond_to do |format|
      if @qualifica.save
        format.html { redirect_to @qualifica, notice: 'Qualifica was successfully created.' }
        format.json { render :show, status: :created, location: @qualifica }
      else
        format.html { render :new }
        format.json { render json: @qualifica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qualificas/1
  # PATCH/PUT /qualificas/1.json
  def update
    respond_to do |format|
      if @qualifica.update(qualifica_params)
        format.html { redirect_to @qualifica, notice: 'Qualifica was successfully updated.' }
        format.json { render :show, status: :ok, location: @qualifica }
      else
        format.html { render :edit }
        format.json { render json: @qualifica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qualificas/1
  # DELETE /qualificas/1.json
  def destroy
    @qualifica.destroy
    respond_to do |format|
      format.html { redirect_to qualificas_url, notice: 'Qualifica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qualifica
      @qualifica = Qualifica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qualifica_params
      params.require(:qualifica).permit(:qualifica, :user_id)
    end
end
