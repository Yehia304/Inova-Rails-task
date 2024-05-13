class Post < ApplicationRecord
  paginates_per 10
  belongs_to :user
  has_many :reviews

  validates :title, presence: true
  validates :body, presence: true


  def self.get_all(parameters)
    query = "true"
    query += " and user_id = #{parameters[:user_id]}" if parameters[:user_id].present?

    return Post.where(query).page parameters[:page] if parameters[:top].blank?
    return Post.where(query).order("id DESC").page parameters[:page]
  end
end
