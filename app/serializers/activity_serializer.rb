class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :difficulty, :updated_at, :created_at
end
