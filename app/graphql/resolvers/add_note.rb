module Resolvers
  class AddNote < GraphQL::Function
    argument :title, !types.String
    argument :body,  types.String

    type Types::NoteType

    def call(_obj, args, _ctx)
      Note.create(args.to_h)
    end
  end
end
