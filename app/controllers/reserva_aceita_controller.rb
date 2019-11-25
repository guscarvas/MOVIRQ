class ReservaAceitaController < ApplicationController
  before_action :set_reserva_aceitum, only: [:show, :edit, :update, :destroy]
  before_action :set_reserva, only: [:new]

  # GET /reserva_aceita
  # GET /reserva_aceita.json
  def index
    @reserva_aceita = ReservaAceitum.all
  end

  # GET /reserva_aceita/1
  # GET /reserva_aceita/1.json
  def show
  end

  # GET /reserva_aceita/new
  def new
    @reserva_aceitum = ReservaAceitum.new
  end

  # GET /reserva_aceita/1/edit
  def edit
  end

  # POST /reserva_aceita
  # POST /reserva_aceita.json
  def create
    @reserva_aceitum = ReservaAceitum.new(reserva_aceitum_params)

    respond_to do |format|
      if @reserva_aceitum.save
        format.html { redirect_to @reserva_aceitum, notice: 'Reserva aceitum was successfully created.' }
        format.json { render :show, status: :created, location: @reserva_aceitum }
      else
        format.html { render :new }
        format.json { render json: @reserva_aceitum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reserva_aceita/1
  # PATCH/PUT /reserva_aceita/1.json
  def update
    respond_to do |format|
      if @reserva_aceitum.update(reserva_aceitum_params)
        format.html { redirect_to @reserva_aceitum, notice: 'Reserva aceitum was successfully updated.' }
        format.json { render :show, status: :ok, location: @reserva_aceitum }
      else
        format.html { render :edit }
        format.json { render json: @reserva_aceitum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reserva_aceita/1
  # DELETE /reserva_aceita/1.json
  def destroy
    @reserva_aceitum.destroy
    respond_to do |format|
      format.html { redirect_to reserva_aceita_url, notice: 'Reserva aceitum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserva_aceitum
      @reserva_aceitum = ReservaAceitum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserva_aceitum_params
      params.require(:reserva_aceitum).permit(:dono, :esporte, :naipe, :inicio, :fim)
    end
end
