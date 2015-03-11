class Post < ActiveRecord::Base
  has_one :category_post, :dependent => :destroy
  has_one :category, through: :category_post, :dependent => :destroy

  validates :title, presence: true
  validates :body, presence: true
end
