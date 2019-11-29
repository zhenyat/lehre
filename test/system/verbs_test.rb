require "application_system_test_case"

class VerbsTest < ApplicationSystemTestCase
  setup do
    @verb = verbs(:one)
  end

  test "visiting the index" do
    visit verbs_url
    assert_selector "h1", text: "Verbs"
  end

  test "creating a Verb" do
    visit verbs_url
    click_on "New Verb"

    fill_in "Aux", with: @verb.aux
    fill_in "En", with: @verb.en
    fill_in "Group", with: @verb.group_id
    fill_in "Infinitive", with: @verb.infinitive
    fill_in "Participle", with: @verb.participle
    fill_in "Prasens", with: @verb.prasens
    fill_in "Ru", with: @verb.ru
    fill_in "Rule", with: @verb.rule_id
    fill_in "Simple", with: @verb.simple
    fill_in "Trxn", with: @verb.trxn
    click_on "Create Verb"

    assert_text "Verb was successfully created"
    click_on "Back"
  end

  test "updating a Verb" do
    visit verbs_url
    click_on "Edit", match: :first

    fill_in "Aux", with: @verb.aux
    fill_in "En", with: @verb.en
    fill_in "Group", with: @verb.group_id
    fill_in "Infinitive", with: @verb.infinitive
    fill_in "Participle", with: @verb.participle
    fill_in "Prasens", with: @verb.prasens
    fill_in "Ru", with: @verb.ru
    fill_in "Rule", with: @verb.rule_id
    fill_in "Simple", with: @verb.simple
    fill_in "Trxn", with: @verb.trxn
    click_on "Update Verb"

    assert_text "Verb was successfully updated"
    click_on "Back"
  end

  test "destroying a Verb" do
    visit verbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Verb was successfully destroyed"
  end
end
