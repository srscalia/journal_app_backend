class JournalSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :theme, :entries
end
