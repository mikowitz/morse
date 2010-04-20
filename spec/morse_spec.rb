require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Morse" do
  describe "translating English" do
    it "should translate a lower case letter correctly" do
      Morse.translate("m").should == "--"
    end

    it "should translate an upper case letter correctly" do
      Morse.translate("M").should == "--"
    end

    it "should chop multiple spaces" do
      Morse.translate("m  b").should == "-- / -..."
    end

    it "should strip leading and trailing whitespace" do
      Morse.translate("\t  m \n").should == "--"
    end
  end

  describe "translating Morse code" do
    it "should strip leading and trailing whitespace" do
      Morse.translate("  --\t \n").should == "m"
    end
  end
end
