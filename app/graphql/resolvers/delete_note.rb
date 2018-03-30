module Resolvers
  class DeleteNote < GraphQL::Function
    argument :id, !types.Int

    type Types::NoteType

    def call(_obj, args, _ctx)
      note = Note.find(args.id)
      note&.delete
      note
    end
  end
end
