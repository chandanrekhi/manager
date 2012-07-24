class EmployeesController < ApplicationController
  def index
  	@employees = Employee.all(:order => "created_at DESC")

  	respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employees }
    end
  end

  def create
  	@employee = Employee.create(:name => params[:name])

    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
        format.json { render json: @employee, status: :created, location: @employee }
      else
        flash[:notice] = "Employee failed to save."  
        format.html { redirect_to employees_path }  
      end
   end
  end
end
