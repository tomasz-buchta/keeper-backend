module Resolvers
  class EditComment < GraphQL::Function
    argument :id, !types.Int
    argument :body, !types.String

    type Types::CommentType

    def call(_obj, args, _ctx)
      comment = Comment.find(args.id)
      comment.update_attributes(body: args.body)
      comment
    end
  end
end
