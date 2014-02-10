class CommentsOpenGroupPostsController < ApplicationController
  # GET /comments_open_group_posts
  # GET /comments_open_group_posts.json
  def index
    @comments_open_group_posts = CommentsOpenGroupPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments_open_group_posts }
    end
  end

  # GET /comments_open_group_posts/1
  # GET /comments_open_group_posts/1.json
  def show
    @comments_open_group_post = CommentsOpenGroupPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comments_open_group_post }
    end
  end

  # GET /comments_open_group_posts/new
  # GET /comments_open_group_posts/new.json
  def new
    @comments_open_group_post = CommentsOpenGroupPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comments_open_group_post }
    end
  end

  # GET /comments_open_group_posts/1/edit
  def edit
    @comments_open_group_post = CommentsOpenGroupPost.find(params[:id])
  end

  # POST /comments_open_group_posts
  # POST /comments_open_group_posts.json
  def create
    @comments_open_group_post = CommentsOpenGroupPost.new(params[:comments_open_group_post])

    respond_to do |format|
      if @comments_open_group_post.save
        format.html { redirect_to :back }
        format.json { render json: @comments_open_group_post, status: :created, location: @comments_open_group_post }
      else
        format.html { render action: "new" }
        format.json { render json: @comments_open_group_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comments_open_group_posts/1
  # PUT /comments_open_group_posts/1.json
  def update
    @comments_open_group_post = CommentsOpenGroupPost.find(params[:id])

    respond_to do |format|
      if @comments_open_group_post.update_attributes(params[:comments_open_group_post])
        format.html { redirect_to @comments_open_group_post, notice: 'Comments open group post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comments_open_group_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments_open_group_posts/1
  # DELETE /comments_open_group_posts/1.json
  def destroy
    @comments_open_group_post = CommentsOpenGroupPost.find(params[:id])
    @comments_open_group_post.destroy

    respond_to do |format|
      format.html { redirect_to comments_open_group_posts_url }
      format.json { head :no_content }
    end
  end
end
