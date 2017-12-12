class SkillsetsController < ApplicationController
    def new
        @character = Character.find(params[:character_id])
        @skillset = @character.build_skillset(params[:skillset])
    end
    def create
        @character = Character.find(params[:character_id])
        @skillset = @character.build_skillset(params[:skillset])
        #@skillset = @character.skillset.create(skillset_params) #may need to pluralize here, not sure
        redirect_to @character
    end
    def edit
        @character = Character.find(params[:character_id])
        @Skillset = @character.skillset
    end
    def update
        @character = Character.find(params[:character_id])
        @skillset = @character.skillset
         
        if @skillset.update_attributes(skillset_params)
            redirect_to @character
        else
            render 'edit'
        end
    end
    def destroy
        @character = Character.find(params[:character_id])
        @skillset = @charcter.skillset
        @skillset.destroy
        redirect_to characters_path
    end
    private
        def skillset_params
            params.require(:skillset).permit(:block, :heavyArmor, :oneHanded, :smithing, :twoHanded, :archery, :alchemy, :lightArmor, :lockPicking, :pickPocket, :sneak, :speech, :alteration, :conjuration, :destruction, :enchanting, :illusion, :restoration)
        end
end
