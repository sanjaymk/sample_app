require 'spec_helper'

describe PagesController do
render_views
  
  before (:each) do
   @base_title = "Ruby on Rails Tutorial Sample App |"
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end


  describe "GET 'about'" do
    it "GET 'about' should be successful" do
      get 'about'
      response.should be_success
    end
  end
  
  it "GET 'home' should have a title" do
    get 'home'
    response.should have_selector("title",:content=>@base_title + " Home")
  end

  it "GET 'about' should have a title" do
   get 'about'
   response.should have_selector("title",:content=>@base_title + " About")
  end

  it "GET 'contact' should have title" do
    get 'contact'
    response.should have_selector("title",:content=>@base_title + " Contact")
  end

end
