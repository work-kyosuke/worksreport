class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  attribute :user_type, :string, default: '未登録'
  
  has_many :reports
  has_many :lineforms
  
  def full_profile?
    name? && company? && c_postal? && c_address? && c_building? && c_floor? && c_p_number?
  end
  
  
  
end
