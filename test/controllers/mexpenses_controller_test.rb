require "test_helper"

class MexpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mexpense = mexpenses(:one)
  end

  test "should get index" do
    get mexpenses_url
    assert_response :success
  end

  test "should get new" do
    get new_mexpense_url
    assert_response :success
  end

  test "should create mexpense" do
    assert_difference('Mexpense.count') do
      post mexpenses_url, params: { mexpense: { balance: @mexpense.balance, credit: @mexpense.credit, date: @mexpense.date, debit: @mexpense.debit, particulars: @mexpense.particulars } }
    end

    assert_redirected_to mexpense_url(Mexpense.last)
  end

  test "should show mexpense" do
    get mexpense_url(@mexpense)
    assert_response :success
  end

  test "should get edit" do
    get edit_mexpense_url(@mexpense)
    assert_response :success
  end

  test "should update mexpense" do
    patch mexpense_url(@mexpense), params: { mexpense: { balance: @mexpense.balance, credit: @mexpense.credit, date: @mexpense.date, debit: @mexpense.debit, particulars: @mexpense.particulars } }
    assert_redirected_to mexpense_url(@mexpense)
  end

  test "should destroy mexpense" do
    assert_difference('Mexpense.count', -1) do
      delete mexpense_url(@mexpense)
    end

    assert_redirected_to mexpenses_url
  end
end
