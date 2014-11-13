require 'spec_helper'

describe Gain do
	it "test" do
		gain = Gain.new :title => "Start 10,000 Progress", :total => 10000, :progress_print => 0.01

		for i in 1..10000 do
			gain.progress
		end
	end
end