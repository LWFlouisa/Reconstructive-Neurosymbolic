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

        if node1_outcome == node2_outcome
          open("_aggregator/consonsens/objective_nuetral.txt", "a") { |f|
            f.puts "#{node1_outcome} matches with #{node2_outcome}"
          }

          open("_knowledgebase/result.pl", "w") { |f|
            f.puts "outcome(nuetral_outcome, matches)."
          }
        else
          puts "These outcomes do not match, and therefore will not be retained."
        end
      end
    end
  end
end
