require "application_system_test_case"

class FundsTest < ApplicationSystemTestCase
  setup do
    @fund = funds(:one)
  end

  test "visiting the index" do
    visit funds_url
    assert_selector "h1", text: "Funds"
  end

  test "creating a Fund" do
    visit funds_url
    click_on "New Fund"

    fill_in "Domain", with: @fund.domain
    fill_in "Name", with: @fund.name
    fill_in "Subdomain", with: @fund.subdomain
    click_on "Create Fund"

    assert_text "Fund was successfully created"
    click_on "Back"
  end

  test "updating a Fund" do
    visit funds_url
    click_on "Edit", match: :first

    fill_in "Domain", with: @fund.domain
    fill_in "Name", with: @fund.name
    fill_in "Subdomain", with: @fund.subdomain
    click_on "Update Fund"

    assert_text "Fund was successfully updated"
    click_on "Back"
  end

  test "destroying a Fund" do
    visit funds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fund was successfully destroyed"
  end
end
