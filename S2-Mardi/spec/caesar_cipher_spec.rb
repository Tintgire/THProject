require_relative '../lib/caesar_cipher.rb'

describe "la phrase c est il bien decaler ?" do
  it "1 la phrase c est il bien decaler ?" do
    expect(caesar_cipher("abCdef", 1)).to eq(bcDefg)
  end

  it "26 la phhrase c est il bien decaler ?" do
    expect(caesar_cipher("qwertyuioP", 26)).to eq("qwertyuioP")
  end

  it "15 la phrase cest il bien decaler ?" do
    expect(caesar_cipher("jklmn jklmn", 20)).to eq("defgh defgh")
  end
end
