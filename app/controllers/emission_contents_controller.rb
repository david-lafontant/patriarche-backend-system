class EmissionContentsController < ApplicationController
  before_action :set_emission_content, only: %i[ show edit update destroy ]

  # GET /emission_contents or /emission_contents.json
  def index
    @emission_contents = EmissionContent.all
  end

  # GET /emission_contents/1 or /emission_contents/1.json
  def show
  end

  # GET /emission_contents/new
  def new
    @emission_content = EmissionContent.new
  end

  # GET /emission_contents/1/edit
  def edit
  end

  # POST /emission_contents or /emission_contents.json
  def create
    @emission_content = EmissionContent.new(emission_content_params)

    respond_to do |format|
      if @emission_content.save
        format.html { redirect_to emission_content_url(@emission_content), notice: "Emission content was successfully created." }
        format.json { render :show, status: :created, location: @emission_content }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @emission_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emission_contents/1 or /emission_contents/1.json
  def update
    respond_to do |format|
      if @emission_content.update(emission_content_params)
        format.html { redirect_to emission_content_url(@emission_content), notice: "Emission content was successfully updated." }
        format.json { render :show, status: :ok, location: @emission_content }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @emission_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emission_contents/1 or /emission_contents/1.json
  def destroy
    @emission_content.destroy

    respond_to do |format|
      format.html { redirect_to emission_contents_url, notice: "Emission content was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emission_content
      @emission_content = EmissionContent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def emission_content_params
      params.require(:emission_content).permit(:title, :description, :content, :user_id, :emission_id)
    end
end
