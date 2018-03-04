module SitePrism
  class Page
    def self.inherited(subclass)
      PageCreator::Pages.collect_pages(subclass)
    end
  end
end
