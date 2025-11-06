require 'rails_helper'

RSpec.describe LifehackPost, type: :model do
  before do
    @lifehack_post = FactoryBot.build(:lifehack_post)
  end

  describe '投稿' do
    context '投稿ができる' do
      
      it '全ての項目が入力できている' do
        expect(@lifehack_post).to be_valid
      end

      it 'カテゴリーが「未選択」以外であれば登録できる' do
        @lifehack_post.category_id = 1
        expect(@lifehack_post).to be_valid
      end
    end

    context '投稿ができない' do
      it 'タイトルが空欄だと投稿できない' do
        @lifehack_post.title = nil
        @lifehack_post.valid?
        expect(@lifehack_post.errors.full_messages).to include("タイトルがありません")
      end

      it 'カテゴリーが「未選択」だと投稿できない' do
        @lifehack_post.category_id = 0
        @lifehack_post.valid?
        expect(@lifehack_post.errors.full_messages).to include("カテゴリーが選択されていません")
      end

      it '内容が空欄だと登録できない' do
        @lifehack_post.description = ''
        @lifehack_post.valid?
        expect(@lifehack_post.errors.full_messages).to include("内容を入力してください")
      end
    end
  end
end
