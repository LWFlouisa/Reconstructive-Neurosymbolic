module Aggregator
  class Network
    def self.consult_dataset
      # If two nuetral outcomes agree, then retain.
      imagined_outcome1 = File.readlines("node1/_imaginedpath/outcomes/nuetral_outcome.txt")
      imagined_outcome2 = File.readlines("node2/_imaginedpath/outcomes/nuetral_outcome.txt")

      total_iteration = imagined_outcome1.size.to_i

      row = 0

      total_iteration.times do
        node1_outcome = imagined_outcome1[row]
        node2_outcome = imagined_outcome2[row]

        # The result is the same across nodes, then retain result and script a prolog reason.
        if node1_outcome == node2_outcome
          open("_aggregator/consonsens/objective_nuetral.xml", "a") { |f|
            f.puts "<?xml version = '1.0' encoding = 'UTF-8'?>"
            f.puts "<neurosym context='memory'>"
            f.puts "  <aggregate>#{node1_outcome} matches with #{node2_outcome}</aggregate>"
            f.puts "</neurosym>"
          }

          open("_knowledgebase/result.pl", "w") { |f|
            f.puts "outcome(nuetral_outcome, matches)."
          }

          system("7z a objective_nuetral.7z *"
        else
          puts "These outcomes do not match, and therefore will not be retained."
        end
      end
    end
  end
end
