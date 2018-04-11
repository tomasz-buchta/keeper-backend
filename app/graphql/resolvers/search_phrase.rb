module Resolvers
  class SearchPhrase < GraphQL::Function
    argument :phrase, !types.String

    type Types::SearchResultType
  end
end
