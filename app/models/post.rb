class Post < ApplicationRecord
  

  belongs_to :user
  validates :title, :description, :author, :b_subject, :image, :attachment, presence: true
  has_one_attached :image
  #has_one_attached :avatar
  has_one_attached :attachment
  
  has_many :comments, dependent: :destroy


  mount_uploader :attachment, AttachmentUploader 
   
  #validates :name, presence: true 
  # mount_uploader :attachment, AttachmentUploader 

  # scope : sort, -> { post(created_at: :desc) }

end
