require File.dirname(__FILE__) + '/spec_helper'
require File.join(File.dirname(__FILE__) + "/../lib/gtranslate/mixins")

describe Google::Translate do

  describe "array mixin" do
        
    it "should translate from a single level array using to_french" do
      r = ["Hello", "Goodbye"].to_french

      r.should have(2).elements
      r.first.should == "Bonjour"
      r.last.should == "Au revoir"
    end

    it "should translate from a multi level array using to_french" do
      r = ["Yes", ["Hello", "Hi"], ["Goodbye", "Bye"]].to_french

      r.should have(3).elements
      r.first.should == "Oui"

      r[1].should have(2).elements
      r[1].should == ["Bonjour", "Salut"]

      r.last.should have(2).elements
      r.last.should == ["Au revoir", "Au revoir"]
    end

    it "should translate from a single level array using to_fr" do
      r = ["Hello", "Goodbye"].to_fr

      r.should have(2).elements
      r.first.should == "Bonjour"
      r.last.should == "Au revoir"
    end

    it "should translate from a multi level array using to_fr" do
      r = ["Yes", ["Hello", "Hi"], ["Goodbye", "Bye"]].to_fr

      r.should have(3).elements
      r.first.should == "Oui"

      r[1].should have(2).elements
      r[1].should == ["Bonjour", "Salut"]

      r.last.should have(2).elements
      r.last.should == ["Au revoir", "Au revoir"]
    end

    it "should translate from a single level array using english_to_french" do
      r = ["Hello", "Goodbye"].english_to_french

      r.should have(2).elements
      r.first.should == "Bonjour"
      r.last.should == "Au revoir"
    end

    it "should translate from a multi level array using english_to_french" do
      r = ["Yes", ["Hello", "Hi"], ["Goodbye", "Bye"]].english_to_french

      r.should have(3).elements
      r.first.should == "Oui"

      r[1].should have(2).elements
      r[1].should == ["Bonjour", "Salut"]

      r.last.should have(2).elements
      r.last.should == ["Au revoir", "Au revoir"]
    end

    it "should translate from a single level array using english_to_fr" do
      r = ["Hello", "Goodbye"].english_to_fr

      r.should have(2).elements
      r.first.should == "Bonjour"
      r.last.should == "Au revoir"
    end

    it "should translate from a multi level array using english_to_fr" do
      r = ["Yes", ["Hello", "Hi"], ["Goodbye", "Bye"]].english_to_fr

      r.should have(3).elements
      r.first.should == "Oui"

      r[1].should have(2).elements
      r[1].should == ["Bonjour", "Salut"]

      r.last.should have(2).elements
      r.last.should == ["Au revoir", "Au revoir"]
    end

    it "should translate from a single level array using en_to_french" do
      r = ["Hello", "Goodbye"].en_to_french

      r.should have(2).elements
      r.first.should == "Bonjour"
      r.last.should == "Au revoir"
    end

    it "should translate from a multi level array using en_to_french" do
      r = ["Yes", ["Hello", "Hi"], ["Goodbye", "Bye"]].en_to_french

      r.should have(3).elements
      r.first.should == "Oui"

      r[1].should have(2).elements
      r[1].should == ["Bonjour", "Salut"]

      r.last.should have(2).elements
      r.last.should == ["Au revoir", "Au revoir"]
    end

    it "should translate from a single level array using en_to_fr" do
      r = ["Hello", "Goodbye"].en_to_fr

      r.should have(2).elements
      r.first.should == "Bonjour"
      r.last.should == "Au revoir"
    end

    it "should translate from a multi level array using en_to_fr" do
      r = ["Yes", ["Hello", "Hi"], ["Goodbye", "Bye"]].en_to_fr

      r.should have(3).elements
      r.first.should == "Oui"

      r[1].should have(2).elements
      r[1].should == ["Bonjour", "Salut"]

      r.last.should have(2).elements
      r.last.should == ["Au revoir", "Au revoir"]
    end

  end
end