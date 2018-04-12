require 'rails_helper'

describe 'KeeperSchema' do
  let(:context) { {} }
  let(:variables) { {} }
  # Call `result` to execute the query
  let(:result) {
    res = KeeperSchema.execute(
      query_string,
      context: context,
      variables: variables
    )
    # Print any errors
    if res["errors"]
      pp res
    end
    res
  }

  describe "note" do
    # provide a query string for `result`
    let(:query_string) { %|{
	noteSearch(tags: "dev", state: "active") {
		id
	}
}| }

    context "when there's no current user" do
      it "is nil" do
        # calling `result` executes the query
        expect(result["data"]["viewer"]).to eq(nil)
      end
    end

    context "when there's a current user" do
      # override `context`
      let(:context) {
        { current_user: User.new(name: "ABC") }
      }
      it "shows the user's name" do
        user_name = result["data"]["viewer"]["name"]
        expect(user_name).to eq("ABC")
      end
    end
  end
end
