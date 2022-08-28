class OrderForm < ApplicationRecord
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :post_code, :trading_area_id, :city, :house_number, :building_name, :phone_number, :token

  with_options presence: true do
    validates :user_id
    validates :item_id
    validates :post_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'はハイフン(-)の記載は必要です' }
    validates :trading_area_id, numericality: { other_than: 1 , message: "を選択してください"} 
    validates :city
    validates :house_number
    validates :phone_number, format: { with: /\A\d{10,11}\z/, message: 'はハイフン(-)の記載は必要ありません' }
    validates :token
  end

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(order_id: order.id, post_code: post_code, trading_area_id: trading_area_id, city: city, house_number: house_number, building_name: building_name, phone_number: phone_number)
  end
  
end
