class ReportagesController < ApplicationController
  before_action :set_reportage, only: %i[ show edit update destroy ]

  # GET /reportages or /reportages.json
  def index
    @reportages = Reportage.all
  end

  # GET /reportages/1 or /reportages/1.json
  def show
  end

  # GET /reportages/new
  def new
    @reportage = Reportage.new
  end

  # GET /reportages/1/edit
  def edit
  end

  # POST /reportages or /reportages.json
  def create
    @reportage = Reportage.new(reportage_params)

    respond_to do |format|
      if @reportage.save
        format.html { redirect_to reportage_url(@reportage), notice: "Reportage was successfully created." }
        format.json { render :show, status: :created, location: @reportage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reportage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reportages/1 or /reportages/1.json
  def update
    respond_to do |format|
      if @reportage.update(reportage_params)
        format.html { redirect_to reportage_url(@reportage), notice: "Reportage was successfully updated." }
        format.json { render :show, status: :ok, location: @reportage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reportage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reportages/1 or /reportages/1.json
  def destroy
    @reportage.destroy

    respond_to do |format|
      format.html { redirect_to reportages_url, notice: "Reportage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reportage
      @reportage = Reportage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reportage_params
      params.require(:reportage).permit(:title, :description, :user_id)
    end
end
