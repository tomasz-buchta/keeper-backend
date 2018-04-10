module Resolvers
  class SearchPhrase < GraphQL::Function
    argument :phrase, !types.String

    # Flaky example
    SearchInterface = GraphQL::InterfaceType.define do
      name("SearchInterface")
      field :body, types.String
    end

    SearchType = GraphQL::ObjectType.define do
      interfaces [SearchInterface]
    end
  end
end
