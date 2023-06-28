#module LogicEngine
#end

module Reconstructor

  class NeuralNet
    def self.establish_nodes
      system("mkdir node1; mkdir node2")

      # In each directory
      system("cd node1; mkdir _imaginedpath; mkdir _narratives")
      system("cd node1/_imagedpath; mkdir outcomes; cd outcomes; touch nuetral_outcome.txt")

      system("cd node2; mkdir _imaginedpath; mkdir _narratives")
      system("cd node2/_imagedpath; mkdir outcomes; cd outcomes; touch nuetral_outcome.txt")
    end

    def self.find_nuetral
      # Make sure that story elements are kept on seperate lines.
      character_fate = File.readlines("_narratives/outcomes/character_fates.txt")
      dating_outcome = File.readlines("_narratives/outcomes/dating_outcomes.txt")

      # Make the total imagined branch the size of the darkest path.
      # branch_size = branch_1.size.to_i

      # Imagined a compromise path that is neither ideal or tragic.
      open("_imaginedpath/outcomes/nuetral_outcome.txt", "w") { |f|
        segment_1 = character_fate[1].strip
        segment_2 = dating_outcome[0].strip

        f.puts "#{segment_1} #{segment_2}"
      }
    end

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
          open("aggregator/consonsens/objective_nuetral.txt", "a") { |f|
            f.puts "#{node1_outcome} matches with #{node2_outcome}"
          }
        else
          puts "These outcomes do not match, and therefore will not be retained."
        end
      end
    end
  end

  ## Way of manipulating data to test the AI.
  class DatasetHandling
    def self.establish_tree # Creates essential directories for manipulating data.
      system("mkdir _rulesets; mkdir _adaptation; cd _rulsets; mkdir choice; cd choice; touch value.txt")
      system("cd _rulesets; touch rules.txt")
    end

    # This rule can be seen in a similar way to using a pan to look for gold.
    def self.standard_vortex
      def self.shuffle_rules
        known_ruleset     = File.readlines("_rulesets/rules.txt")
        scrambled_ruleset = known_ruleset.shuffle

        open("_rulesets/scrambled_set.txt", "w") { |f|
          f.puts scrambled_ruleset
        }

        puts "Changing the ruleset to evaluate performance..."
      end

      # Operates the main vortex.
      def self.operate_vortex
        known_ruleset     = File.readlines("_rulesets/rules.txt")

        ## These are the rows.
        row_1 = 0
        row_2 = 1
        row_4 = 3
        row_8 = 7
        row_7 = 6
        row_5 = 4

        ## Performs standard subroutines.
        system("#{known_ruleset[row_1]}")
        system("#{known_ruleset[row_2]}")
        system("#{known_ruleset[row_4]}")
        system("#{known_ruleset[row_8]}")
        system("#{known_ruleset[row_7]}")
        system("#{known_ruleset[row_5]}")
        system("#{known_ruleset[row_1]}")
      end

      # Shuffles the vortex ruleset.
      def self.shuffle_vortex
        scrambled_ruleset = File.readlines("_rulesets/scrambled_set.txt")

        ## These are the rows.
        row_1 = 0
        row_2 = 1
        row_4 = 3
        row_8 = 7
        row_7 = 6
        row_5 = 4

        ## Performs standard subroutines.
        system("#{scrambled_ruleset[row_1]}")
        system("#{scrambled_ruleset[row_2]}")
        system("#{scrambled_ruleset[row_4]}")
        system("#{scrambled_ruleset[row_8]}")
        system("#{scrambled_ruleset[row_7]}")
        system("#{scrambled_ruleset[row_5]}")
        system("#{scrambled_ruleset[row_1]}")
      end
    end

    ## This ruleset can be seen as different modes of the same ruleset.
    def self.adaptational
      def self.create_rulesets
        row = 0 ## The value of row is 0.

        ## The directory knwon_ruleset is _ruleset/rules.txt
        ruleset = File.readlines("_rulesets/rules.txt")

        ### Values of the individual rows, as Ruby counts from zero.
        rule1 = 0 #row + 1
        rule2 = 1 #row + 2
        rule3 = 2 #row + 3
        rule4 = 3 #row + 4
        rule5 = 4 #row + 5
        rule6 = 5 #row + 6
        rule7 = 6 #row + 7
        rule8 = 7 #row + 8
        rule9 = 8 #row + 9

        first_rule    = ruleset[rule1].tr "
", ""
        second_rule   = ruleset[rule2].tr "
", ""
        third_rule    = ruleset[rule3].tr "
", ""
        fourth_rule   = ruleset[rule4].tr "
", ""
        fifth_rule    = ruleset[rule5].tr "
", ""
        sixth_rule    = ruleset[rule6].tr "
", ""
        seventh_rule  = ruleset[rule7].tr "
", ""
        eighth_rule   = ruleset[rule8].tr "
", ""
        nineth_rule   = ruleset[rule9].tr "
", ""

  ### Creation of the actual rulesets.
        ruleset_1 = "#{first_rule}
