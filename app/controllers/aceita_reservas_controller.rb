class AceitaReservasController < ApplicationController

    def index
        @reservas = Reserva.all
    end
    # def index
    #     if params[:reservas]
    #       @reservas = Reserva.where(dia: params[:reservas][:dia])
    #     else
    #       @reservas = Reserva.all
    #     end 
    #   end
    def show
        @quadraHash = {101 => 'Quadra 1', 102 => 'Quadra 2', 103=> 'Quadra 3', 104 => 'Quadra 4', 105 => 'Quadra 5', 106 => 'Quadra 6', 107 => 'Quadra 7', 108 => 'Quadra 8', 109 => 'Quadra 9 A', 110 => 'Quadra 9 B', 111 => 'Quadra 10 A', 112 => 'Quadra 10 B', 113 => 'Velódromo A', 114 => 'Velódromo B', 115 => 'Módulo 1', 116 => 'Módulo 2', 117 => 'Módulo 3', 118 => 'Módulo 4'  }
        @diasHash = {1 => 'Segunda',2 => 'Terça',3 => 'Quarta', 4 => 'Quinta', 5 => 'Sexta'}

        
        @resposta1 = @quadraHash[params[:id].to_i / 10]
        
        @resposta2 = @diasHash[params[:id].to_i%10]
        @quadra = Quadra.find_by name: @resposta1
        puts "AAAAAAAAAAAAAA"
        puts @quadra.esportes
        lista_undesirables = []
        @reservas = Reserva.where(dia: @resposta2)
        @reservas.each do |reserva|
            if @quadra.esportes.include? reserva.modalidade
            
            else
                lista_undesirables.push(reserva.id)
            end
        @reservas = @reservas.where.not(id: lista_undesirables)

            
        end
        
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
