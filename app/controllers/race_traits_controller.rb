class RaceTraitsController < ApplicationController
    def index
        @race_traits = RaceTrait.all
    end

    def show
        @race_trait = RaceTrait.find(params[:id])
    end

    def new
        @race_trait = RaceTrait.new
    end

    def create
        @race_trait = RaceTrait.new(race_trait_params)
        if @race_trait.save
            redirect_to @race_trait
        else
            render :new
        end
    end

    def edit
        @race_trait = RaceTrait.find(params[:id])
    end

    def update
        @race_trait = RaceTrait.find(params[:id])
        if @race_trait.update(race_trait_params)
            redirect_to @race_trait
        else
            render :edit
        end
    end

    private
    def race_trait_params
        params.require(:race_trait).permit(
            :key,
            :name,
            :description,
            :trait
        )
    end

end
