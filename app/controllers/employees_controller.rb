class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end

    def show
        grab_ee
    end


    def new
        @ee = Employee.new
    end

    def create
        @ee = Employee.new(ee_params)
        @ee.save
        redirect_to employee_path(@ee)
    end

    def edit
        grab_ee
    end

    def update
        grab_ee
        @ee.update(ee_params)
        redirect_to employee_path(@ee)
    end

    private 

    def grab_ee
        @ee = Employee.find(params[:id])
    end

    def ee_params
        params.require(:employee).permit(:first_name,:last_name,:alias,:title,:office,:img_url,:dog_id)
    end
end
