require 'test_helper'

class LibPlayTest < ActionDispatch::IntegrationTest
  test "user can select and play a hashlib" do
    visit root_url
    click_link("Talk Like A Pirate")

    word_set = WordSet.create(name: "Talk Like a Pirate", speech: { noun1: "", adjective1: "", verb1: ""})

    assert_equal word_set_path(hashlib), current_path

    fill_in("noun1", with: "polar bear")
    fill_in("adjective2", with: "floral")
    fill_in("verb1", with: "twirl")

    click_link_or_button("Make Me Laugh")

    assert page.has_content?("Ye can always pretend to be a bloodthirsty polar bear")
  end
end
