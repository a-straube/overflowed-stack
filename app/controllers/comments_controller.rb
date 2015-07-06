class CommentsController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @comment = @question.comments.new
  end

  def create
    @question = Question.find(params[:question_id])
    @comment = @question.comments.new(comment_params)
    if @comment.save
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:question_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @question = Question.find(params[:question_id])
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to question_path(@question)
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:question_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to question_path(@question)
  end

  private
    def comment_params
      params.require(:comment).permit(:name, :answer)
    end
end
