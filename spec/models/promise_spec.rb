require "rails_helper"
 
RSpec.describe Promise, type: :model  do
    describe "validations" do
        it { should validate_presence_of(:body) }
        it { should validate_presence_of(:status) }
    end
end