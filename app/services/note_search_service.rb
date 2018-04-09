class NoteSearchService
  def initialize(adapter: Note, tags: nil, state: nil, title: nil)
    @adapter = adapter
    @tags, @state, @title = tags, state, title
  end

  def call
    scope_by_tags(adapter).where(search_options)
  end

  private

  def search_options
    {}.tap do |conditions|
      conditions[:state] = state if state
      conditions[:title] = title if title
    end
  end

  def scope_by_tags(scope)
    tags ? scope.tagged_with(tags, any: true) : scope
  end

  attr_reader :adapter, :tags, :state, :title
end
