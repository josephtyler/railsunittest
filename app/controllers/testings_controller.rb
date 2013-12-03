class TestingsController < ApplicationController
  before_action :set_testing, only: [:show, :edit, :update, :destroy]

  # GET /testings
  # GET /testings.json
  def index
    @testings = Testing.all
  end

  # GET /testings/1
  # GET /testings/1.json
  def show
  end

  # GET /testings/new
  def new
    @testing = Testing.new
  end

  # GET /testings/1/edit
  def edit
  end

  # POST /testings
  # POST /testings.json
  def create
    @testing = Testing.new(testing_params)

    respond_to do |format|
      if @testing.save
        format.html { redirect_to @testing, notice: 'Testing was successfully created.' }
        format.json { render action: 'show', status: :created, location: @testing }
      else
        format.html { render action: 'new' }
        format.json { render json: @testing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testings/1
  # PATCH/PUT /testings/1.json
  def update
    respond_to do |format|
      if @testing.update(testing_params)
        format.html { redirect_to @testing, notice: 'Testing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @testing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testings/1
  # DELETE /testings/1.json
  def destroy
    @testing.destroy
    respond_to do |format|
      format.html { redirect_to testings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testing
      @testing = Testing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testing_params
      params.require(:testing).permit(:name, :score)
    end
end
