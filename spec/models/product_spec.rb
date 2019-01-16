require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'validations tests' do
    it 'ensures presence of product name' do
      product  = Product.new(product_type: 'shirt', price: '20000', stock: 1000 ).save
      expect(product).to eq(false)
    end
    it 'ensures presence of product type' do
      product  = Product.new(name: 'banda phase II shirt', price: 20000, stock: 1000 ).save
      expect(product).to eq(false)
    end
    it 'ensures presence of product price' do
      product  = Product.new( name: 'banda phase II shirt', product_type: 'shirt', stock: 1000 ).save
      expect(product).to eq(false)
    end
    it 'ensures presence of stock' do
      product  = Product.new(name: 'banda phase II shirt', product_type: 'shirt', description: 'joint project', size: 'medium', event: 'banda phase II', design: '1', price: 20000, color: 'blue and white words').save
      expect(product).to eq(false)
    end
    it 'should save successfully with all fields' do
      product  = Product.new(name: 'banda phase II shirt', product_type: 'shirt', description: 'joint project', size: 'medium', event: 'banda phase II', design: '1', price: 20000, color: 'blue and white words', stock: 1000 ).save
      expect(product).to eq(true)
    end
      
    it 'should save successfully without all necessary fields' do
      product  = Product.new(name: 'banda phase II shirt', product_type: 'shirt', event: 'banda phase II',  price: 20000, stock: 1000 ).save
      expect(product).to eq(true)
    end
   end
   context 'should save the product data correctly' do
    let(:product) {Product.new(name: 'banda phase II shirt', product_type: 'shirt', description: 'joint project', size: 'medium', event: 'banda phase II', design: '1', price: 20000, color: 'blue and white words', stock: 'availble' )
    }
    it "should create product with correct details" do
      expect(product.name).to eq 'banda phase II shirt'
      expect(product.product_type).to eq 'shirt'
      expect(product.description).to eq 'joint project'
      expect(product.size).to eq 'medium'
      expect(product.event).to eq 'banda phase II'
      expect(product.design).to eq '1'
      expect(product.price).to eq 20000
      expect(product.color).to eq 'blue and white words'
      expect(product.stock).to eq 'availble'
    end
    
   end
  
end
