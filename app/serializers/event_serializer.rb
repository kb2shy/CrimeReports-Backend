class EventSerializer < ActiveModel::Serializer
  attributes :case_id, :content
  has_one :case_id
  has_many :content
end
