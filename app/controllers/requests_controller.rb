class RequestsController < ApplicationController	
  def index
  	
  end 

  def accept
  	  user = UserClosedGroup.new
      user.user_id = params[:user_id]
      user.closed_group_id = params[:id]
      ClosedGroup.where(:id => user.closed_group_id).update_all("counter = counter + 1")
      user.save

      Request.find(params[:del]).destroy
      respond_to do |format|
         	format.html { redirect_to :back }
        	# format.json { head :no_content }
      end
  end

  def decline
  		Request.find(params[:del]).destroy

  		      respond_to do |format|
         	format.html { redirect_to :back }
        	# format.json { head :no_content }
      end
  end

end