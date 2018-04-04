require 'rails_helper'

RSpec.describe NoteSearchService do
  let(:tags) { [] }
  let(:state) { nil }
  let(:title) { nil }
  subject { described_class.new(tags: tags, state: state, title: title).call }
  it { is_expected.to be_a(Array) }
  it { is_expected.to be_empty }

  describe "Search by state" do
    let!(:notes) {
      [
        Note.create!(state: 'active'),
        Note.create!(state: 'complete')
      ] 
    }
    let(:state) { 'active' }
    it { expect(subject.first.state).to eq('active') }
    it { expect(subject.count).to eq(1) }
  end
end
