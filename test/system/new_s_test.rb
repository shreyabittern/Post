require "application_system_test_case"

class NewsTest < ApplicationSystemTestCase
  setup do
    @new_ = new_s(:one)
  end

  test "visiting the index" do
    visit new_s_url
    assert_selector "h1", text: "News"
  end

  test "creating a New " do
    visit new_s_url
    click_on "New New"

    fill_in "Post", with: @new_.Post
    fill_in "Description", with: @new_.description
    fill_in "Name", with: @new_.name
    click_on "Create New "

    assert_text "New  was successfully created"
    click_on "Back"
  end

  test "updating a New " do
    visit new_s_url
    click_on "Edit", match: :first

    fill_in "Post", with: @new_.Post
    fill_in "Description", with: @new_.description
    fill_in "Name", with: @new_.name
    click_on "Update New "

    assert_text "New  was successfully updated"
    click_on "Back"
  end

  test "destroying a New " do
    visit new_s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "New  was successfully destroyed"
  end
end
