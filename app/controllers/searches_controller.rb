class SearchesController < ApplicationController	
  def index
    if params[:search]
  	 @openResults = OpenGroup.find(:all, :conditions => ['lower(name) LIKE ?', "%#{params[:search]}%".downcase])
     @closedResults = ClosedGroup.find(:all, :conditions => ['lower(name) LIKE ?', "%#{params[:search]}%".downcase])
     @courseResults = Course.find(:all, :conditions => ['lower(name) LIKE ?', "%#{params[:search]}%".downcase])

     @openDesResults = OpenGroup.find(:all, :conditions => ['lower(description) LIKE ?', "%#{params[:search]}%".downcase])
     @courseDesResults = Course.find(:all, :conditions => ['lower(description) LIKE ?', "%#{params[:search]}%".downcase])
     @closedDesResults = ClosedGroup.find(:all, :conditions => ['lower(decription) LIKE ?', "%#{params[:search]}%".downcase])

        else

     @openResults = OpenGroup.find(:all)
     @closedResults = ClosedGroup.find(:all)
     @courseResults = Course.find(:all)
     @openDesResults = OpenGroup.find(:all)
     @courseDesResults = Course.find(:all)
     @closedDesResults = ClosedGroup.find(:all)

    end
  end 
end