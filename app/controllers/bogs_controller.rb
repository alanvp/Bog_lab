 # We need to create a controller
 # PlanesController for planes
 
class BogsController < ApplicationController
    
    def index
        # render text: "Hello, pilots!"
        @bogs = Creature.all
        render :index
    end

    def new
        render :new
    end
   
	def create
		bog = params.require(:bog).permit(:name, :description)
	    new_bog = Creature.create(bog)
	    redirect_to "/bogs/#{new_bog.id}"  
    end

    def show
    	id = params[:id]
    	@bog = Creature.find(id)
    	render :show
    end

    def edit
        id = params[:id]
        @bog = Creature.find(id)
        render :edit
    end

    def update
	    id = params[:id]
        bog = Creature.find(id)        
        updated_info = params.require(:bog).permit(:name, :description)
        bog.update_attributes(updated_info)
        redirect_to "/bogs/#{bog.id}"
    end

end