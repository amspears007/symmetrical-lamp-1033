require 'rails_helper'

RSpec.describe 'employees show page' do

  let!(:king_soopers) {Supermarket.create!(name:'King Soopers', location:'111 St')}
  let!(:safeway) {Supermarket.create!(name:'Safeway', location:'222 St')}
  let!(:costco) {Supermarket.create!(name:'Costco', location:'333 St')}

  let!(:apple) {kingsoopers.items.create!(name:'granny smith', price: 1)}
  let!(:chicken) {kingsoopers.items.create!(name:'chicken', price: 6)}
  let!(:cake) {kingsoopers.items.create!(name:'choc cake', price: 3)}
  let!(:candy) {kingsoopers.items.create!(name:'pez', price: 2)}
  let!(:pepper) {safeway.items.create!(name:'bell pepper', price: 2)}
  let!(:cookies) {safeway.items.create!(name:'oreos', price: 4)}

  let!(:jerry) {Customer.create!(name:'Jerry')}
  let!(:elaine) {Customer.create!(name:'Elaine')}
  let!(:george) {Customer.create!(name:'George')}

  let!(:jerry_chicken) CustomerItem.create!(customer: jerry.id, item: chicken.id)
  let!(:jerry_apple) CustomerItem.create!(customer: jerry.id, item: apple.id)
  let!(:elaine_candy) CustomerItem.create!(customer: elaine.id, item: candy.id)

  




  




  