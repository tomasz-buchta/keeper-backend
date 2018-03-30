Types::NoteType = GraphQL::ObjectType.define do
  name "Note"
  field :title, types.String
  field :body, types.String
end
