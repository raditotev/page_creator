require_relative '../lib/page_creator/pages.rb'
RSpec.describe Pages do

  describe "Given I provide camel case class" do
    class TestClass end;
    Pages.collect_pages(TestClass)
    it "should create method returning new instance of that class" do
      expect(Pages.test_class.class).to be TestClass
    end
  end

  describe "Given I provide a single word class as argument" do
    class Test end;
    Pages.collect_pages(Test)
    it "should create method returning new instance of that class" do
      expect(Pages.test_class.class).to be TestClass
    end
  end

  describe "Given I provide a long class name as argument" do
    class SomeReallyLongClassName end;
    Pages.collect_pages(SomeReallyLongClassName)
    it "should create method returning new instance of that class" do
      expect(Pages.some_really_long_class_name.class).to be SomeReallyLongClassName
    end
  end
end
