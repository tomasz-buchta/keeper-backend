module Resolvers
  class EditComment < GraphQL::Function
    argument :id, !types.Int
    argument :body, !types.String

    type Types::CommentType

    def call(_obj, args, _ctx)
      Comment.find(args.id).tap do |comment|
        comment.update_attributes!(body: args.body)
      end
    end
  end
end
