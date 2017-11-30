class SkillsetsController < ApplicationController
    def create
        @character = Character.find(params[:character_id])
        @skillset = @character.skillset.create(skillset_params) #may need to pluralize here, not sure
        redirect_to character_path(@character)
    end
    private
        def skillset_params
            params.require(:skillset).permit(:block, :heavyArmor, :oneHanded, :smithing, :twoHanded, :archery, :alchemy, :lightArmor, :lockPicking, :pickPocket, :sneak, :speech, :alteration, :conjuration, :destruction, :enchanting, :illusion, :restoration)
        end
end
