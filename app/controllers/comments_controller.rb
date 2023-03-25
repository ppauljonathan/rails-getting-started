class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comments = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def new; end

  def edit; end

  def show; end

  def update; end

  def destroy; end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
