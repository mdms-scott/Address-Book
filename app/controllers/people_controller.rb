class PeopleController < ApplicationController

  def index
    @people = Person.all
  end
  
  def new
    @person = Person.new
  end
  
  def create
    @person = Person.new(params[:person])
    if @person.save
      flash[:notice] = "Added person successfully"
      redirect_to people_path
    else
      render :action => "new"
    end
  end
  
  def update
    @person = Person.find(params[:id])
    if @person.update_attributes(params[:person])
      flash[:notice] = "Updated #{@person.first_name} successfully"
      redirect_to people_path
    else
      render :action => "new"
    end
  end
  
  def edit
    @person = Person.find(params[:id])
  end
  
  def destroy
    Person.find(params[:id]).destroy
    flash[:notice] = "Deleted person successfully"
    redirect_to people_path
  end

end
