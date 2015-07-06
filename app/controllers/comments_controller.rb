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

  private
    def comment_params
      params.require(:comment).permit(:name, :answer)
    end
end
