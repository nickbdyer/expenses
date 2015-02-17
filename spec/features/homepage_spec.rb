require 'spec_helper'

feature 'Homepage' do

  before(:each) do
    visit '/'
  end

  scenario 'has a title' do
    expect(page).to have_title "Make Money Money!"
  end

  scenario 'has a form to submit an expense' do
    expect(page).to have_selector('form')
  end
end

feature 'Submiting a new expense' do

  before(:each) do
    visit '/'
  end

  scenario 'request summary appears on page after submission' do 
    fill_in "employee_name", with: "Nick Dyerstaits"
    fill_in "employee_id", with: "1234"
    fill_in "amount", with: "1000"
    select("Travel", from: "category")
    click_button 'submit'
    expect(find('.expense_item').text).to eql '£1000 - Travel'
  end

end
