Types::NoteType = GraphQL::ObjectType.define do
  name "Note"

  field :comments, !types[Types::CommentType]

  field :id, types.ID
  field :title, types.String
  field :body, types.String
  field :color, types.String
  field :tags, types[types.String], property: :tag_list

  StateEnum = GraphQL::EnumType.define do
    name "States"
    description "States of Note"
    value("active", "Active Note")
    value("complete", "Completed Note")
    value("archived", "Archived Note")
  end

  field :state, StateEnum, "Note State"
end
