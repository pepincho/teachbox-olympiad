class SearchesController < ApplicationController	
  def index
    if params[:search]
  	 @openResults = OpenGroup.find(:all, :conditions => ['lower(name) LIKE ?', "%#{params[:search]}%".downcase])
     @closedResults = ClosedGroup.find(:all, :conditions => ['lower(name) LIKE ?', "%#{params[:search]}%".downcase])
     @courseResults = Course.find(:all, :conditions => ['lower(name) LIKE ?', "%#{params[:search]}%".downcase])

    # @openDesResults = OpenGroup.find(:all, :conditions => ['description LIKE ?', "%#{params[:search]}%"])
    # @closedDesResults = ClosedGroup.find(:all, :conditions => ['decription LIKE ?', "%#{params[:search]}%"])
    # @courseDesResults = Course.find(:all, :conditions => ['description LIKE ?', "%#{params[:search]}%"])     
    else
     @openResults = OpenGroup.find(:all)
     @closedResults = ClosedGroup.find(:all)
     @courseResults = Course.find(:all)

    end
  end 
end