class DessertTypesController < ApplicationController
  def index
    @kofis = Kofi.all
  end

  # GET /kofis/1
  # GET /kofis/1.json
  def show
  end

  # GET /kofis/new
  def new
    @kofi = Kofi.new
  end

  # GET /kofis/1/edit
  def edit
  end

  # POST /kofis
  # POST /kofis.json
  def create
    @kofi = Kofi.new(kofi_params)

    respond_to do |format|
      if @kofi.save
        format.html { redirect_to @kofi, notice: 'Kofi was successfully created.' }
        format.json { render :show, status: :created, location: @kofi }
      else
        format.html { render :new }
        format.json { render json: @kofi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kofis/1
  # PATCH/PUT /kofis/1.json
  def update
    respond_to do |format|
      if @kofi.update(kofi_params)
        format.html { redirect_to @kofi, notice: 'Kofi was successfully updated.' }
        format.json { render :show, status: :ok, location: @kofi }
      else
        format.html { render :edit }
        format.json { render json: @kofi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kofis/1
  # DELETE /kofis/1.json
  def destroy
    @kofi.destroy
    respond_to do |format|
      format.html { redirect_to kofis_url, notice: 'Kofi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kofi
      @kofi = Kofi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kofi_params
      params.require(:kofi).permit(:name)
    end
end

