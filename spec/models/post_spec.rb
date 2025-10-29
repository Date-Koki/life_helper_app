require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe '投稿' do
    context '投稿ができる' do
      
      it '全ての項目が入力できている' do
        expect(@post).to be_valid
      end

      it 'カテゴリーが「未選択」以外であれば登録できる' do
        @post.category_id = 1
        expect(@post).to be_valid
      end
    end

    context '投稿ができない' do
      it 'タイトルが空欄だと投稿できない' do
        @post.title = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("タイトルがありません")
      end

      it 'カテゴリーが「未選択」だと投稿できない' do
        @post.category_id = 0
        @post.valid?
        expect(@post.errors.full_messages).to include("カテゴリーが選択されていません")
      end

      it '日時（デッドライン）が空欄だと登録できない' do
        @post.schedule_at = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("日時（デッドライン）を入力してください")
      end

      it 'やることが空欄だと登録できない' do
        @post.description = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("やることを入力してください")
      end
    end
  end
end
