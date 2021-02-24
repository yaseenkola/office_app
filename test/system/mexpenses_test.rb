require "application_system_test_case"

class MexpensesTest < ApplicationSystemTestCase
  setup do
    @mexpense = mexpenses(:one)
  end

  test "visiting the index" do
    visit mexpenses_url
    assert_selector "h1", text: "Mexpenses"
  end

  test "creating a Mexpense" do
    visit mexpenses_url
    click_on "New Mexpense"

    fill_in "Balance", with: @mexpense.balance
    fill_in "Credit", with: @mexpense.credit
    fill_in "Date", with: @mexpense.date
    fill_in "Debit", with: @mexpense.debit
    fill_in "Particulars", with: @mexpense.particulars
    click_on "Create Mexpense"

    assert_text "Mexpense was successfully created"
    click_on "Back"
  end

  test "updating a Mexpense" do
    visit mexpenses_url
    click_on "Edit", match: :first

    fill_in "Balance", with: @mexpense.balance
    fill_in "Credit", with: @mexpense.credit
    fill_in "Date", with: @mexpense.date
    fill_in "Debit", with: @mexpense.debit
    fill_in "Particulars", with: @mexpense.particulars
    click_on "Update Mexpense"

    assert_text "Mexpense was successfully updated"
    click_on "Back"
  end

  test "destroying a Mexpense" do
    visit mexpenses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mexpense was successfully destroyed"
  end
end
