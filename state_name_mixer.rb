class StateNameMixer
  def self.mix_it_up(input_states)
    state_combs = input_states.combination(2)

    anagram_hash = {}
    state_combs.each do |comb|
      state_1, state_2 = comb

      #key = state_1 + state_2
      #key = key.chars.to_a
      #key.sort!
      #key = (state_1 + state_2).chars.to_a
      key = (state_1 + state_2).chars.to_a
      key.sort!

      if anagram_hash[key]
        return [anagram_hash[key], comb] 
      end
      anagram_hash[key] = comb
    end

#    debugger
#    anagram_hash.values.each do |v|
#      if v.count > 1
#        puts v
#      end
#    end
  end
end
