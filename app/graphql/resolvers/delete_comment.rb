module Resolvers
  class DeleteComment < GraphQL::Function
    argument :id, !types.Int

    type Types::CommentType

    def call(_obj, args, _ctx)
      Comment.find(args.id).tap do |comment|
        comment&.delete
      end
    end
  end
end
