require 'spec_helper'

RSpec.feature "Battle", :type => :feature do
  scenario "Enter player names" do
    sign_in_and_play
    expect(page).to have_content 'John V. Pete'
  end
end
