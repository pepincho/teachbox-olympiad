class CoursesController < ApplicationController
  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courses }
    end
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @course = Course.find(params[:id])
    @course_admin = User.find(@course.user_id).name
    # respond_to do |format|
    #   format.html # show.html.erb
    #   format.json { render json: @closed_group }
    @users = UserCourse.where("course_id = ?", params[:id]) 
    @usersname = Array.new 
      @users.each do |user| 
        @usersname.push(User.find(user.user_id).name) 
          if current_user.present?
              if user.user_id == current_user.id 
                @pesho1 = true
                break
              else
                @pesho1 = false 
              end
          end
      end 
    if @course.user_id == current_user.id
      @admin = true
      
    else
      @admin = false
    end

    @neshto = CoursePost.where("course_id = ?", params[:id]) 
      
    @likes = LikesCourse.where("course_id = ?", params[:id]) 
    @likes.each do |user| 
        if current_user.present?
            if user.user_id == current_user.id 
              @ivan1 = true
              break
            else
              @ivan1 = false 
            end
        end
    end
end

  # GET /courses/new
  # GET /courses/new.json
  def new
    @course = Course.new


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/1/edit
  def edit
    @course = Course.find(params[:id])
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(params[:course])
    @course.user_id = current_user.id

    respond_to do |format|
      if @course.save
      	@course.save
         user_join = UserCourse.new
         user_join.user_id = current_user.id
         user_join.course_id = @course.id
         user_join.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render json: @course, status: :created, location: @course }
      else
        format.html { render action: "new" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /courses/1
  # PUT /courses/1.json
  def update
    @course = Course.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end
  end

  def like
      # join_params = params[:user_open_group]
      like = LikesCourse.new
      like.user_id = current_user.id
      like.course_id = params[:id]
      like.save

      respond_to do |format|
        format.html { redirect_to :back }
        # format.json { head :no_content }
      end
   end
  
   def like_post
      like_post = LikesCoursePost.new
      like_post.user_id = current_user.id
      like_post.course_post_id = params[:id]
      like_post.like_attribute = params[:value]
      like_post.save

      respond_to do |format|
        format.html { redirect_to :back }
        # format.json { head :no_content }
      end
   end

   def join
      # join_params = params[:user_open_group]

      user = UserCourse.new
      user.user_id = current_user.id
      user.course_id = params[:id]
      Course.where(:id => user.course_id).update_all("counter = counter + 1")
      user.save

    respond_to do |format|
      format.html { redirect_to '/courses/'+user.course_id.to_s }
        # format.json { head :no_content }
    end
  end 
end
