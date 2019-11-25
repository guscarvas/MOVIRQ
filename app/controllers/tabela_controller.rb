class TabelaController < ApplicationController
    def index
        @quadras = Quadra.all
    end
end
