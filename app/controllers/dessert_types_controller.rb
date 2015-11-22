class DessertTypesController < ApplicationController
  def index
    @dessert_types = DessertType.all
  end

  # GET /dessert_types/1
  # GET /dessert_types/1.json
  def show
  end

  # GET /dessert_types/new
  def new
    @dessert_types = DessertType.all
    @dessert_type = DessertType.new
  end

  # GET /dessert_types/1/edit
  def edit
    @dessert_type = Recipe.find(params[:id])
  end

  # POST /dessert_types
  # POST /dessert_types.json
  def create
    @dessert_type = DessertType.new(dessert_type_params)

    respond_to do |format|
      if @dessert_type.save
        format.html { redirect_to @dessert_type, notice: 'DessertType was successfully created.' }
        format.json { render :show, status: :created, location: @dessert_type }
      else
        format.html { render :new }
        format.json { render json: @dessert_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dessert_types/1
  # PATCH/PUT /dessert_types/1.json
  def update
    respond_to do |format|
      if @dessert_type.update(dessert_type_params)
        format.html { redirect_to @dessert_type, notice: 'DessertType was successfully updated.' }
        format.json { render :show, status: :ok, location: @dessert_type }
      else
        format.html { render :edit }
        format.json { render json: @dessert_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dessert_types/1
  # DELETE /dessert_types/1.json
  def destroy
    @dessert_type.destroy
    respond_to do |format|
      format.html { redirect_to dessert_types_url, notice: 'DessertType was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dessert_type
      @dessert_type = DessertType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dessert_type_params
      params.require(:dessert_type).permit(:name, :image)
    end
end

