class EntrySerializer < ActiveModel::Serializer
  attributes :id, :journal_id, :title, :body, :photo
end
