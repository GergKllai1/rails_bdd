class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        flash[:success] = "Your comment has been posted!"
        redirect_to article_path(@article)
    end

    def destroy
        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article)
        flash[:notice] = "The comment has been successfully deleted"
    end

    private
        def comment_params
            params.require(:comment).permit(:commenter, :body)
        end
end
