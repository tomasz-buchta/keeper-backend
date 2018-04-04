require 'rails_helper'

RSpec.describe NoteSearchService do
  let(:tags) { [] }
  let(:state) { nil }
  let(:title) { nil }
  subject { described_class.new(tags: tags, state: state, title: title).call }
  it { is_expected.to be_a(Array) }
  it { is_expected.not_to be_empty }

  let!(:notes) {
    [
      Note.create!(state: 'active', tag_list: ["dev", "programming"]),
      Note.create!(state: 'complete', tag_list: ["dev", "graphql"])
    ] 
  }

  describe "Search by state" do
    let(:state) { 'active' }
    it { expect(subject.first.state).to eq('active') }
    it { expect(subject.count).to eq(1) }
  end

  describe "Search by tags" do
    let(:tags) { ["programming"] }
    it { expect(subject.first.state).to eq('active') }
    it { expect(subject.count).to eq(1) }
  end
end
