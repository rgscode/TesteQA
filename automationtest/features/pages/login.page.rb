class LoginPage < SitePrism::Page
  
  set_url '/index.php?controller=authentication&back=my-account'
  element :emailField, :xpath, '/html/body/div/div[2]/div/div[3]/div/div/div[2]/form/div/div[1]/input'
  element :passwordField, :xpath, '/html/body/div/div[2]/div/div[3]/div/div/div[2]/form/div/div[2]/span/input'
  element :loginbutton, :xpath, '/html/body/div/div[2]/div/div[3]/div/div/div[2]/form/div/p[2]/button'


def userLogin(email, password)
  emailField.set     (email)
  passwordField.set  (password)
  loginbutton.click
end

element:login_error, :css, '#center_column > div.alert.alert-danger > p'

def ChkLoginError
  expect(login_error.text).to eql "There is 1 error"
end

end