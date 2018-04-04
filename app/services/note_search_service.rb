class NoteSearchService
  def initialize(adapter: Note, tags: nil, state: nil, title: nil)
    @adapter = adapter
    @tags, @state, @title = tags, state, title
  end

  def call
    search_options = {}.tap do |conditions|
      conditions[:state] = state.to_sym if state
    end
    adapter.where(search_options).to_a
  end

  private

  attr_reader :adapter, :tags, :state, :title
end
