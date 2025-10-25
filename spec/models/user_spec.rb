require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  describe 'ユーザー登録' do
    context '新規登録できる場合' do
      it '必須項目が入力できている' do
        expect(@user).to be_valid
      end

      it '名前は漢字またはカナで入力できる' do
        @user.name = '山田タロウ'
        expect(@user).to be_valid
      end

      it 'パスワードが６文字以上半角英数字である' do
        @user.password = '123abc'
        @user.password_confirmation = '123abc'
        expect(@user).to be_valid
      end
    end

    context '新規登録できない場合' do
      # 空欄チェック
      it '名前が空では登録できない' do
        @user = FactoryBot.build(:user)
        @user.name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("名前を入力してください")
      end

      it '名前が漢字またはカナでないと登録できない' do
        @user = FactoryBot.build(:user)
        @user.name = 'yamadataro'
        @user.valid?
        expect(@user.errors.full_messages).to include("名前は漢字またはカナで入力してください")
      end

      it 'ニックネームが空では登録できない' do
        @user = FactoryBot.build(:user)
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("ニックネームを入力してください")
      end

      it 'メールアドレスが空では登録できない' do
        @user = FactoryBot.build(:user)
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("メールアドレスを入力してください")
      end

      it 'パスワードが空では登録できない' do
        @user = FactoryBot.build(:user)
        @user.password = ''
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end

      it 'メールアドレスが重複している場合は登録できない' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages.uniq).to include('メールアドレスはすでに登録されています')
      end

      it 'メールアドレスに@が含まれてないと登録できない' do
        @user.email = 'testexample.com'
        @user.valid?
        expect(@user.errors.full_messages).to include("メールアドレス@を含めて入力してください")
      end

      it 'パスワードが5文字以下だと登録できない' do
        @user.password = 'abc12'
        @user.password_confirmation = 'abc12'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは6文字以上で入力してください")
      end

      it 'パスワードが全角文字が含まれていると登録できない' do
        @user.password = 'ＡＢＣＤＥＦ'
        @user.password_confirmation = 'ＡＢＣＤＥＦ'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは半角文字にしてください')
      end

      it 'パスワードが数字のみでは登録できない' do
        @user.password = '123456'
        @user.password_confirmation = '123456'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは英字を含めて設定してください')
      end

      it 'パスワードが英字のみでは登録できない' do
        @user.password = 'abcdef'
        @user.password_confirmation = 'abcdef'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードには数字を含めて設定してください')
      end

      it '確認用パスワードと異なる場合は登録できない' do
        @user.password_confirmation = 'abc124'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワード（確認）が一致していません')
      end
    end
  end
end