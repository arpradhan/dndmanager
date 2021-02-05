class RacesController < ApplicationController
    def index
        @races = Race.all
    end

    def show
        @race = Race.find(params[:id])
        @languages = Language.all
        @race_traits = RaceTrait.all
    end

    def new
        @race = Race.new
    end

    def create
        @race = Race.new(race_params)

        if @race.save
            redirect_to @race
        else
            render :new
        end
    end

    def edit
        @race = Race.find(params[:id])
    end

    def update
        @race = Race.find(params[:id])
        
        if @race.update(race_params)
            redirect_to @race
        else
            render :edit
        end
    end

    def languages
        @race = Race.find(params[:id])
        languages = Language.where(id: params[:race][:language_ids])
        @race.update_languages(languages)
        redirect_to @race
    end

    def race_trait
        @race = Race.find(params[:id])
        race_trait = RaceTrait.find(params[:race][:race_trait_id])
        race_trait.race = @race
        race_trait.save
        redirect_to @race
    end


    private
    def race_params
        params.require(:race).permit(
            :key, 
            :name, 
            :size, 
            :speed, 
            :asi_str, 
            :asi_dex, 
            :asi_con, 
            :asi_int, 
            :asi_wis, 
            :asi_cha)
    end
end
