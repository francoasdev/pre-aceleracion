class CiudadesController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @ciudades = Ciudad.all
        render json: @ciudades
    end

    def create
        @ciudades = Ciudad.new(ciud_params)
        if @ciudades.save 
            render json: { success: true, iconos_id: @ciudades.id } 
        else 
            render json: { success: false } 
        end
    end

    def show
        @ciudades = @set_ciudades
        render json: @ciudades
    end

    def update
        @ciudades = @set_ciudades
        if @ciudades.update_attributes(ciud_params)
            render json: { sucess: true }
        else
            render json: { sucess: false}    
        end
    end

    def destroy
        @ciudades = @set_ciudades
        if ciudades.destroy
            render json: { sucess: true }
        else
            render json: { sucess: false}    
        end
    end

    private

    def set_ciudades
        @set_ciudades = Ciudad.find(params[:id])
    end

    def ciud_params
        params.permit(:denominacion, :habitantes, :superficie)
    end
end
