class RacesController < ApplicationController
    def index
        @races = Race.all
    end
    def new
        @race = Race.new
    end
    
    def create
        @race = Race.new(race_params)
        
        if @race.save
            redirect_to @race
        else
            render 'new'
        end
    end
    
    def show
        @race = Race.find(params[:id])
    end
    
    def edit 
        @race = Race.find(params[:id])
    end
    
    def update
        @race = Race.find(params[:id])
        if @race.update(race_params)
            redirect_to @race
        else
            render 'edit'
        end
    end
    
    def destroy
        @race = Race.find(params[:id])
        @race.destroy
        
        redirect_to races_path
    end
    
end

private 
    def race_params
        params.require(:race).permit(:name, :block, :heavyArmor, :oneHanded, :smithing, :twoHanded, :archery, :alchemy, :lightArmor, :lockPicking, :pickPocket, :sneak, :speech, :alteration, :conjuration, :destruction, :enchanting, :illusion, :restoration)
    end