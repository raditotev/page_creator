
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "page_creator/version"

Gem::Specification.new do |spec|
  spec.name          = "page_creator"
  spec.version       = PageCreator::VERSION
  spec.authors       = ["Radi Totev"]
  spec.email         = ["raditotev@gmail.com"]

  spec.summary       = %q{ Creates methods initialising site prism pages at run time }
  spec.description   = %q{ This gem removes the need of creating an extra module
                           with methods creating or reusing site prism pages
                           instances
                          }
  spec.homepage      = "https://github.com/raditotev/page_creator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activesupport", "~> 5.0"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
