require 'spec_helper'

describe "StaticPages" do
	let(:base_title) {"Ruby on Rails Tutorial Sample App"}
	describe 'Home page' do
		it "should have the base title" do
			visit '/static_pages/home'
			page.should have_selector('title',:test=>"#{base_title}")
		end
	end
	describe 'Help page' do
		it "should have the title 'help'" do
			visit '/static_pages/help'
			page.should have_selector('title',:test=>"#{base_title} | Help")
		end
	end
	describe 'About page' do
		it "should have the title 'about'" do
			visit '/static_pages/about'
			page.should have_selector('title',:test=>"#{base_title} | About")
		end
	end
	describe 'Contact page' do
		it "should have the title 'contact'" do
			visit '/static_pages/contact'
			page.should have_selector('title',:test=>"#{base_title} | Contact")
		end
	end
end
