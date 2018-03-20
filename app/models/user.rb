class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts

  def admin?
    # Helper check if user is admin
    has_role?(:admin)
  end

  def editor?
    # Helper check if user is editor
    has_role?(:editor)
  end

end
