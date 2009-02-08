require File.join(File.dirname(__FILE__) + "/spec_helper")

describe Google::Translate do
  
  before(:each) do
    @gt = Google::Translate
  end
  
  it "should return a string" do
    expect_to_make_get_request
    response = @gt.to_french("Hello")
    
    response.should be_a_kind_of(String)
    response.should == "translated phrase"
  end
    
  it "should raise when no phrase passed" do
    lambda {
      @gt.english_to_french
    }.should raise_error(Google::Translate::NoPhrasePassed)
  end
  
  it "should raise with invalid from language passed" do
    lambda {
      @gt.klingon_to_english("Hello")
    }.should raise_error(Google::Translate::InvalidLanguage)
  end
  
  def expect_to_make_get_request
    @gt.should_receive(:get_translation).and_return("translated phrase")
  end  
end

describe Google::Tr do
  it "should match Google::Translate" do
    Google::Tr.should == Google::Translate
  end
end
