class ClosedGroupPostsController < ApplicationController
  # GET /closed_group_posts
  # GET /closed_group_posts.json
  def index
    @closed_group_posts = ClosedGroupPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @closed_group_posts }
    end
  end

  # GET /closed_group_posts/1
  # GET /closed_group_posts/1.json
  def show
    @closed_group_post = ClosedGroupPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @closed_group_post }
    end
  end

  # GET /closed_group_posts/new
  # GET /closed_group_posts/new.json
  def new
    @closed_group_post = ClosedGroupPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @closed_group_post }
    end
  end

  # GET /closed_group_posts/1/edit
  def edit
    @closed_group_post = ClosedGroupPost.find(params[:id])
  end

  # POST /closed_group_posts
  # POST /closed_group_posts.json
  def create
    @closed_group_post = ClosedGroupPost.new(params[:closed_group_post])

    respond_to do |format|
      if @closed_group_post.save
        format.html { redirect_to :back }
        format.json { render json: @closed_group_post, status: :created, location: @closed_group_post }
      else
        format.html { render action: "new" }
        format.json { render json: @closed_group_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /closed_group_posts/1
  # PUT /closed_group_posts/1.json
  def update
    @closed_group_post = ClosedGroupPost.find(params[:id])

    respond_to do |format|
      if @closed_group_post.update_attributes(params[:closed_group_post])
        format.html { redirect_to @closed_group_post, notice: 'Closed group post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @closed_group_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /closed_group_posts/1
  # DELETE /closed_group_posts/1.json
  def destroy
    @closed_group_post = ClosedGroupPost.find(params[:id])
    @closed_group_post.destroy

    respond_to do |format|
      format.html { redirect_to closed_group_posts_url }
      format.json { head :no_content }
    end
  end
end
