require File.dirname(__FILE__) + '/spec_helper'
require File.join(File.dirname(__FILE__) + "/../lib/gtranslate/mixins")

describe Google::Translate do
  
  describe "string mixin" do
    it "should translate from a string using to_french" do
      r = "Hello".to_french
      
      r.should be_a_kind_of(String)
      r.should == "Bonjour"
    end
    
    it "should translate from a string using to_fr" do
      r = "Hello".to_fr
      
      r.should be_a_kind_of(String)
      r.should == "Bonjour"
    end
    
    it "should translate from a string using english_to_french" do
      r = "Hello".english_to_french
      
      r.should be_a_kind_of(String)
      r.should == "Bonjour"
    end

    it "should translate from a string using english_to_fr" do
      r = "Hello".english_to_fr

      r.should be_a_kind_of(String)
      r.should == "Bonjour"
    end

   it "should translate from a string using en_to_french" do
      r = "Hello".en_to_french
      
      r.should be_a_kind_of(String)
      r.should == "Bonjour"
    end
    
   it "should translate from a string using en_to_fr" do
      r = "Hello".en_to_fr
      
      r.should be_a_kind_of(String)
      r.should == "Bonjour"
    end    
  end
  
end
