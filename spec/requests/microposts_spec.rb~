require 'spec_helper'
require 'application_helper'
require 'pages_helper'

describe "Microposts" do

  before(:each) do
    user = Factory(:user)
    visit signin_path
    fill_in :email,    :with => user.email
    fill_in :password, :with => user.password
    click_button
  end

  describe "creation" do

    describe "failure" do

      it "should not make a new micropost" do
        lambda do
          visit root_path
          fill_in :micropost_content, :with => ""
          click_button
          response.should render_template('pages/home')
          response.should have_selector("div#error_explanation")
        end.should_not change(Micropost, :count)
      end
    end

    describe "success" do

      it "should make a new micropost" do
        lista =  [":)",":D",":(",">:o","<3",":3",":o",":'(",":p",">:(","xd","ipsum",";)",":*","-_-","o:)","3:)",":v","8)","8|",":/","o.O",":megusta:",":fuckyea:",":yuno:",":trollface:"]
	for i in 0..25
	content = lista[i]
        lambda do
          visit root_path
          fill_in :micropost_content, :with => content
          click_button
	  render_template('pages/home')
	end.should change(Micropost, :count).by(1)
	end
	lista =  [":son:",":lol:",":really:",":fuuu:",":happy:",":ummm:",":okay:",":fuckyeagirl:",":motherofgod:",":sadtroll:",":yaoming:",":ninja:",":emmm:",":fuuugirl:",":happygirl:",":angry:",
	          ":foreveralone:",":challengeaccepted:",":whynot:",":trolldad:",":raisins:",":pukerainbows:",":cool:",":fuuugirl2:",":omf:",":why:"]
	for i in 0..25
	content = lista[i]
        lambda do
          visit root_path
          fill_in :micropost_content, :with => content
          click_button
	  render_template('pages/home')
	end.should change(Micropost, :count).by(1)
	end
	lista =  [":neveralone:",":kiddingme:",":suspicious:",":trollgirl:",":inglip:",":itsfree:",":mentira:",":feellikeasir:",":cereales:",":betterthanexpected:",":awwwyeaaa:",":fapgirl:",":fap:",
	          ":trolledtroll:",":raisins2:",":jodete:",":itssomething:",":pokerface:",":upset:",":uuuf:",":menti:",":mirada:",":no:",":nothing:",":notbad1:",":notbad2:"]
	for i in 0..25
	content = lista[i]
        lambda do
          visit root_path
          fill_in :micropost_content, :with => content
          click_button
	  render_template('pages/home')
	end.should change(Micropost, :count).by(1)
	end
	lista =  [":desprecio:",":friki:",":serious1:",":serious2:",":truestory:",":observer:",":freddie:",":jackie:","http","https","www","ftp","www.youtube.com/watch?v=set5wts",
	          "https",":observer:",":pokerface:",":omf:",":pukerainbows:",":okay:","3:)","o:)",">:(",":no:",":nothing:",":notbad:",":notbad2:"]
	for i in 0..25
	content = lista[i]
        lambda do
          visit root_path
          fill_in :micropost_content, :with => content
          click_button
	  render_template('pages/home')
	end.should change(Micropost, :count).by(1)
	end
	content = "ipsum"
	lambda do
          visit root_path
          fill_in :micropost_content, :with => content
          click_button
	  render_template('pages/home')
          response.should have_selector("span.content", :content => " ipsum ")
        end.should change(Micropost, :count).by(1)
      end
    end
  end
end
