module Resolvers
  class AddComment < GraphQL::Function
    argument :noteId, !types.Int
    argument :body, !types.String

    type Types::CommentType

    def call(_obj, args, _ctx)
      Comment.create(note_id: args.noteId, body: args.body)
    end
  end
end
