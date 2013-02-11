require 'spec_helper'

describe "StaticPages" do
	let(:base_title) {"Ruby on Rails Tutorial Sample App"}
	subject {page}
	describe 'Home page' do
		before {visit root_path}

		it {should have_selector('title',:test=>full_title(''))}
	end
	describe 'Help page' do
		before {visit help_path}

		it {should have_selector('title',:test=>full_title('Help'))}
		
	end
	describe 'About page' do
		before {visit about_path}

		it {should have_selector('title',:test=>full_title('About'))}
	
	end
	describe 'Contact page' do
		before {visit contact_path}
		it { should have_selector('title',:test=>full_title('Contact'))}
		#it "should have the title 'contact'" do
		#	page.should have_selector('title',:test=>"#{base_title} | Contact")
		#end
	end
end
