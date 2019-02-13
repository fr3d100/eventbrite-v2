require 'rails_helper'

RSpec.describe "events/show.html.erb", type: :view do

  context 'it says welcome' do
	  it "displays 'event title'" do
	  	user = FactoryBot.create(:user)
	  	sign_in user
	  	@event = FactoryBot.create(:event)
	    render
	    expect(rendered).to have_content /My fucking conference/
	  end
	end

end