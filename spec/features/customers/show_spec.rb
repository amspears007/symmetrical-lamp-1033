require 'rails_helper'

RSpec.describe 'customer show page', type: :feature do

  let!(:king_soopers) {Supermarket.create!(name:'King Soopers', location:'111 St')}
  let!(:safeway) {Supermarket.create!(name:'Safeway', location:'222 St')}
  let!(:costco) {Supermarket.create!(name:'Costco', location:'333 St')}

  let!(:apple) {king_soopers.items.create!(name:'granny smith', price: 1)}
  let!(:chicken) {king_soopers.items.create!(name:'chicken', price: 6)}
  let!(:cake) {king_soopers.items.create!(name:'choc cake', price: 3)}
  let!(:candy) {king_soopers.items.create!(name:'pez', price: 2)}
  let!(:pepper) {safeway.items.create!(name:'bell pepper', price: 2)}
  let!(:cookies) {safeway.items.create!(name:'oreos', price: 4)}

  let!(:jerry) {Customer.create!(name:'Jerry')}
  let!(:elaine) {Customer.create!(name:'Elaine')}
  let!(:george) {Customer.create!(name:'George')}

  let!(:jerry_chicken) {CustomerItem.create!(customer_id: jerry.id, item_id: chicken.id)}
  let!(:jerry_apple) {CustomerItem.create!(customer_id: jerry.id, item_id: apple.id)}
  let!(:jerry_pepper) {CustomerItem.create!(customer_id: jerry.id, item_id: pepper.id)}
  let!(:elaine_candy) {CustomerItem.create!(customer_id: elaine.id, item_id: candy.id)}

describe "User Story 1 When I visit a customer show page" do
  it "I see the customer's name and I see its a list of its items with item's name, price, and the name of the supermarket that it belongs to" do
    visit "/customers/#{jerry.id}"
    save_and_open_page
    
    expect(page).to have_content('Name: Jerry')

    # within("#item-list") do
      expect(page).to have_content('Item: chicken')
      expect(page).to have_content('Price: 6')

      expect(page).to have_content('Supermarket: King Soopers')
      expect(page).to_not have_content('Name: George')
      expect(page).to_not have_content('Item: oreos')
      # end
    end
  end
end

  




  




  