class CreateTradingAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :trading_areas do |t|

      t.timestamps
    end
  end
end
