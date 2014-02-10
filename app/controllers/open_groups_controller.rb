class OpenGroupsController < ApplicationController
  # GET /open_groups
  # GET /open_groups.json
  def index
    @open_groups = OpenGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @open_groups }
    end
  end

  # GET /open_groups/1
  # GET /open_groups/1.json
  def show
    @open_group = OpenGroup.find(params[:id])
    # respond_to do |format|
    #   format.html # show.html.erb
    #   format.json { render json: @open_group }
    # end
   @users = UserOpenGroup.where("open_group_id = ?", params[:id]) 
   @usersname = Array.new 
   		@users.each do |user| 
      		@usersname.push(User.find(user.user_id).name) 
        		if current_user.present?
        			if user.user_id == current_user.id 
               			@pesho = true
               			break
            		else
               			@pesho = false 
            		end
        		end
      	end 

	@neshto = OpenGroupPost.where("open_group_id = ?", params[:id]) 
      
    @likes = LikesOpenGroup.where("open_group_id = ?", params[:id]) 
    @likes.each do |user| 
        if current_user.present?
            if user.user_id == current_user.id 
               @ivan = true
               break
            else
               @ivan = false 
            end
        end
    end

  end

  def new
    @open_group = OpenGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @open_group }
    end
  end

  # GET /open_groups/1/edit
  def edit
    @open_group = OpenGroup.find(params[:id])
  end

  # POST /open_groups
  # POST /open_groups.json
  def create
    @open_group = OpenGroup.new(params[:open_group])

    respond_to do |format|
      if @open_group.save
         user_join = UserOpenGroup.new
         user_join.user_id = current_user.id
         user_join.open_group_id = @open_group.id
         user_join.save
        format.html { redirect_to @open_group, notice: 'Open group was successfully created.' }
        format.json { render json: @open_group, status: :created, location: @open_group }
      else
        format.html { render action: "new" }
        format.json { render json: @open_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /open_groups/1
  # PUT /open_groups/1.json
  def update
    @open_group = OpenGroup.find(params[:id])

    respond_to do |format|
      if @open_group.update_attributes(params[:open_group])
        format.html { redirect_to @open_group, notice: 'Open group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @open_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /open_groups/1
  # DELETE /open_groups/1.json
  def destroy
    @open_group = OpenGroup.find(params[:id])
    @open_group.destroy

    respond_to do |format|
      format.html { redirect_to open_groups_url }
      format.json { head :no_content }
    end
  end

  def join
      # join_params = params[:user_open_group]
      user = UserOpenGroup.new
      user.user_id = current_user.id
      user.open_group_id = params[:id]
      OpenGroup.where(:id => user.open_group_id).update_all("counter = counter + 1")
      user.save

    respond_to do |format|
    	format.html { redirect_to '/open_groups/'+user.open_group_id.to_s }
      	# format.json { head :no_content }
    end
  end  

  def like
      # join_params = params[:user_open_group]
     
    like = LikesOpenGroup.new
    like.user_id = current_user.id
    like.open_group_id = params[:id]
    like.save

    respond_to do |format|
    	format.html { redirect_to :back }
    	# format.json { head :no_content }
  	end
  end
  
  def like_post
    like_post = LikesOpenGroupPost.new
    like_post.user_id = current_user.id
    like_post.open_group_post_id = params[:id]
    like_post.like_attribute = params[:value]
    like_post.save

    respond_to do |format|
    	format.html { redirect_to :back }
    	# format.json { head :no_content }
    end
  end

  def like_comment
    like_comment = LikesCommentsOpenGroupPost.new
    like_comment.user_id = current_user.id
    like_comment.comments_open_group_post_id = params[:id]
    like_comment.save

    respond_to do |format|
      format.html { redirect_to :back }
      # format.json { head :no_content }
    end
  end

end
