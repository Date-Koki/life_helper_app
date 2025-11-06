class Category < ActiveHash::Base
  self.data = [
    { id: 0, name: '未選択' },
    { id: 1, name: '手続き関係' },
    { id: 2, name: '引っ越し関係' },
    { id: 3, name: '家具・家電関係' },
    { id: 4, name: '掃除関係' },
    { id: 5, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :lifehack_posts
end