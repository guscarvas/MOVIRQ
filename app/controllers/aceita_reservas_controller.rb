class AceitaReservasController < ApplicationController
    before_action :set_coisas, only: [:new, :create]
    def index
        redirect_to '/aceitarReservas/1011'
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

        @parametroQuadra = params[:id].to_i/10
        @resposta1 = @quadraHash[params[:id].to_i / 10]
        puts @diasHash[params[:id].to_i%10]
        @resposta2 = @diasHash[params[:id].to_i%10]
        @quadra = Quadra.find_by name: @resposta1
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

    def new
        @reserva_aceitum = ReservaAceitum.new
        @url = '/aprovar/' + params[:id].to_s
        @reserva = Reserva.find(params[:id].to_i/1000)
        @quadraHash = {101 => 'Quadra 1', 102 => 'Quadra 2', 103=> 'Quadra 3', 104 => 'Quadra 4', 105 => 'Quadra 5', 106 => 'Quadra 6', 107 => 'Quadra 7', 108 => 'Quadra 8', 109 => 'Quadra 9 A', 110 => 'Quadra 9 B', 111 => 'Quadra 10 A', 112 => 'Quadra 10 B', 113 => 'Velódromo A', 114 => 'Velódromo B', 115 => 'Módulo 1', 116 => 'Módulo 2', 117 => 'Módulo 3', 118 => 'Módulo 4'  }
        @quadra =  @quadraHash[params[:id].to_i / 10]
    end

    def create
        @reserva = Reserva.find(params[:id].to_i/1000)
        @quadraHash = {101 => 'Quadra 1', 102 => 'Quadra 2', 103=> 'Quadra 3', 104 => 'Quadra 4', 105 => 'Quadra 5', 106 => 'Quadra 6', 107 => 'Quadra 7', 108 => 'Quadra 8', 109 => 'Quadra 9 A', 110 => 'Quadra 9 B', 111 => 'Quadra 10 A', 112 => 'Quadra 10 B', 113 => 'Velódromo A', 114 => 'Velódromo B', 115 => 'Módulo 1', 116 => 'Módulo 2', 117 => 'Módulo 3', 118 => 'Módulo 4'  }
        @quadra =  @quadraHash[params[:id].to_i%1000]
        @quadraParaMudanca = Quadra.where(name: @quadra).take
        puts @quadraParaMudanca.name
        puts 'AAAAAAAAAAAAAAAAA'
        @horaHash = {'17:00'=> 0, '18:00'=> 1, '18:30'=> 2, '19:00'=> 3, '19:30'=> 4, '20:00'=> 5, '20:30'=> 6, '21:00'=> 7}
        @reserva_aceitum = ReservaAceitum.new()
        @reserva_aceitum.dono = @reserva.criador
        @reserva_aceitum.esporte = @reserva.modalidade
        @reserva_aceitum.naipe = @reserva.naipe
        @reserva_aceitum.quadra = @quadraParaMudanca.name
        @reserva_aceitum.inicio = params[:post][:inicio]
        @reserva_aceitum.fim = params[:post][:fim]
        @reserva.status = 1
        resultado = @horaHash[@reserva_aceitum.inicio]
        if @reserva.dia == 'Segunda'
            @quadraParaMudanca.seg[resultado] = @reserva_aceitum.dono+'-'+@reserva_aceitum.esporte[0]+@reserva_aceitum.naipe[0]
            @quadraParaMudanca.seg[resultado+1] = @reserva_aceitum.dono+'-'+@reserva_aceitum.esporte[0]+@reserva_aceitum.naipe[0]
            puts @quadraParaMudanca.seg
            puts 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
        elsif @reserva.dia == 'Terça'
            puts 'Deu terca mesmo'
            @quadraParaMudanca.ter[resultado] = @reserva_aceitum.dono+'-'+@reserva_aceitum.esporte[0]+@reserva_aceitum.naipe[0]
            @quadraParaMudanca.ter[resultado+1] = @reserva_aceitum.dono+'-'+@reserva_aceitum.esporte[0]+@reserva_aceitum.naipe[0]
            @quadraParaMudanca.ter[resultado+2] = @reserva_aceitum.dono+'-'+@reserva_aceitum.esporte[0]+@reserva_aceitum.naipe[0]
        elsif @reserva.dia == 'Quarta'
            puts 'Deu quarta mesmo'
            @quadraParaMudanca.qua[resultado] = @reserva_aceitum.dono+'-'+@reserva_aceitum.esporte[0]+@reserva_aceitum.naipe[0]
            @quadraParaMudanca.qua[resultado+1] = @reserva_aceitum.dono+'-'+@reserva_aceitum.esporte[0]+@reserva_aceitum.naipe[0]
            @quadraParaMudanca.qua[resultado+2] = @reserva_aceitum.dono+'-'+@reserva_aceitum.esporte[0]+@reserva_aceitum.naipe[0]
        elsif @reserva.dia == 'Quinta'
            @quadraParaMudanca.qui[resultado] = @reserva_aceitum.dono+'-'+@reserva_aceitum.esporte[0]+@reserva_aceitum.naipe[0]
            @quadraParaMudanca.qui[resultado+1] = @reserva_aceitum.dono+'-'+@reserva_aceitum.esporte[0]+@reserva_aceitum.naipe[0]
            @quadraParaMudanca.qui[resultado+2] = @reserva_aceitum.dono+'-'+@reserva_aceitum.esporte[0]+@reserva_aceitum.naipe[0]
        elsif @reserva.dia == 'Sexta'
            @quadraParaMudanca.sex[resultado] = @reserva_aceitum.dono+'-'+@reserva_aceitum.esporte[0]+@reserva_aceitum.naipe[0]
            @quadraParaMudanca.sex[resultado+1] = @reserva_aceitum.dono+'-'+@reserva_aceitum.esporte[0]+@reserva_aceitum.naipe[0]
            @quadraParaMudanca.sex[resultado+2] = @reserva_aceitum.dono+'-'+@reserva_aceitum.esporte[0]+@reserva_aceitum.naipe[0]
        end
        @quadraParaMudanca.save
        @reserva.save
        respond_to do |format|
          if @reserva_aceitum.save
            format.html { redirect_to '/aceitarReservas', notice: 'Reserva aceitum was successfully created.' }
            format.json { render :show, status: :created, location: @reserva_aceitum }
          else
            format.html { render :new }
            format.json { render json: @reserva_aceitum.errors, status: :unprocessable_entity }
          end
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

    def set_coisas
        @reserva = Reserva.find(params[:id].to_i/1000)
        @quadraHash = {101 => 'Quadra 1', 102 => 'Quadra 2', 103=> 'Quadra 3', 104 => 'Quadra 4', 105 => 'Quadra 5', 106 => 'Quadra 6', 107 => 'Quadra 7', 108 => 'Quadra 8', 109 => 'Quadra 9 A', 110 => 'Quadra 9 B', 111 => 'Quadra 10 A', 112 => 'Quadra 10 B', 113 => 'Velódromo A', 114 => 'Velódromo B', 115 => 'Módulo 1', 116 => 'Módulo 2', 117 => 'Módulo 3', 118 => 'Módulo 4'  }
        @quadra =  @quadraHash[params[:id].to_i / 10]
    end
end
