BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(str)
  up_string = str.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end