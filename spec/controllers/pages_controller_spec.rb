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
      response.should be_success
    end
    it "should have the right title" do
      response.should have_selector("title",
                                    :content => "#{@base_title} | Cambiar password")
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

