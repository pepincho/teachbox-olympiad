class CommentsCoursePostsController < ApplicationController
  # GET /comments_course_posts
  # GET /comments_course_posts.json
  def index
    @comments_course_posts = CommentsCoursePost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments_course_posts }
    end
  end

  # GET /comments_course_posts/1
  # GET /comments_course_posts/1.json
  def show
    @comments_course_post = CommentsCoursePost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comments_course_post }
    end
  end

  # GET /comments_course_posts/new
  # GET /comments_course_posts/new.json
  def new
    @comments_course_post = CommentsCoursePost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comments_course_post }
    end
  end

  # GET /comments_course_posts/1/edit
  def edit
    @comments_course_post = CommentsCoursePost.find(params[:id])
  end

  # POST /comments_course_posts
  # POST /comments_course_posts.json
  def create
    @comments_course_post = CommentsCoursePost.new(params[:comments_course_post])

    respond_to do |format|
      if @comments_course_post.save
        format.html { redirect_to :back }
        format.json { render json: @comments_course_post, status: :created, location: @comments_course_post }
      else
        format.html { render action: "new" }
        format.json { render json: @comments_course_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comments_course_posts/1
  # PUT /comments_course_posts/1.json
  def update
    @comments_course_post = CommentsCoursePost.find(params[:id])

    respond_to do |format|
      if @comments_course_post.update_attributes(params[:comments_course_post])
        format.html { redirect_to @comments_course_post, notice: 'Comments course post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comments_course_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments_course_posts/1
  # DELETE /comments_course_posts/1.json
  def destroy
    @comments_course_post = CommentsCoursePost.find(params[:id])
    @comments_course_post.destroy

    respond_to do |format|
      format.html { redirect_to comments_course_posts_url }
      format.json { head :no_content }
    end
  end
end
