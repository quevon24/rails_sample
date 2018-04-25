class Post < ApplicationRecord

  # https://stackoverflow.com/questions/24279948/rails-validate-only-on-create-or-on-update-when-field-is-not-blank

  # a post belongs to a category
  belongs_to :category
  belongs_to :user
  validates :title, :body, :category_id, presence: true

  def self.search(term)
    # Buscar term en title o body
    # where('LOWER(title) LIKE :term OR LOWER(body) LIKE :term', term: "%#{term.downcase}%")
    # Buscar term en title, body o category name
    includes(:category).where('LOWER(title) LIKE :term OR LOWER(body) LIKE :term OR LOWER(categories.name) LIKE :term ', term: "%#{term.downcase}%").references(:category)
  end

end
