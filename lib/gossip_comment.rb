require 'csv'

class GossipComment
	attr_accessor :gossip_id, :content

	def initialize(gossip_id, content)
		@gossip_id = gossip_id
		@content = content
	end

	def save
		CSV.open("./db/gossip_comment.csv", "ab") do |csv|
			csv << [@gossip_id, @content]
		end
	end

	def self.all(gossip_id)
	  all_gossip_comments = []
	  CSV.read("./db/gossip_comment.csv").each do |csv_line|
	    all_gossip_comments << GossipComment.new(csv_line[0], csv_line[1]) if csv_line[0] == gossip_id
	  end
	  return all_gossip_comments
	end
end