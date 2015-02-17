require 'spec_helper'

feature 'Homepage' do

  scenario 'has a title' do
    visit '/'
    expect(page).to have_title "Make Money Money!"
  end

  scenario 'has a form to submit an expense' do
    visit '/'
    expect(page).to have_selector('form')
  end
  
end
