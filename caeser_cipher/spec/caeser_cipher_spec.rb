require './lib/caeser_cipher'
describe "#caeser_cipher" do
  it "returns cipher code from message shifted 1 letter" do
    expect(caesar_cipher("aaa", 1)).to eql ("bbb")
  end
  it "returns shifted code from message shifted 10 letters" do
    expect(caesar_cipher("aaa", 10)).to eql("kkk")
  end
  it "return shifted code > than 26 letters" do
    expect(caesar_cipher("aaa", 30)).to eql("eee")
  end
  it "returns shifted code with negative cipher" do
    expect(caesar_cipher("aaa", -10)).to eql("qqq")
  end
  it "return shifted code with white space intact" do
    expect(caesar_cipher("hello jake", 2)).to eql("jgnnq lcmg")
  end
  it "return shifted code with capital letters intact" do
    expect(caesar_cipher("Hi Bob", 3)).to eql("Kl Ere")
  end
  it "return shifted code with punctuation intact" do
    expect(caesar_cipher("Let's go, to Jill's!", 2)).to eql("Ngv'u iq, vq Lknn'u!")
  end
end