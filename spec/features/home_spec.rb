require 'spec_helper'

describe 'Home page' do
  it 'Index page' do
    visit '/'
    expect(page).to have_content('BLOG IN')
  end
end
