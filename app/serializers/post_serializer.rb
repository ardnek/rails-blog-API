class PostSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :body

  has_one :user, except: :posts
  has_many :comments, except: :posts
end
