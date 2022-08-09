class CreateTradingPrices < ActiveRecord::Migration[6.0]
  def change
    create_table :trading_prices do |t|

      t.timestamps
    end
  end
end
