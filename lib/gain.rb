require "gain/version"

class Gain
	attr_reader :title, :total, :progress_print
	@@progress_count = 0
	@@progress_mod
	@@round

	def initialize(args)
		args.each do |k,v|
			instance_variable_set("@#{k}", v) unless v.nil?
		end

		@progress_print = 1.0 if @progress_print == nil
		@@progress_mod = @total * @progress_print.to_f / 100.0
		@@round = @progress_print.to_s.split(".")[1].length

		puts @title if @title != nil
	end

	def progress
		@@progress_count += 1

		puts "#{(@@progress_count / @total.to_f * 100).round(@@round)}%" if @@progress_count % @@progress_mod == 0
		finish_progress if @@progress_count == @total
	end

	def finish_progress
		puts "Complete processed"
	end
end