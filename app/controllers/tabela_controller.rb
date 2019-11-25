class TabelaController < ApplicationController
    def index
        @quadras = Quadra.all
        puts @quadras.take.seg
    end
end
