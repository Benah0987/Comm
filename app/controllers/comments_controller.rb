# app/controllers/comments_controller.rb
class CommentsController < ApplicationController
    before_action :authorize, except: [:index, :show]
    before_action :set_video
    before_action :set_comment, only: [:show, :edit, :update, :destroy]
  
    # GET /videos/:video_id/comments
    def index
      @comments = @video.comments
      render json: @comments
    end
  
    # GET /videos/:video_id/comments/1
    def show
      render json: @comment
    end
  
    # GET /videos/:video_id/comments/new
    def new
      @comment = @video.comments.new
    end
  
    # GET /videos/:video_id/comments/1/edit
    def edit
    end
  
    # POST /videos/:video_id/comments
    def create
      @comment = @video.comments.new(comment_params)
      @comment.user = current_user
  
      if @comment.save
        render json: @comment, status: :created, location: [@video, @comment]
      else
        render json: @comment.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /videos/:video_id/comments/1
    def update
      if @comment.update(comment_params)
        render json: @comment
      else
        render json: @comment.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /videos/:video_id/comments/1
    def destroy
      @comment.destroy
      head :no_content
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_video
        @video = Video.find(params[:video_id])
      end
  
      def set_comment
        @comment = @video.comments.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def comment_params
        params.require(:comment).permit(:content)
      end
  end
  