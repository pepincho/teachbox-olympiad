class CoursePostsController < ApplicationController
  # GET /course_posts
  # GET /course_posts.json
  def index
    @course_posts = CoursePost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @course_posts }
    end
  end

  # GET /course_posts/1
  # GET /course_posts/1.json
  def show
    @course_post = CoursePost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course_post }
    end
  end

  # GET /course_posts/new
  # GET /course_posts/new.json
  def new
    @course_post = CoursePost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course_post }
    end
  end

  # GET /course_posts/1/edit
  def edit
    @course_post = CoursePost.find(params[:id])
  end

  # POST /course_posts
  # POST /course_posts.json
  def create
    @course_post = CoursePost.new(params[:course_post])

    respond_to do |format|
      if @course_post.save
        format.html { redirect_to :back }
        format.json { render json: @course_post, status: :created, location: @course_post }
      else
        format.html { render action: "new" }
        format.json { render json: @course_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /course_posts/1
  # PUT /course_posts/1.json
  def update
    @course_post = CoursePost.find(params[:id])

    respond_to do |format|
      if @course_post.update_attributes(params[:course_post])
        format.html { redirect_to @course_post, notice: 'Course post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_posts/1
  # DELETE /course_posts/1.json
  def destroy
    @course_post = CoursePost.find(params[:id])
    @course_post.destroy

    respond_to do |format|
      format.html { redirect_to course_posts_url }
      format.json { head :no_content }
    end
  end
end
