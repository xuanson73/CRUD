require "test_helper"

class ContactPhonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_phone = contact_phones(:one)
  end

  test "should get index" do
    get contact_phones_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_phone_url
    assert_response :success
  end

  test "should create contact_phone" do
    assert_difference('ContactPhone.count') do
      post contact_phones_url, params: { contact_phone: { email: @contact_phone.email, name: @contact_phone.name, phone: @contact_phone.phone } }
    end

    assert_redirected_to contact_phone_url(ContactPhone.last)
  end

  test "should show contact_phone" do
    get contact_phone_url(@contact_phone)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_phone_url(@contact_phone)
    assert_response :success
  end

  test "should update contact_phone" do
    patch contact_phone_url(@contact_phone), params: { contact_phone: { email: @contact_phone.email, name: @contact_phone.name, phone: @contact_phone.phone } }
    assert_redirected_to contact_phone_url(@contact_phone)
  end

  test "should destroy contact_phone" do
    assert_difference('ContactPhone.count', -1) do
      delete contact_phone_url(@contact_phone)
    end

    assert_redirected_to contact_phones_url
  end
end
