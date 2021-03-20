require "application_system_test_case"

class ContactPhonesTest < ApplicationSystemTestCase
  setup do
    @contact_phone = contact_phones(:one)
  end

  test "visiting the index" do
    visit contact_phones_url
    assert_selector "h1", text: "Contact Phones"
  end

  test "creating a Contact phone" do
    visit contact_phones_url
    click_on "New Contact Phone"

    fill_in "Email", with: @contact_phone.email
    fill_in "Name", with: @contact_phone.name
    fill_in "Phone", with: @contact_phone.phone
    click_on "Create Contact phone"

    assert_text "Contact phone was successfully created"
    click_on "Back"
  end

  test "updating a Contact phone" do
    visit contact_phones_url
    click_on "Edit", match: :first

    fill_in "Email", with: @contact_phone.email
    fill_in "Name", with: @contact_phone.name
    fill_in "Phone", with: @contact_phone.phone
    click_on "Update Contact phone"

    assert_text "Contact phone was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact phone" do
    visit contact_phones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact phone was successfully destroyed"
  end
end
