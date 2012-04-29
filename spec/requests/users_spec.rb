require 'spec_helper'

describe "Users" do

  describe "signup" do

    describe "failure" do

      it "should not make a new user" do
        lambda do
          visit signup_path
          fill_in "Nombre",             :with => ""
          fill_in "Email",              :with => ""
          fill_in "Password",           :with => ""
          fill_in "Confirmar password", :with => ""
          click_button
          response.should render_template('users/new')
          response.should have_selector("div#error_explanation")
        end.should_not change(User, :count)
      end
    end
    describe "success" do

      it "should make a new user" do
        lambda do
          visit signup_path
          fill_in "Nombre",             :with => "Example User"
          fill_in "Email",              :with => "user@example.com"
          fill_in "Password",           :with => "foobar"
          fill_in "Confirmar password", :with => "foobar"
          click_button
          response.should have_selector("div.flash.success",
                                        :content => "Bienvenido")
          response.should render_template('users/show')
        end.should change(User, :count).by(1)
      end
    end
  end

  describe "sign in/out" do

    describe "failure" do
      it "should not sign a user in" do
        visit signin_path
        fill_in :email,    :with => ""
        fill_in :password, :with => ""
        click_button
        response.should have_selector("div.flash.error", :content => "Combinacion")
      end
    end

    describe "success" do
      it "should sign a user in and out" do
        user = Factory(:user)
        visit signin_path
        fill_in :email,    :with => user.email
        fill_in :password, :with => user.password
        click_button
        controller.should be_signed_in
        click_link "Salir"
        controller.should_not be_signed_in
      end
    end
  end
end

