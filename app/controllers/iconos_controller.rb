class IconosController < ApplicationController
    #before_action :authenticate_user!

    def index
        @Iconos = Icono.all
        render json: @Iconos
    end

    def create
        @set_iconos = Icono.new(iconos_params)
        if @set_iconos.save 
            render json: { success: true, iconos_id: @Iconos.id } 
        else 
            render json: { success: false } 
        end
    end

    def show
        render json: @set_iconos
    end

    def edit
        if @set_iconos.edit(iconos_params)
            render json: { sucess: true }
        else
            render json: { sucess: false}    
        end
    end

    def destroy

        if @set_iconos.destroy
            render json: { sucess: true }
        else
            render json: { sucess: false}    
        end
    end

    private

    def set_iconos
        @set_iconos = Icono.find(params[:id])
    end

    def iconos_params
        params.require(:iconos).permit(:denominacion, :altura, :historia)
    end

end
