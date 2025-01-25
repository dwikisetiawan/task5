Given('I am on the Jubelio login page') do
  @driver.get("https://v2.jubelio.com/auth/login")
end

When('I login with valid email and password') do
  @driver.find_element(xpath: "//*[@id='textfield-email']").send_keys("yourEmail")
  @driver.find_element(xpath: "//*[@id='textfield-password']").send_keys("yourPassword")
  sleep(1)
  @driver.find_element(xpath: "//*[@id='shell']/div/div/div[2]/div/div/div/div/div/div/div[2]/div/div[2]/div[2]/form/div[4]/button").click
  sleep(10)
end

Then('I should see Selamat Datang di Trial Jubelio') do
  expect(@driver.find_element(xpath: "//*[@id='content']/div/div/div/div[2]/div/div[1]/div[1]/h1").text).to eq "Selamat Datang di Trial Jubelio"
end

Given('I am on the inventory page') do
  @driver.find_element(xpath: "//*[@id='shell']/div/div/div/div[1]/div[1]/div[2]/ul/li[3]/a/span").click
end

When('I click Transaksi Stok button') do
  @driver.find_element(xpath: "//*[@id='content']/div/div/div/div/div/a[3]").click
end

When('I click Tambah Baru button') do
  @driver.find_element(xpath: "//*[@id='content']/div/div/div[3]/button").click
  @driver.find_element(xpath: "//*[@id='content']/div/div/div[2]/div[2]/div[1]/div/div[2]/div/div/div[3]/button").click
end

When('I fill in the Lokasi, Tag and Keterangan') do
  z1 = @driver.find_element(xpath: "/html/body/div[2]/div/div/form/div/div[2]/div/div[1]/div[2]/div/div[2]/div/div/div/input")
  z1.send_keys("P")
  sleep(3)
  z1.send_keys(:arrow_down, :enter)
  sleep(1)
  
  z2 = @driver.find_element(xpath: "/html/body/div[2]/div/div/form/div/div[2]/div/div[1]/div[2]/div/div[4]/div/div/div/input")
  z2.send_keys("D")
  sleep(3)
  z2.send_keys(:arrow_down, :enter)
  sleep(1)
  
  @driver.find_element(xpath: "/html/body/div[2]/div/div/form/div/div[2]/div/div[1]/div[2]/div/div[6]/div/div/textarea[1]").send_keys("ini Automation")
  sleep(1)
end

When('I select the product to be stocked') do
  @driver.find_element(xpath: "//*[@id='content']/div/div/form/div/div[2]/div/div[3]/div/div/div[1]/div/div/div/div/div[1]/div/div[2]/div/div/span/button").click
  sleep(1)
  z3 = @driver.find_element(xpath: "/html/body/div[3]/div/div[1]/div/div/div[1]/div/div/input").send_keys("Gambar Sunday")
  sleep(3)
  @driver.find_element(xpath: "/html/body/div[3]/div/div[1]/div/div/div[2]/div/div/div/div[1]/div/div/div").click
  sleep(1)
end

When('I determine how much product stock') do
  @driver.find_element(xpath: "//*[@id='content']/div/div/form/div/div[2]/div/div[3]/div/div/div[1]/div/div[1]/div/div/div[3]/div/div/div/span").click
  @driver.find_element(xpath: "//*[@id='content']/div/div/form/div/div[2]/div/div[3]/div/div/div[1]/div/div[1]/div/div/div[3]/div/div/div/input").send_keys("2")
  @driver.find_element(xpath: "//*[@id='content']/div/div/form/div/div[2]/div/div[3]/div/div/div[1]/div/div[2]/div/div/div[2]/div").click
sleep(3)
end

When('I click Simpan button') do
  z4 = @driver.find_element(xpath: "//*[@id='content']/div/div/form/div/div[1]/div/div[2]/div/div/div/button")
  @driver.execute_script("arguments[0].click();", z4)
  sleep(3)
end

Then('I will see a popup with the text Berhasil menambahkan data') do
  expect(@driver.find_element(xpath: "/html/body/div[3]/div/div[2]").text).to eq "Berhasil menambahkan data"
  sleep(10)
end