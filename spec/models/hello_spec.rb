ENV["RACK_ENV"] = "test"

require "./spec/spec_helper"
require "./app/models/hello"

describe Sample::Model::Hello do
  include Rack::Test::Methods

  before do
    @hello = create(:hello)
  end

  subject { @hello }

  it { should respond_to(:body) }
  it { should be_valid }

  describe "when body is not present" do
    before { @hello.body = " " }
    it { should_not be_valid }
  end
end
