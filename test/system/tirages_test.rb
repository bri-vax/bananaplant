require "application_system_test_case"

class TiragesTest < ApplicationSystemTestCase
  setup do
    @tirage = tirages(:one)
  end

  test "visiting the index" do
    visit tirages_url
    assert_selector "h1", text: "Tirages"
  end

  test "creating a Tirage" do
    visit tirages_url
    click_on "New Tirage"

    fill_in "Date Tirage", with: @tirage.date_tirage
    fill_in "T Exp1", with: @tirage.t_exp1
    fill_in "T Exp2", with: @tirage.t_exp2
    fill_in "T Num1", with: @tirage.t_num1
    fill_in "T Num2", with: @tirage.t_num2
    fill_in "T Num3", with: @tirage.t_num3
    fill_in "T Num4", with: @tirage.t_num4
    fill_in "T Num5", with: @tirage.t_num5
    click_on "Create Tirage"

    assert_text "Tirage was successfully created"
    click_on "Back"
  end

  test "updating a Tirage" do
    visit tirages_url
    click_on "Edit", match: :first

    fill_in "Date Tirage", with: @tirage.date_tirage
    fill_in "T Exp1", with: @tirage.t_exp1
    fill_in "T Exp2", with: @tirage.t_exp2
    fill_in "T Num1", with: @tirage.t_num1
    fill_in "T Num2", with: @tirage.t_num2
    fill_in "T Num3", with: @tirage.t_num3
    fill_in "T Num4", with: @tirage.t_num4
    fill_in "T Num5", with: @tirage.t_num5
    click_on "Update Tirage"

    assert_text "Tirage was successfully updated"
    click_on "Back"
  end

  test "destroying a Tirage" do
    visit tirages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tirage was successfully destroyed"
  end
end
