class Post < ApplicationRecord

  # https://stackoverflow.com/questions/24279948/rails-validate-only-on-create-or-on-update-when-field-is-not-blank

  validates :title, presence: true
  validates :body, presence: true

end
