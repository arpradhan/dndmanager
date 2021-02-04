PROFICIENCY_TYPES = [["Weapon", "weapon"], ["Armor", "armor"], ["Tool", "tool"], ["Skill", "skill"]]

class ProficienciesController < ApplicationController
    def index
        @proficiencies = Proficiency.all
    end

    def new
        @proficiency = Proficiency.new
        @proficiency_types = PROFICIENCY_TYPES
    end

    def create
        @proficiency = Proficiency.new(proficiency_params)

        if @proficiency.save
            redirect_to action: "index"
        else
            render :new
        end
    end

    def edit
        @proficiency = Proficiency.find(params[:id])
        @proficiency_types = PROFICIENCY_TYPES
    end
    
    def update
        @proficiency = Proficiency.find(params[:id])
        if @proficiency.update(proficiency_params)
            redirect_to action: "index"
        else
            render :edit
        end
    end

    private
    def proficiency_params
        params.require(:proficiency).permit(:key, :name, :proficiency_type)
    end
end
