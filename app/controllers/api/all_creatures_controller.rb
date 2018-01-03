require 'marvel_services'

class Api::AllCreaturesController < ApplicationController
    
    def index
        @creatures = Services::MarvelServices.get_creatures
        render json: @creatures
    end

    # def show    
    #     @creatures = Services::MarvelServices.get_creatures
    #     @creature = @creatures.sample
    #     # @id = @creature.id
    #     render json: @creature
    # end

end
