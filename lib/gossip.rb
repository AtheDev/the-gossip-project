require 'csv'

class Gossip
	attr_accessor :author, :content, :comments

	def initialize(author, content)
		@author = author
		@content = content
		@comments = []
	end

	def save
		CSV.open("./db/gossip.csv", "ab") do |csv|
			csv << [@author, @content]
		end
	end

	def self.all
	  all_gossips = []
	  CSV.read("./db/gossip.csv").each do |csv_line|
	    all_gossips << Gossip.new(csv_line[0], csv_line[1])
	  end
	  return all_gossips
	end

	def self.find(id)
		self.all[id.to_i]
	end

	def self.update(id, author, content)
	  gossips = CSV.parse(File.read("db/gossip.csv"))
		gossips[id.to_i] = [author, content]
		data = gossips.map { |c| c.join(",") }.join("\n") +"\n"
		File.write("db/gossip.csv", data)
	end

	def add_comment(comment)
		@comments << comment
	end
end