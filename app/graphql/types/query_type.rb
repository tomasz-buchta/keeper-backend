Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :noteSearch, function: Resolvers::SearchNote.new

  field :notes, !types[Types::NoteType] do
    description "Fetch all notes"
    resolve ->(_obj, _args, _ctx) {
      Note.all
    }
  end
end
