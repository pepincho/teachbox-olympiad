class ClosedGroupsController < ApplicationController
  # GET /closed_groups
  # GET /closed_groups.json
  def index
    @closed_groups = ClosedGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @closed_groups }
    end
  end

  # GET /closed_groups/1
  # GET /closed_groups/1.json
  def show
    @closed_group = ClosedGroup.find(params[:id])
    @closed_group_admin = User.find(@closed_group.admin_id).name


    if @closed_group.admin_id == current_user.id
      @isAdmin1 = true 
    else
      @isAdmin1 = false
    end
    # respond_to do |format|
    #   format.html # show.html.erb
    #   format.json { render json: @closed_group }
    

    @users1 = UserClosedGroup.where("closed_group_id = ?", params[:id]) 
    @usersname1 = Array.new 
      @users1.each do |user| 
        @usersname1.push(User.find(user.user_id).name) 
          if current_user.present?
              if user.user_id == current_user.id 
                @pesho2 = true
                break
              else
                @pesho2 = false 
              end
          end
      end 

    @users = Request.where("closed_group_id = ?", params[:id]) 
    @usersname = Array.new 
      @users.each do |user| 
        @usersname.push(User.find(user.user_id).name) 
          if current_user.present?
              if user.user_id == current_user.id 
                @isRequested = true
                break
              else
                @isRequested = false 
              end
          end
      end 

    @neshto = ClosedGroupPost.where("closed_group_id = ?", params[:id]) 
      
    @likes = LikesClosedGroup.where("closed_group_id = ?", params[:id]) 
    @likes.each do |user| 
        if current_user.present?
            if user.user_id == current_user.id 
              @ivan2 = true
              break
            else
              @ivan2 = false 
            end
        end
    end
end

  # GET /closed_groups/new
  # GET /closed_groups/new.json
  def new
    @closed_group = ClosedGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @closed_group }
    end
  end


  # POST /closed_groups
  # POST /closed_groups.json
  def create
    @closed_group = ClosedGroup.new(params[:closed_group])
    @closed_group.admin_id = current_user.id

    respond_to do |format|
      if @closed_group.save
         @closed_group.save
         user_join = UserClosedGroup.new
         user_join.user_id = current_user.id
         user_join.closed_group_id = @closed_group.id
         user_join.save

         user_like = LikesClosedGroup.new
         user_like.user_id = current_user.id
         user_like.closed_group_id = @closed_group.id
         user_like.save

        format.html { redirect_to @closed_group, notice: 'Closed group was successfully created.' }
        format.json { render json: @closed_group, status: :created, location: @closed_group }
      else
        format.html { render action: "new" }
        format.json { render json: @closed_group.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /closed_groups/1
  # DELETE /closed_groups/1.json
  def destroy
    @closed_group = ClosedGroup.find(params[:id])
    @closed_group.destroy

    respond_to do |format|
      format.html { redirect_to closed_groups_url }
      format.json { head :no_content }
    end
  end

  def like
      # join_params = params[:user_open_group]
      like = LikesClosedGroup.new
      like.user_id = current_user.id
      like.closed_group_id = params[:id]
      like.save

      respond_to do |format|
        format.html { redirect_to :back }
        # format.json { head :no_content }
      end
   end

   def requested
      req = Request.new
      req.user_id = current_user.id
      req.closed_group_id = params[:id]
      req.save

      respond_to do |format|
        format.html { redirect_to :back }
        # format.json { head :no_content }
      end
   end
  
   def like_post
      like_post = LikesClosedGroupPost.new
      like_post.user_id = current_user.id
      like_post.closed_group_post_id = params[:id]
      like_post.like_attribute = params[:value]
      like_post.save

      respond_to do |format|
        format.html { redirect_to :back }
        # format.json { head :no_content }
      end
   end

   def like_comment
    like_comment = LikesCommentsClosedGroupPost.new
    like_comment.user_id = current_user.id
    like_comment.comments_closed_group_post_id = params[:id]
    like_comment.save

    respond_to do |format|
      format.html { redirect_to :back }
      # format.json { head :no_content }
    end
  end

  def leave

    @leave_group = UserClosedGroup.where("user_id = ? AND closed_group_id = ?", current_user.id,  params[:id])
    @leave_group.each do |lol| 
      lol.destroy
    end

    @leave_group = LikesClosedGroup.where("user_id = ? AND closed_group_id = ?", current_user.id,  params[:id])
    @leave_group.each do |lol| 
      lol.destroy
    end

    respond_to do |format|
      format.html { redirect_to :back }
      # format.json { head :no_content }
    end
  end
   
end
