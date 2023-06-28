system("cd node1; ruby analyze.rb")
system("cd node2; ruby analyze.rb")

require_relative "_aggregator/Aggregator/aggregator.rb"

Aggregator::Network.consult_dataset
