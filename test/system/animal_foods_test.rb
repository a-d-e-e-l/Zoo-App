require "application_system_test_case"

class AnimalFoodsTest < ApplicationSystemTestCase
  setup do
    @animal_food = animal_foods(:one)
  end

  test "visiting the index" do
    visit animal_foods_url
    assert_selector "h1", text: "Animal Foods"
  end

  test "creating a Animal food" do
    visit animal_foods_url
    click_on "New Animal Food"

    fill_in "Animal", with: @animal_food.animal_id
    fill_in "Food", with: @animal_food.food_id
    click_on "Create Animal food"

    assert_text "Animal food was successfully created"
    click_on "Back"
  end

  test "updating a Animal food" do
    visit animal_foods_url
    click_on "Edit", match: :first

    fill_in "Animal", with: @animal_food.animal_id
    fill_in "Food", with: @animal_food.food_id
    click_on "Update Animal food"

    assert_text "Animal food was successfully updated"
    click_on "Back"
  end

  test "destroying a Animal food" do
    visit animal_foods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Animal food was successfully destroyed"
  end
end
