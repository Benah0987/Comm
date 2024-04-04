# comments_controller.rb

class CommentsController < ApplicationController
  before_action :set_video
  before_action :set_comment, only: [:show, :update, :destroy]

  # GET /videos/:video_id/comments
  def index
    @comments = @video.comments.includes(:user)
    render json: @comments.as_json(include: { user: { only: [:id, :name] } })
  end

  # GET /videos/:video_id/comments/:id
  def show
    render json: @comment
  end

  # POST /videos/:video_id/comments
  def create
    @comment = @video.comments.build(comment_params.merge(user_id: @current_user.id))

    if @comment.save
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /videos/:video_id/comments/:id
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /videos/:video_id/comments/:id
  def destroy
    @comment.destroy
    head :no_content
  end

  private

  def set_video
    @video = Video.find_by(id: params[:video_id])
    unless @video
      render json: { error: "Video not found" }, status: :not_found
    end
  end

  def set_comment
    @comment = @video.comments.find(params[:id])
  end

  def comment_params
    params.permit(:content)
  end
end
