class OpenGroupPostsController < ApplicationController
  # GET /open_group_posts
  # GET /open_group_posts.json
  def index
    @open_group_posts = OpenGroupPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @open_group_posts }
    end
  end

  # GET /open_group_posts/1
  # GET /open_group_posts/1.json
  def show
    @open_group_post = OpenGroupPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @open_group_post }
    end
  end

  # GET /open_group_posts/new
  # GET /open_group_posts/new.json
  def new
    @open_group_post = OpenGroupPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @open_group_post }
    end
  end

  # GET /open_group_posts/1/edit
  def edit
    @open_group_post = OpenGroupPost.find(params[:id])
  end

  # POST /open_group_posts
  # POST /open_group_posts.json
  def create
    @open_group_post = OpenGroupPost.new(params[:open_group_post])

    respond_to do |format|
      if @open_group_post.save
        format.html { redirect_to :back }
        format.json { render json: @open_group_post, status: :created, location: @open_group_post }
      else
        format.html { render action: "new" }
        format.json { render json: @open_group_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /open_group_posts/1
  # PUT /open_group_posts/1.json
  def update
    @open_group_post = OpenGroupPost.find(params[:id])

    respond_to do |format|
      if @open_group_post.update_attributes(params[:open_group_post])
        format.html { redirect_to @open_group_post, notice: 'Open group post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @open_group_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /open_group_posts/1
  # DELETE /open_group_posts/1.json
  def destroy
    @open_group_post = OpenGroupPost.find(params[:id])
    @open_group_post.destroy

    respond_to do |format|
      format.html { redirect_to open_group_posts_url }
      format.json { head :no_content }
    end
  end
end