class CiudadesController < ApplicationController
    def index
        @ciudades = Ciudad.all
        render json: @ciudades
    end

    def create
        @set_ciudades = Ciudad.new(ciud_params)
        if @set_ciudades.save 
            render json: { success: true, iconos_id: @ciudades.id } 
        else 
            render json: { success: false } 
        end
    end

    def show
        render json: @set_ciudades
    end

    def edit
        if @set_ciudades.edit(ciud_params)
            render json: { sucess: true }
        else
            render json: { sucess: false}    
        end
    end

    def destroy

        if @set_ciudades.destroy
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
        params.require(:ciudades).permit(:denominacion, :habitantes, :superficie)
    end
end
