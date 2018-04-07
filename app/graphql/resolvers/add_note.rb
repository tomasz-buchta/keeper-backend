module Resolvers
  class AddNote < GraphQL::Function
    argument :title, !types.String
    argument :body,  types.String
    argument :color, types.String
    argument :tags, types[types.String]
    argument :state, StateEnum

    type Types::NoteType

    def call(_obj, args, _ctx)
      Note.create(title: args.title, body: args.body, tag_list: args.tags, state: args.state, color: args.color)
    end
  end
end