#{second_rule}
#{third_rule}
#{fourth_rule}
#{fifth_rule}
#{sixth_rule}
#{seventh_rule}
#{eighth_rule}
#{nineth_rule}"

        ruleset_2 = "#{nineth_rule}
#{first_rule}
#{second_rule}
#{third_rule}
#{fourth_rule}
#{fifth_rule}
#{sixth_rule}
#{seventh_rule}
#{eighth_rule}"

        ruleset_3 = "#{eighth_rule}
#{nineth_rule}
#{first_rule}
#{second_rule}
#{third_rule}
#{fourth_rule}
#{fifth_rule}
#{sixth_rule}
#{seventh_rule}"

        ruleset_4 = "#{seventh_rule}
#{eighth_rule}
#{nineth_rule}
#{first_rule}
#{second_rule}
#{third_rule}
#{fourth_rule}
#{fifth_rule}
#{sixth_rule}"

        ruleset_5 = "#{sixth_rule}
#{seventh_rule}
#{eighth_rule}
#{nineth_rule}
#{first_rule}
#{second_rule}
#{third_rule}
#{fourth_rule}
#{fifth_rule}"

        ruleset_6 = "#{fifth_rule}
#{sixth_rule}
#{seventh_rule}
#{eighth_rule}
#{nineth_rule}
#{first_rule}
#{second_rule}
#{third_rule}
#{fourth_rule}"

        ruleset_7 = "#{fourth_rule}
#{fifth_rule}
#{sixth_rule}
#{seventh_rule}
#{eighth_rule}
#{nineth_rule}
#{first_rule}
#{second_rule}
#{third_rule}"

        ruleset_8 = "#{third_rule}
#{fourth_rule}
#{fifth_rule}
#{sixth_rule}
#{seventh_rule}
#{eighth_rule}
#{nineth_rule}
#{first_rule}
#{second_rule}"

        ruleset_9 = "#{second_rule}
#{third_rule}
#{fourth_rule}
#{fifth_rule}
#{sixth_rule}
#{seventh_rule}
#{eighth_rule}
#{nineth_rule}
#{first_rule}"

        open("_adaptation/ruleset_shift1.txt", "w") { |f|
          f.puts ruleset_1
        }

        open("_adaptation/ruleset_shift2.txt", "w") { |f|
          f.puts ruleset_2
        }

        open("_adaptation/ruleset_shift3.txt", "w") { |f|
          f.puts ruleset_3
        }

        open("_adaptation/ruleset_shift4.txt", "w") { |f|
          f.puts ruleset_4
        }

        open("_adaptation/ruleset_shift5.txt", "w") { |f|
          f.puts ruleset_5
        }

        open("_adaptation/ruleset_shift6.txt", "w") { |f|
          f.puts ruleset_6
        }

        open("_adaptation/ruleset_shift7.txt", "w") { |f|
          f.puts ruleset_7
        }

        open("_adaptation/ruleset_shift8.txt", "w") { |f|
          f.puts ruleset_8
        }

        open("_adaptation/ruleset_shift9.txt", "w") { |f|
          f.puts ruleset_9
        }
      end

      def adaptation_vortex
        ## Create new sound_file with new ruleset permutation.
        ruleset_choice = File.read("_rulesets/choice/value.txt").to_s.to_i

        # Resets reset choice if at 8 in Ruby.
        if ruleset_choice > 8
          ruleset_choice = 0
        end

        mutation1 = File.readlines("_adaptation/ruleset_shift1.txt")
        mutation2 = File.readlines("_adaptation/ruleset_shift2.txt")
        mutation3 = File.readlines("_adaptation/ruleset_shift3.txt")
        mutation4 = File.readlines("_adaptation/ruleset_shift4.txt")
        mutation5 = File.readlines("_adaptation/ruleset_shift5.txt")
        mutation6 = File.readlines("_adaptation/ruleset_shift6.txt")
        mutation7 = File.readlines("_adaptation/ruleset_shift7.txt")
        mutation8 = File.readlines("_adaptation/ruleset_shift8.txt")
        mutation9 = File.readlines("_adaptation/ruleset_shift9.txt")

        ruleset_list = [
          mutation1, mutation2, mutation3,
          mutation4, mutation5, mutation6,
          mutation7, mutation8, mutation9,
        ]

        chosen_ruleset = ruleset_list[ruleset_choice]

        ## These are the rows.
        vortex_row_1 = 0
        vortex_row_2 = 1
        vortex_row_4 = 3
        vortex_row_8 = 7
        vortex_row_7 = 6
        vortex_row_5 = 4

        ## Performs standard subroutines.
        system("#{chosen_ruleset[vortex_row_1]}")
        system("#{chosen_ruleset[vortex_row_2]}")
        system("#{chosen_ruleset[vortex_row_4]}")
        system("#{chosen_ruleset[vortex_row_8]}")
        system("#{chosen_ruleset[vortex_row_7]}")
        system("#{chosen_ruleset[vortex_row_5]}")
        system("#{chosen_ruleset[vortex_row_1]}")

        open("_rulesets/choice/value.txt", "w") { |f|
          ruleset_choice = ruleset_choice + 1

          f.puts ruleset_choice
        }
      end
    end

  end
end
