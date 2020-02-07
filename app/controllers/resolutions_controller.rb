class ResolutionsController < ApplicationController
  before_action :set_resolution, only: [:show, :update, :destroy]

  # GET /resolutions
  def index
    @resolutions = Resolution.all

    render json: @resolutions, include: [:goals]
  end

  # GET /resolutions/1
  def show
    @resolution = Resolution.find(params[:id])

    render json: @resolution, include: [:goals]
  end

  # POST /resolutions
  def create
    @resolution = Resolution.new(resolution_params)

    if @resolution.save
      render json: @resolution, status: :created, location: @resolution
    else
      render json: @resolution.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /resolutions/1
  def update
    if @resolution.update(resolution_params)
      render json: @resolution
    else
      render json: @resolution.errors, status: :unprocessable_entity
    end
  end

  # DELETE /resolutions/1
  def destroy
    @resolution.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resolution
      @resolution = Resolution.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resolution_params
      params.require(:resolution).permit(:title, :body)
    end
end
