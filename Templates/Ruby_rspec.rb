
require_relative 'spec_helper'


begin
  require '$name'
rescue LoadError => le
  \$stderr.puts("Unable to load $name: #{le.message}")
  puts "Ruby library import directories: " + \$:.join("\n")
end

describe $name do
  before(:each) do
    @obj = Object.new.extend($name)
    # or
    # @obj.new
  end

  after do
  end


  it "Should be a kind of $name" do
    @obj.should be_kind_of($name)
  end


end
