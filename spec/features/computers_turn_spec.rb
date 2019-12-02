feature "It is the computer's turn" do
  scenario "there is a confirmation of the choice randomly generated by computer" do
    srand(2) # seeds computer's turn to "Rock"
    sign_in_and_play
    choose "paper"
    click_button "GO!"
    expect(page).to have_content "Computer chose rock!"
  end
end