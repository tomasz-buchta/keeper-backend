Types::NoteType = GraphQL::ObjectType.define do
  name "Note"

  field :comments, !types[Types::CommentType]

  field :id, types.ID
  field :title, types.String
  field :body, types.String
end
