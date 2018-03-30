Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :addNote, function: Resolvers::AddNote.new
  field :editNote, function: Resolvers::EditNote.new
  field :deleteNote, function: Resolvers::DeleteNote.new

  field :addComment, function: Resolvers::AddComment.new
  field :editComment, function: Resolvers::EditComment.new
  field :deleteComment, function: Resolvers::DeleteComment.new
end
