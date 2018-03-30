Types::NoteType = GraphQL::ObjectType.define do
  name "Note"

  field :comments, !types[Types::CommentType]

  field :id, types.ID
  field :title, types.String
  field :body, types.String
  field :tags, types[types.String], property: :tag_list
end
