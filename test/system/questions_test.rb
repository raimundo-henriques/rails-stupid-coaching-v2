require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "asking something yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Is this a question?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end

  test "Saying 'I am going to work' yields a nice response from the coach" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"

    assert_text "Great!"
  end

  test "clicking Ask a new question takes us back to /ask" do
    visit answer_url
    click_link "Ask a new question"

    assert_current_path "/ask"
  end
end
