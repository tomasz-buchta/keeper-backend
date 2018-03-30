module Resolvers
  class EditNote < GraphQL::Function
    argument :id, !types.Int

    argument :title, types.String
    argument :body,  types.String
    argument :tags,  types[types.String]
    argument :state, StateEnum

    type Types::NoteType

    def call(_obj, args, _ctx)
      Note.find(args.id).tap do |note|
        note.update_attributes(title: args.title, body: args.body, tag_list: args.tags, state: args.state)
      end
    end
  end
end
