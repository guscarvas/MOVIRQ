class AceitaReservasController < ApplicationController

    def index
        @reservas = Reserva.where(dia: @dia)
    end
    # def index
    #     if params[:reservas]
    #       @reservas = Reserva.where(dia: params[:reservas][:dia])
    #     else
    #       @reservas = Reserva.all
    #     end 
    #   end
    def show
        @quadra = {101 => 'Quadra 1', 102 => 'Quadra 2', 103=> 'Quadra 3'}
        @dias = {1 => 'Segunda',2 => 'Terça',3 => 'Quarta', 4 => 'Quinta', 5 => 'Sexta'}

        puts 5/2
        @resposta1 = @quadra[params[:id].to_i / 100]
        @resposta2 = @dias[params[:id].to_i%10]
        @reservas = Reserva.where(dia: @resposta2)
    end


    
    def set_parametros
        @quadra = params[:post][:quadra]
        @dia = params[:post][:dia]
        @link = '/aceitarReservas/' + @quadra.to_s + @dia.to_s
        redirect_to @link
        # @quadra = params[:post][:quadra]
        # @dia = params[:post][:dia]
        # puts "AAAAAAAAAAAAAA"
        # puts @dia
        # @reservas = Reserva.where(dia: @dia)
        # respond_to do |format|
        #     # format.js { render :js => "replaceReservas('<%= j render 'reserva', reservas: @reservas %>')" }
        #     format.js { render :js => "myFunction()" }
        # end
    end
end
