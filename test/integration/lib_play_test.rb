require 'test_helper'

class LibPlayTest < ActionDispatch::IntegrationTest
  test "user can select and play a hashlib" do
    word_set = WordSet.create(name: "Talk Like a Pirate", noun1: "", adjective1: "", verb1: "")
    visit root_url

    click_link("Talk Like a Pirate")

    assert_equal word_set_path(word_set.id), current_path
save_and_open_page
    fill_in("word_set_noun1", with: "polar bear")
    fill_in("word_set_adjective1", with: "floral")
    fill_in("word_set_verb1", with: "twirl")
    save_and_open_page

    click_link_or_button("Make Me Laugh")

    assert page.has_content?("Ye can always pretend to be a bloodthirsty polar bear")
  end
end
