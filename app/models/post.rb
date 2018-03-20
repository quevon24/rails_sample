class Post < ApplicationRecord

  # https://stackoverflow.com/questions/24279948/rails-validate-only-on-create-or-on-update-when-field-is-not-blank

  # a post belongs to a category
  belongs_to :category
  validates :title, :body, :category_id, presence: true

end
