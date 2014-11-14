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

		@@progress_count = 0
		@progress_print = 1 if @progress_print == nil
		@@progress_mod = (@total * @progress_print.to_f / 100.0).to_i

		if @@progress_mod > 1.0
			@@progress_mod = @@progress_mod.to_i
		else
			@@progress_mod = 1
		end
		
		@progress_print.to_s.include?(".") ? @@round = @progress_print.to_s.split(".")[1].length : @@round = 0

		puts @title if @title != nil
	end

	def progress
		@@progress_count += 1

		puts "#{(@@progress_count / @total.to_f * 100).round(@@round)}%" if @@progress_count % @@progress_mod == 0
		finish_progress if @@progress_count == @total
	end

	def finish_progress
		puts "Complete progress"
	end
end
