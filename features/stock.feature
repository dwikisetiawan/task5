Feature: Update Stock of a Produk

  Background:
    Given I am on the Jubelio login page
    When I login with valid email and password
    Then I should see Selamat Datang di Trial Jubelio

  Scenario: Successfully update stock of a product
    Given I am on the inventory page
    When I click Transaksi Stok button
    And I click Tambah Baru button
    And I fill in the Lokasi, Tag and Keterangan
    And I select the product to be stocked
    And I determine how much product stock
    And I click Simpan button
    Then I will see a popup with the text Berhasil menambahkan data
