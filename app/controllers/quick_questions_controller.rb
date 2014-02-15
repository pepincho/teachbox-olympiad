class QuickQuestionsController < ApplicationController
  # GET /quick_questions
  # GET /quick_questions.json
  def index
    @quick_questions = QuickQuestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @quick_questions }
    end
  end

  # GET /quick_questions/1
  # GET /quick_questions/1.json
  def show
    @quick_question = QuickQuestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @quick_question }
    end
  end

  # GET /quick_questions/new
  # GET /quick_questions/new.json
  def new
    @quick_question = QuickQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quick_question }
    end
  end

  # POST /quick_questions
  # POST /quick_questions.json
  def create
    @quick_question = QuickQuestion.new(params[:quick_question])
    @quick_question.user_id = params[:user_id]
    @quick_question.save

    respond_to do |format|
      if @quick_question.save
        format.html { redirect_to @quick_question}
        format.json { render json: @quick_question, status: :created, location: @quick_question }
      else
        format.html { render action: "new" }
        format.json { render json: @quick_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quick_questions/1
  # DELETE /quick_questions/1.json
  def destroy
    @quick_question = QuickQuestion.find(params[:id])
    @quick_question.destroy

    respond_to do |format|
      format.html { redirect_to quick_questions_url }
      format.json { head :no_content }
    end
  end
end
