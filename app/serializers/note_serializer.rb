class NoteSerializer < ActiveModel::Serializer
  attributes :id

  has_one :title
  has_one :content
end
