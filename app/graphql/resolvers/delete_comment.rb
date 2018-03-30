module Resolvers
  class DeleteComment < GraphQL::Function
    argument :id, !types.Int

    type Types::CommentType

    def call(_obj, args, _ctx)
      comment = Comment.find(args.id)
      comment&.delete
      comment
    end
  end
end
