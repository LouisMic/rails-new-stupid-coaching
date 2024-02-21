require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "Asking a question yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello how are you?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end

  test "Having an empty space in the end of the word doesn't change the answer" do
    visit ask_url
    fill_in "question", with: "Hello how are you? "
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end

  test "Answer positively to a motivation message" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"

    assert_text "Great"
  end
end
