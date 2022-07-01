class AvisosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_aviso, only: %i[ show edit update destroy ]

  # GET /avisos or /avisos.json
  def index
    @avisos = Aviso.page params[:page]
  end

  # GET /avisos/1 or /avisos/1.json
  def show
  end

  # GET /avisos/new
  def new
    @aviso = Aviso.new
  end

  # GET /avisos/1/edit
  def edit
  end

  # POST /avisos or /avisos.json
  def create
    @aviso = Aviso.new

    respond_to do |format|
      if @aviso.save
        format.html { redirect_to aviso_url(@aviso), notice: "Aviso was successfully created." }
        format.json { render :show, status: :created, location: @aviso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aviso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avisos/1 or /avisos/1.json
  def update
    respond_to do |format|
      if @aviso.update(aviso_params)
        format.html { redirect_to aviso_url(@aviso), notice: "Aviso was successfully updated." }
        format.json { render :show, status: :ok, location: @aviso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aviso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avisos/1 or /avisos/1.json
  def destroy
    @aviso.destroy

    respond_to do |format|
      format.html { redirect_to avisos_url, notice: "Aviso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aviso
      @aviso = Aviso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aviso_params
      params.require(:aviso).permit(:id_aviso, :id_socio, :id_usuario, :titulo, :descripcion, :categoria)
    end
end
