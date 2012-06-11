require 'spec_helper'
require 'application_helper'
require 'pages_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title = "Micropost"
  end

  describe "GET 'newpassgen'" do
    before(:each) do
      get :newpassgen
    end
    it "should be successful" do
      response.should be_success
    end
    it "should have the right title" do
      response.should have_selector("title",
                                    :content => "#{@base_title} | Password cambiado")
    end

  end

  describe "GET 'newpass'" do

    before(:each) do
      get :newpass
    end
    
    it "should be successful" do
      response.should have_selector("div", :class => "field")
    end
    it "should have the right title" do
      response.should have_selector("title",
                                    :content => "#{@base_title} | Cambiar password")
    end

    it "should change the password" do
      lambda do
        visit signup_path
        fill_in :name,                :with => "pepe"
        fill_in :email,               :with => "pepe@gmail.com"
        fill_in :password,            :with => "1234"
	fill_in "Confirmar password", :with => "1234"
        click_button
        controller.should be_signed_in
        click_link "Salir"
        controller.should_not be_signed_in
	get :newpass
	visit :newpass
	fill_in :email,    :with => "pepe@gmail.com"
	click_button
	response.should be_success
      end
    end
    
  end

  describe "GET 'home'" do

    describe "when not signed in" do

      before(:each) do
        get :home
      end

      it "should be successful" do
        response.should be_success
      end

      it "should have the right title" do
        response.should have_selector("title",
                                      :content => "#{@base_title} | Inicio")
      end
    end

    describe "when signed in" do

      before(:each) do
        @user = test_sign_in(Factory(:user))
        other_user = Factory(:user, :email => Factory.next(:email))
        other_user.follow!(@user)
      end

    end
  end
end

