class SubracesController < ApplicationController
    def create
        @race = Race.find(params[:race_id])
        @subrace = @race.subraces.create(subrace_params)
        redirect_to race_path(@race)
    end

    def edit
        @race = Race.find(params[:race_id])
        @subrace = Subrace.find(params[:id])
    end

    def update
        @subrace = Subrace.find(params[:id])

        if @subrace.update(subrace_params)
            redirect_to race_subrace_path(@subrace)
        else
            render :edit
        end
    end

    def show
        @subrace = Subrace.find(params[:id])
    end

    private
    def subrace_params
        params.require(:subrace).permit(:key, :name, :asi_str, :asi_dex, :asi_con, :asi_int, :asi_wis, :asi_cha)
    end
end
