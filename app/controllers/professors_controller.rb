class ProfessorsController < ApplicationController
    def show
        @professor = Professor.find(params[:id])
    end

    def index
        @professors = Professor.all
    end

    def new
        @professor = Professor.new
    end

    def create
        @professor = Professor.create(professor_params)
        redirect_to professor_path(@professor)
    end
    
    def edit
        @professor = Professor.find(params[:id])
    end
    
    def update
        @professor = Professor.find(params[:id])
        @professor.update(professor_params)
        redirect_to professor_path(@professor)
    end

    private

    def professor_params
        params.require(:professor).permit(:name, :department, :tenure)
    end
end