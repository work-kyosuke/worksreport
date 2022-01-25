class Lineform < ApplicationRecord
    
    attribute :line_status, :string, default: '未承認'
    attribute :progress, :string, default: '申請内容確認中'
    belongs_to :user
    has_one_attached :pdf_file
    
    
    
    
   
end
