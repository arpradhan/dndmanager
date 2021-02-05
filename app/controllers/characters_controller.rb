class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
    @damage_resistances = []
    @saving_throw_advantages = []

    if @character.race != nil
      @character.race.race_traits.each do |race_trait|
        if race_trait.trait != nil
          trait = JSON.parse(race_trait.trait)
          resistances = trait["damage_resistances"]
          saving_throws = trait["saving_throw_advantages"]
          if resistances.is_a?(Array)
            @damage_resistances.concat(resistances)
          end
          if saving_throws.is_a?(Array)
            @saving_throw_advantages.concat(saving_throws)
          end
        end
      end
    end
  end

  def new
    @character = Character.new
    @races = Race.all
  end

  def create
    @character = Character.new(character_params)
    
    if @character.save
      redirect_to @character
    else
      render :new
    end
  end

  def edit
    @character = Character.find(params[:id])
    @races = Race.all
  end

  def update
    @character = Character.find(params[:id])
    @races = Race.all
    if @character.update(character_params)
      redirect_to @character
    else
      render :edit
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy

    redirect_to root_path
  end

  private
  def character_params
    params.require(:character).permit(
      :name, 
      :race_id,
      :subrace_id)
  end
end
