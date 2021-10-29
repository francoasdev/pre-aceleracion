class ContinentesController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @continentes = Continente.all
        render json: @continentes
    end
    
    def new
        @continentes = Continente.new
    end

    def create
        @continentes = Continente.new(cont_params)
        if @continentes.save 
            render json: @continentes, status: :created
        else
            render json: { sucess: false }
        end
    end

    def show
        render json: @set_continentes
    end

    def update
        @continentes = @set_continentes
        if @continentes.update_attributes(cont_params)
            render json: { sucess: true }
        else
            render json: { sucess: false}    
        end
    end

    def destroy
        @continentes = @set_continentes
        if @continentes.destroy
            render json: { sucess: true }
        else
            render json: { sucess: false}    
        end
    end

    private

    def set_cont
        @set_continentes = Continente.find(params[:id])
    end

    def cont_params
        params.permit(:denominacion)
    end
end
