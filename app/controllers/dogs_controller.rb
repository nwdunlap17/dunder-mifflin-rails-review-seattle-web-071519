class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end

    def show
        grab_dog
        @employees = @dog.employees
    end


    private

    def grab_dog
        @dog = Dog.find(params[:id])
    end
end
