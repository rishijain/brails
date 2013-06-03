class UserTopic
  include Mongoid::Document
  field :is_completed, type: Boolean, default: false

  belongs_to :user
  belongs_to :topic
end
