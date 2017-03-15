require 'spec_helper'

describe 'Home page' do
  it 'Index page' do
    visit '/'
    expect(page).to have_content('Blog in')
  end
end
