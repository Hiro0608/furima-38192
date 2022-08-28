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
        expect(@item.errors.full_messages).to include("Category を選択してください")
      end
      it "商品の状態がなければ登録できない" do
        @item.status_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Status を選択してください")
      end
      it "配送料の負担がなければ登録できない" do
        @item.trading_price_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Trading price を選択してください")
      end
      it "発送元の地域がなければ登録できない" do
        @item.trading_area_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Trading area を選択してください")
      end
      it "発送までの日数がなければ登録できない" do
        @item.trading_day_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Trading day を選択してください")
      end
      it "カテゴリーに「---」が選択されている場合は出品できない" do
        @item.category_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Category を選択してください")
      end
      it "商品の状態に「---」が選択されている場合は出品できない" do
        @item.status_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Status を選択してください")
      end
      it "配送料の負担に「---」が選択されている場合は出品できない" do
        @item.trading_price_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Trading price を選択してください")
      end
      it "発送元の地域に「---」が選択されている場合は出品できない" do
        @item.trading_area_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Trading area を選択してください")
      end
      it "発送までの日数に「---」が選択されている場合は出品できない" do
        @item.trading_day_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Trading day を選択してください")
      end
      it "userが紐付いていない場合は登録できない" do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("User must exist")
      end
      it "価格に半角数字以外が含まれている場合は出品できない" do
        @item.price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end
      it "価格が300円未満では出品できない" do
        @item.price = 299
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be greater than or equal to 300")
      end
      it "価格が9_999_999円を超えると出品できない" do
        @item.price = 10_000_000
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be less than or equal to 9999999")
      end
    end
  end
end



