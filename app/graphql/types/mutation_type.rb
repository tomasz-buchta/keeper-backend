Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :addNote, function: Resolvers::AddNote.new
  field :editNote, function: Resolvers::EditNote.new
  field :deleteNote, function: Resolvers::DeleteNote.new
end
