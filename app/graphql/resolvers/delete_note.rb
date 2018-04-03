module Resolvers
  class DeleteNote < GraphQL::Function
    argument :id, !types.Int

    type Types::NoteType

    def call(_obj, args, _ctx)
      Note.find(args.id).tap do |note|
        note&.destroy
      end
    end
  end
end
