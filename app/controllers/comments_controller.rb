class CommentsController < ApplicationController
  def create
    diary = Diary.find params[:diary_id]
    binding.pry
    diary.comments.create comment_params
    redirect_to diaries_path
  end

  def comment_params
    params.require(:comment).permit(:comment)
  end
end