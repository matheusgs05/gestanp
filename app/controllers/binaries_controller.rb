class BinariesController < ApplicationController
  before_action :set_binary, only: [:show, :edit, :update, :destroy]

  # GET /binaries
  # GET /binaries.json
  def index
    @binaries = Binary.all
  end

  # GET /binaries/1
  # GET /binaries/1.json
  def show
  end

  # GET /binaries/new
  def new
    @binary = Binary.new
  end

  # GET /binaries/1/edit
  def edit
  end

  # POST /binaries
  # POST /binaries.json
  def create
    @binary = Binary.new(binary_params)

    respond_to do |format|
      if @binary.save
        format.html { redirect_to @binary, notice: 'Binary was successfully created.' }
        format.json { render action: 'show', status: :created, location: @binary }
      else
        format.html { render action: 'new' }
        format.json { render json: @binary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /binaries/1
  # PATCH/PUT /binaries/1.json
  def update
    respond_to do |format|
      if @binary.update(binary_params)
        format.html { redirect_to @binary, notice: 'Binary was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @binary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /binaries/1
  # DELETE /binaries/1.json
  def destroy
    @binary.destroy
    respond_to do |format|
      format.html { redirect_to binaries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_binary
      @binary = Binary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def binary_params
      params.require(:binary).permit(:data)
    end
end
