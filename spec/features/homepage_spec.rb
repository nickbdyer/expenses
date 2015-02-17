require 'spec_helper'

feature 'Homepage' do

  scenario 'the page has a title' do
    visit '/'
    expect(page).to have_title "Make Money Money!"
  end
  
end
