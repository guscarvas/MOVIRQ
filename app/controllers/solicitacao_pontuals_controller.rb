class SolicitacaoPontualsController < ApplicationController
  before_action :set_solicitacao_pontual, only: [:show, :edit, :update, :destroy]

  # GET /solicitacao_pontuals
  # GET /solicitacao_pontuals.json
  def index
    @solicitacao_pontuals = SolicitacaoPontual.all
  end

  # GET /solicitacao_pontuals/1
  # GET /solicitacao_pontuals/1.json
  def show
  end

  # GET /solicitacao_pontuals/new
  def new
    @solicitacao_pontual = SolicitacaoPontual.new
  end

  # GET /solicitacao_pontuals/1/edit
  def edit
  end

  # POST /solicitacao_pontuals
  # POST /solicitacao_pontuals.json
  def create
    @solicitacao_pontual = SolicitacaoPontual.new(solicitacao_pontual_params)

    respond_to do |format|
      if @solicitacao_pontual.save
        format.html { redirect_to @solicitacao_pontual, notice: 'Solicitacao pontual was successfully created.' }
        format.json { render :show, status: :created, location: @solicitacao_pontual }
      else
        format.html { render :new }
        format.json { render json: @solicitacao_pontual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitacao_pontuals/1
  # PATCH/PUT /solicitacao_pontuals/1.json
  def update
    respond_to do |format|
      if @solicitacao_pontual.update(solicitacao_pontual_params)
        format.html { redirect_to @solicitacao_pontual, notice: 'Solicitacao pontual was successfully updated.' }
        format.json { render :show, status: :ok, location: @solicitacao_pontual }
      else
        format.html { render :edit }
        format.json { render json: @solicitacao_pontual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitacao_pontuals/1
  # DELETE /solicitacao_pontuals/1.json
  def destroy
    @solicitacao_pontual.destroy
    respond_to do |format|
      format.html { redirect_to solicitacao_pontuals_url, notice: 'Solicitacao pontual was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitacao_pontual
      @solicitacao_pontual = SolicitacaoPontual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solicitacao_pontual_params
      params.require(:solicitacao_pontual).permit(:Solicitação)
    end
end
