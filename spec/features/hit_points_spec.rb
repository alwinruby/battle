require 'spec_helper'

RSpec.feature "Battle", :type => :feature do
  scenario "returns the hit points of player 2" do
    sign_in_and_play
    expect(page).to have_content ("Pete: 60HP")
  end
end
