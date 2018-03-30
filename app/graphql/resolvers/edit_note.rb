module Resolvers
  class EditNote < GraphQL::Function
    argument :id, !types.Int

    argument :title, types.String
    argument :body,  types.String
    argument :tags,  types[types.String]

    type Types::NoteType

    def call(_obj, args, _ctx)
      note = Note.find(args.id)
      note.update_attributes(title: args.title, body: args.body, tag_list: args.tags)
      note
    end
  end
end
