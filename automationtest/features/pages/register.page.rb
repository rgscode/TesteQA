class RegisterPage < SitePrism::Page
  
    set_url '/index.php?controller=authentication&back=my-account'

    element :emailField_1, :xpath, '/html/body/div/div[2]/div/div[3]/div/div/div[1]/form/div/div[2]/input'
    element :registerbtn_initial, :xpath, '/html/body/div/div[2]/div/div[3]/div/div/div[1]/form/div/div[3]/button'
    element :registerbtn_final, :xpath, '/html/body/div/div[2]/div/div[3]/div/div/div[1]/form/div/div[3]/button'
    element :registerbtn_final, :xpath, '/html/body/div/div[2]/div/div[3]/div/div/form/div[4]/button/span'
    element :gender_mr, :css,     '#id_gender1'
    element :first_name, :id,    'customer_firstname'
    element :last_name, :id,     'customer_lastname'
    element :email_field_2, :id, 'email'
    element :pass_field_2, :id, 'passwd'
    element :birth_day, :xpath,     '/html/body/div/div[2]/div/div[3]/div/div/form/div[1]/div[6]/div/div[1]/div/select/option[6]'
    element :birth_month, :xpath,   '/html/body/div/div[2]/div/div[3]/div/div/form/div[1]/div[6]/div/div[2]/div/select/option[11]'
    element :birth_year, :xpath,    '/html/body/div/div[2]/div/div[3]/div/div/form/div[1]/div[6]/div/div[3]/div/select/option[33]'
    element :first_name_2, :id, 'firstname'
    element :last_name_2, :id, 'lastname'
    element :addres_field, :id, 'address1'
    element :city_field, :id, 'city'
    element :state_field, :xpath, '/html/body/div/div[2]/div/div[3]/div/div/form/div[2]/p[7]/div/select/option[6]'
    element :zip_field, :id, 'postcode'
    element :cellp_field, :id, 'phone_mobile'
    element :refer_field, :id, 'alias'


  def userRegister(email, password, fname, lname, addr, city, zip, cellp)
    emailField_1.set  (email)
    registerbtn_initial.click
    gender_mr.click
    first_name.set (fname)
    last_name.set (lname)
    email_field_2.set (email)
    pass_field_2.set (password)
    birth_day.click
    birth_month.click
    birth_year.click
    first_name_2.set (fname)
    last_name_2.set (lname)
    addres_field.set (addr)
    city_field.set (city)
    state_field.click
    zip_field.set (zip)
    cellp_field.set (cellp)
    refer_field.set (addr)

    registerbtn_final.click
  end


end