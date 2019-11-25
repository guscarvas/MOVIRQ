class TabelaController < ApplicationController
    before_action :authorize
    def index
        @quadras = Quadra.all
    end
end
