class CreateTradingDays < ActiveRecord::Migration[6.0]
  def change
    create_table :trading_days do |t|

      t.timestamps
    end
  end
end
