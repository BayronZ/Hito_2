class Hito2sController < ApplicationController
  before_action :set_hito_2, only: %i[ show edit update destroy ]

  # GET /hito_2s or /hito_2s.json
  def index
    @hito_2s = Hito2.all
  end

  # GET /hito_2s/1 or /hito_2s/1.json
  def show
  end

  # GET /hito_2s/new
  def new
    @hito_2 = Hito2.new
  end

  # GET /hito_2s/1/edit
  def edit
  end

  # POST /hito_2s or /hito_2s.json
  def create
    @hito_2 = Hito2.new(hito_2_params)

    respond_to do |format|
      if @hito_2.save
        format.html { redirect_to hito_2_url(@hito_2), notice: "Hito 2 was successfully created." }
        format.json { render :show, status: :created, location: @hito_2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hito_2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hito_2s/1 or /hito_2s/1.json
  def update
    respond_to do |format|
      if @hito_2.update(hito_2_params)
        format.html { redirect_to hito_2_url(@hito_2), notice: "Hito 2 was successfully updated." }
        format.json { render :show, status: :ok, location: @hito_2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hito_2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hito_2s/1 or /hito_2s/1.json
  def destroy
    @hito_2.destroy

    respond_to do |format|
      format.html { redirect_to hito_2s_url, notice: "Hito 2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hito_2
      @hito_2 = Hito2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hito_2_params
      params.require(:hito_2).permit(:name, :user_id)
    end
end
