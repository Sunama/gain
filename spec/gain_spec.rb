require 'spec_helper'

describe Gain do
	it "test with no decimal" do
		gain = Gain.new :title => "Start 10,000 Progress", :total => 10000, :progress_print => 1

		for i in 1..10000 do
			gain.progress
		end
	end

	it "test with decimal" do
		gain = Gain.new :title => "Start 10,000 Progress", :total => 10000, :progress_print => 0.1

		for i in 1..10000 do
			gain.progress
		end
	end
end