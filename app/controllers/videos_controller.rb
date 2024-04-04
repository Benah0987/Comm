# app/controllers/videos_controller.rb
class VideosController < ApplicationController
    before_action :authorize, except: [:index, :show]
    before_action :set_video, only: [:show, :edit, :update, :destroy]
  
    # GET /videos
    def index
      @videos = Video.all
      render json: @videos
    end
  
    # GET /videos/1
    def show
      render json: @video
    end
  
    # GET /videos/new
    def new
      @video = Video.new
    end
  
    # GET /videos/1/edit
    def edit
    end
  
    # POST /videos
    def create
      @video = @current_user.videos.new(video_params.except(:video_file))
  
      if video_params[:video_file].present?
        uploaded_file = video_params[:video_file]
        # Ensure directory exists
        FileUtils.mkdir_p(Rails.root.join('public', 'uploads', 'videos'))
  
        # Create a unique filename for the file
        unique_filename = SecureRandom.uuid + File.extname(uploaded_file.original_filename)
        File.open(Rails.root.join('public', 'uploads', 'videos', unique_filename), 'wb') do |file|
          file.write(uploaded_file.read)
        end
  
        # Update the model to store the URL instead of the file itself
        @video.video_url = "/uploads/videos/#{unique_filename}"
      end
  
      if @video.save
        render json: @video, status: :created, location: @video
      else
        render json: @video.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /videos/1
    def update
      if @video.update(video_params)
        render json: @video
      else
        render json: @video.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /videos/1
    def destroy
      @video.destroy
      head :no_content
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_video
        @video = Video.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def video_params
        params.permit(:title, :description, :video_file)
      end
  end
  