class CharactersController < ApplicationController
    def index
        @characters = Character.all
    end
    
    def new
        @character = Character.new
    end
    
    def create
        @character = Character.new(character_params)
        
        if @character.save
            @race = Race.find_by_name(@character.race)
            @character.skillset = Skillset.create({:block => @race.block, :heavyArmor => @race.heavyArmor, :oneHanded => @race.oneHanded, :smithing => @race.smithing, :twoHanded => @race.twoHanded, :archery => @race.archery, :alchemy => @race.alchemy, :lightArmor => @race.lightArmor, :lockPicking => @race.lockPicking, :pickPocket => @race.pickPocket, :sneak => @race.sneak, :speech => @race.speech, :alteration => @race.alteration, :conjuration => @race.conjuration, :destruction => @race.destruction, :enchanting => @race.enchanting, :illusion => @race.illusion, :restoration => @race.illusion})
            #redirect_to edit_character_skillset_path(@character, @character.skillset) %>
            redirect_to @character
            #redirect_to characters_path
        else
            render 'new'
        end
    end
    
    def show
        @character = Character.find(params[:id])
        
        @race = Race.find_by_name(@character.race)
    end
    
    def edit 
        @character = Character.find(params[:id])
    end
    
    def update
        @character = Character.find(params[:id])
        if @character.update(character_params)
            redirect_to @character
        else
            render 'edit'
        end
    end
    
    def destroy
        @character = Character.find(params[:id])
        @character.destroy
        
        redirect_to @character
    end
end

private 
    def character_params
        params.require(:character).permit(:name, :gender, :race)
    end
