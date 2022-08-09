class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table   :items do |t|
      t.string     :name, null: false
      t.integer    :price, null: false
      t.text       :introduction, null: false
      t.references :user, null: false
      t.integer    :category_id, null: false
      t.integer    :status_id, null: false
      t.integer    :trading_price_id, null: false
      t.integer    :trading_area_id, null: false
      t.integer    :trading_days_id, null: false
      t.timestamps
    end
  end
end
