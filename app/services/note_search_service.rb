class NoteSearchService
  def initialize(adapter: Note, tags: nil, state: nil, title: nil)
    @adapter = adapter
    @tags, @state, @title = tags, state, title
  end

  def call
    search_options = {}.tap do |conditions|
      conditions[:state] = state.to_sym if state
    end
    # TODO: refactor this
    if tags.empty?
      adapter.where(search_options).to_a
    else
      adapter.tagged_with(tags, any: true).where(search_options).to_a
    end
  end

  private

  attr_reader :adapter, :tags, :state, :title
end
