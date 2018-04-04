module Resolvers
  class SearchNote < GraphQL::Function
    argument :tags, types[types.String]
    argument :state, types.String
    argument :title, types.String

    type !types[Types::NoteType]

    def call(_obj, args, _ctx)
      NoteSearchService.new(args.to_h.symbolize_keys).call
    end
  end
end
