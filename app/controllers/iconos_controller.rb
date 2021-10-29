class IconosController < ApplicationController
    #before_action :authenticate_user!
    skip_before_action :verify_authenticity_token

    def index
        @Iconos = Icono.all
        render json: @Iconos
    end


    def create
        @iconos = Icono.new(iconos_params)
        if @iconos.save 
            render json: { success: true, iconos_id: @Iconos.id } 
        else 
            render json: { success: false } 
        end
    end

    def show    
        @iconos = set_iconos
        render json: @iconos
    end

    def update
        @iconos = @set_iconos
        if @iconos.update_attributes(iconos_params)
            render json: { sucess: true }
        else
            render json: { sucess: false}    
        end
    end

    def destroy
        @iconos = @set_iconos
        if @iconos.destroy
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
        params.permit(:denominacion, :altura, :historia)
    end

end
