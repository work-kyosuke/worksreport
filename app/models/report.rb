class Report < ApplicationRecord
    
    attribute :status, :string, default: '未承認'
    attribute :progress, :string, default: '実施待ち'
    
    belongs_to :user
    has_one_attached :pdf_file
    has_one_attached :filename
    
    
    
    
    
    
end
