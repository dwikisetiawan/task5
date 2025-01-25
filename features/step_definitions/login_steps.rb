Given('i am on the Jubelio login page') do
  @driver.get("https://v2.jubelio.com/auth/login")
end

When('i enters a valid email and password') do
  @driver.find_element(xpath: "//*[@id='textfield-email']").send_keys("yourEmail")
  @driver.find_element(xpath: "//*[@id='textfield-password']").send_keys("yourPassword")
end

When('clicks on the login button') do
  @driver.find_element(xpath: "//*[@id='shell']/div/div/div[2]/div/div/div/div/div/div/div[2]/div/div[2]/div[2]/form/div[4]/button").click
  sleep(10)
end

Then('i should be redirected to the dashboard') do
  expect(@driver.find_element(xpath: "//*[@id='content']/div/div/div/div[2]/div/div[1]/div[1]/h1").text).to eq "Selamat Datang di Trial Jubelio"
end