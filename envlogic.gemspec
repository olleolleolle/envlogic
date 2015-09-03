lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rake'
require 'envlogic/version'

Gem::Specification.new do |spec|
  spec.name          = "env-logic"
  spec.platform      = Gem::Platform::RUBY
  spec.version       = Envlogic::VERSION
  spec.authors       = ['pavlo_vavruk', 'Maciej Mensfeld']
  spec.email         = %w( pavlo.vavruk@gmail.com maciej@mensfeld.pl )

  spec.summary       = %q{ Ruby based library which allows to set and get environments values
                           and easily check environment }
  spec.description   = %q{ Library used to manage environments for your Ruby application }
  spec.homepage      = 'https://github.com/karafka/envlogic'

  spec.add_dependency 'activesupport'
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = %w( lib )
end
