require "test_helper"

class AnimalFoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal_food = animal_foods(:one)
  end

  test "should get index" do
    get animal_foods_url
    assert_response :success
  end

  test "should get new" do
    get new_animal_food_url
    assert_response :success
  end

  test "should create animal_food" do
    assert_difference('AnimalFood.count') do
      post animal_foods_url, params: { animal_food: { animal_id: @animal_food.animal_id, food_id: @animal_food.food_id } }
    end

    assert_redirected_to animal_food_url(AnimalFood.last)
  end

  test "should show animal_food" do
    get animal_food_url(@animal_food)
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_food_url(@animal_food)
    assert_response :success
  end

  test "should update animal_food" do
    patch animal_food_url(@animal_food), params: { animal_food: { animal_id: @animal_food.animal_id, food_id: @animal_food.food_id } }
    assert_redirected_to animal_food_url(@animal_food)
  end

  test "should destroy animal_food" do
    assert_difference('AnimalFood.count', -1) do
      delete animal_food_url(@animal_food)
    end

    assert_redirected_to animal_foods_url
  end
end
