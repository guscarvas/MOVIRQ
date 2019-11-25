class TabelaController < ApplicationController
    before_action :authorize
    def index
        @quadras = Quadra.all
        puts @quadras.take.seg
    end
end
