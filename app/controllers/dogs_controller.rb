class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end

    def sorted_index
        @dogs = Dog.all
        @dogs = @dogs.sort do |a,b|
            b.employees.length <=> a.employees.length
        end
        render :index
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
