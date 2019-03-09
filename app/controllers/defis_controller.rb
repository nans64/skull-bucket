class DefisController < ApplicationController
  before_action :set_defi, only: [:show, :edit, :update, :destroy]

  # GET /defis
  # GET /defis.json
  def index
    @defis = Defi.all
  end

  # GET /defis/1
  # GET /defis/1.json
  def show
  end

  # GET /defis/new
  def new
    @defi = Defi.new
  end

  # GET /defis/1/edit
  def edit
  end

  # POST /defis
  # POST /defis.json
  def create
    @defi = Defi.new(defi_params)

    respond_to do |format|
      if @defi.save
        format.html { redirect_to @defi, notice: 'Defi was successfully created.' }
        format.json { render :show, status: :created, location: @defi }
      else
        format.html { render :new }
        format.json { render json: @defi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /defis/1
  # PATCH/PUT /defis/1.json
  def update
    respond_to do |format|
      if @defi.update(defi_params)
        format.html { redirect_to @defi, notice: 'Defi was successfully updated.' }
        format.json { render :show, status: :ok, location: @defi }
      else
        format.html { render :edit }
        format.json { render json: @defi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /defis/1
  # DELETE /defis/1.json
  def destroy
    @defi.destroy
    respond_to do |format|
      format.html { redirect_to defis_url, notice: 'Defi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_defi
      @defi = Defi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def defi_params
      params.require(:defi).permit(:name, :user_id)
    end
end
