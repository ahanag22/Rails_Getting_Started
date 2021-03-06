class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        redirect_to article_path(@article)
      end
     
      def create
        @photo = Photo.find(params[:photo_id])
        @photo = @photo.comments.create(comment_params)
        redirect_to photo_path(@photo)
      end
      
      private
        def comment_params
          params.require(:comment).permit(:commenter, :body)
        end
end
