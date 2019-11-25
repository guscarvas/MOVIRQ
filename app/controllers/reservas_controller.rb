class ReservasController < ApplicationController
  before_action :set_reserva, only: [:show, :edit, :update, :destroy]
  # before_action :verfificar, only: [:new]

  # GET /reservas
  # GET /reservas.json
  def index
    if current_user.role != 'atletica'
      @reservas = Reserva.all
    else
      @reservas = Reserva.where(criador: current_user.name)
    end
  end

  # GET /reservas/1
  # GET /reservas/1.json
  def show
  end

  # GET /reservas/new
  def new
    @reserva = Reserva.new
  end

  # GET /reservas/1/edit
  def edit
  end

  # POST /reservas
  # POST /reservas.json
  def create
    @reserva = Reserva.new(reserva_params)
    @reserva.user_id = current_user.id
    @reserva.criador = current_user.name

    respond_to do |format|
      if @reserva.save
        format.html { redirect_to @reserva, notice: 'Reserva atualizada com sucesso.' }
        format.json { render :show, status: :created, location: @reserva }
      else
        format.html { render :new }
        format.json { render json: @reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservas/1
  # PATCH/PUT /reservas/1.json
  def update
    respond_to do |format|
      if @reserva.update(reserva_params)
        format.html { redirect_to @reserva, notice: 'Reserva atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @reserva }
      else
        format.html { render :edit }
        format.json { render json: @reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservas/1
  # DELETE /reservas/1.json
  def destroy
    @reserva.destroy
    respond_to do |format|
      format.html { redirect_to reservas_url, notice: 'Reserva deletada com sucesso.' }
      format.json { head :no_content }
    end
  end

  def reset 
    Reserva.delete_all
    respond_to do |format|
      format.html { redirect_to reservas_url, notice: 'Reservas resetadas com sucesso.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserva
      @reserva = Reserva.find(params[:id])
      @criador = User.find(@reserva.user_id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserva_params
      params.require(:reserva).permit(:modalidade, :naipe, :dia, :inicio, :termino, :odp, :ph)
    end

    
    # def verificaUsuario
    #   @user = current_user
    #   if @reserva.user_id == @user.id
    # rails generate model Quadra name:string ordem:integer atual:integer
    # rails g migration add_arrays_to_quadra esportes:string
    # 

end