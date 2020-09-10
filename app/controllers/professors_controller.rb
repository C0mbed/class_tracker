class ProfessorsController < ApplicationController
    def show
        @professor = Professor.find(params[:id])
    end

    def index
        @professors = Professor.all
    end

    def new
    end

    def create
    end

    def edit
    end
    
    def update
    end
end