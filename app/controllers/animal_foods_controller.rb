class AnimalFoodsController < ApplicationController
  before_action :set_animal_food, only: %i[ show edit update destroy ]

  # GET /animal_foods or /animal_foods.json
  def index
    @animal_foods = AnimalFood.all
  end

  # GET /animal_foods/1 or /animal_foods/1.json
  def show
  end

  # GET /animal_foods/new
  def new
    @animal_food = AnimalFood.new
  end

  # GET /animal_foods/1/edit
  def edit
  end

  # POST /animal_foods or /animal_foods.json
  def create
    @animal_food = AnimalFood.new(animal_food_params)

    respond_to do |format|
      if @animal_food.save
        format.html { redirect_to @animal_food, notice: "Animal food was successfully created." }
        format.json { render :show, status: :created, location: @animal_food }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animal_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animal_foods/1 or /animal_foods/1.json
  def update
    respond_to do |format|
      if @animal_food.update(animal_food_params)
        format.html { redirect_to @animal_food, notice: "Animal food was successfully updated." }
        format.json { render :show, status: :ok, location: @animal_food }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animal_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animal_foods/1 or /animal_foods/1.json
  def destroy
    @animal_food.destroy
    respond_to do |format|
      format.html { redirect_to animal_foods_url, notice: "Animal food was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal_food
      @animal_food = AnimalFood.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animal_food_params
      params.require(:animal_food).permit(:animal_id, :food_id)
    end
end
