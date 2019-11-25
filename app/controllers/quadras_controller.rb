class QuadrasController < ApplicationController
    def new
        @quadra = Quadra.new
    end
    def index
        @quadras = Quadra.all
    end
    def show
        @quadra = Quadra.find(params[:id])
    end
    
end
