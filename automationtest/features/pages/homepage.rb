class HomePage < SitePrism::Page
  
    set_url '/index.php?controller=my-account'
    element :homepg_rep, :css, '#center_column > p'
  
  
  def ChkHomepage
    expect(homepg_rep.text).to eql "Welcome to your account. Here you can manage all of your personal information and orders."
  end
  
  
  end