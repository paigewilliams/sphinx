require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the riddle', {:type => :feature}) do
  it('will show a hint if the wrong answer is entered') do
    visit('/')
    fill_in('riddle', :with => "ggh" )
    click_button('submit')
    save_and_open_page
    expect(page).to have_content('hint')
  end
end
