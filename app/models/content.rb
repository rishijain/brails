class Content
  include Mongoid::Document
  include Mongoid::Paperclip 
  has_mongoid_attached_file :topic_content

  field :title, type: String
  field :content_body, type: String
  field :sq_no, type: Integer

  #validations
   validates :title, :content_body, :sq_no, :topic_id, :presence => true   
   validates :sq_no, :numericality => {:only_integer => true}

  belongs_to :topic
  has_many :questions, dependent: :destroy
end

