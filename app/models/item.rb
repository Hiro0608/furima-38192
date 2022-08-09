class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :trading_area
  belongs_to :trading_day
  belongs_to :trading_price
  belongs_to :user
  has_one_attached :image
  #has_one :order

  validates :image, presence: true
  validates :name, presence: true
  validates :price, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999}
  validates :introduction, presence: true
  validates :user, presence: true 
  validates :category_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :status_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :trading_price_id, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :trading_area_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :trading_days_id, numericality: { other_than: 1 , message: "can't be blank"}
end
