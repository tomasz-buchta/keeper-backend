SearchInterface = GraphQL::InterfaceType.define do
  resolve_type ->(obj, ctx) { 
    case obj
    when Comment then Types::CommentType
    when Note then Types::NoteType
    end
  }
  name("SearchInterface")
  field :body, types.String
end

Types::SearchResultType = GraphQL::ObjectType.define do
  name "Search"
  interfaces [SearchInterface]
end
