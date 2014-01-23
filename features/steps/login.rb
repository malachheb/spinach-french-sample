class Login < Spinach::FeatureSteps

  Lorsque 'je me connecte en tant que admin' do
    visit '/'
    fill_in 'Username', :with => "user"
    fill_in 'Password', :with => "password"
    click_button 'LOGIN'
  end

  Alors "je dois voir la page d'accueil" do
    page.should have_content "user"
  end


end
