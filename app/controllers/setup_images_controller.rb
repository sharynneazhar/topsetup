class SetupImagesController < ApplicationController
  before_action :set_setup_image, only: [:show, :edit, :update, :destroy]

  # GET /setup_images
  # GET /setup_images.json
  def index
    @setup_images = SetupImage.all
  end

  # GET /setup_images/1
  # GET /setup_images/1.json
  def show
  end

  # GET /setup_images/new
  def new
    @setup_image = SetupImage.new
    @setup = Setup.find(params[:setup_id])
  end

  # GET /setup_images/1/edit
  def edit
  end

  # POST /setup_images
  # POST /setup_images.json
  def create
    @setup_image = SetupImage.new(setup_image_params)
    respond_to do |format|
      if @setup_image.save
        format.html { redirect_to setup_path(@setup_image.setup_id),
          notice: 'Setup was successfully updated.' }
        format.json { render :show, status: :created, location: @setup_image }
      else
        format.html { render :new }
        format.json { render json: @setup_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /setup_images/1
  # PATCH/PUT /setup_images/1.json
  def update
    respond_to do |format|
      if @setup_image.update(setup_image_params)
        format.html { redirect_to @setup_image.setup, notice: 'Setup image was successfully updated.' }
        format.json { render :show, status: :ok, location: @setup_image }
      else
        format.html { render :edit }
        format.json { render json: @setup_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /setup_images/1
  # DELETE /setup_images/1.json
  def destroy
    @setup_image.destroy
    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setup_image
      @setup_image = SetupImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def setup_image_params
      params.require(:setup_image).permit(:setup_id, :image)
    end
end
