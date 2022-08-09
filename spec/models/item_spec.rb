require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end
  describe '出品新規登録' do
    context '出品新規登録できる場合' do
      it "image,name,price,introduction,category_id,status_id,trading_price_id,trading_area_id,trading_days_idが存在すれば登録できる" do
        expect(@item).to be_valid
      end
    end  
    context '出品新規登録できない場合' do
      it "写真が添付されていないと登録できない" do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it "商品名がなければ登録できない" do
        @item.name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end
      it "価格がなければ登録できない" do
        @item.price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end
      it "商品の説明がなければ登録できない" do
        @item.introduction = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Introduction can't be blank")
      end
      it "カテゴリーがなければ登録できない" do
        @item.category_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end
      it "商品の状態がなければ登録できない" do
        @item.status_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Status can't be blank")
      end
      it "配送料の負担がなければ登録できない" do
        @item.trading_price_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Trading price can't be blank")
      end
      it "発送元の地域がなければ登録できない" do
        @item.trading_area_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Trading area can't be blank")
      end
      it "発送までの日数がなければ登録できない" do
        @item.trading_days_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Trading days can't be blank")
      end
    end
  end
end



