# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "arel"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Bryan Helmkamp", "Nick Kallen", "Emilio Tagua"]
  s.date = "2010-06-07"
  s.description = "Arel is a Relational Algebra for Ruby. It 1) simplifies the generation complex\nof SQL queries and it 2) adapts to various RDBMS systems. It is intended to be\na framework framework; that is, you can build your own ORM with it, focusing on\ninnovative object and collection modeling as opposed to database compatibility\nand query generation."
  s.email = "bryan@brynary.com"
  s.extra_rdoc_files = ["History.txt", "README.markdown"]
  s.files = ["History.txt", "README.markdown"]
  s.homepage = "http://github.com/brynary/arel"
  s.require_paths = ["lib"]
  s.rubyforge_project = "arel"
  s.rubygems_version = "1.8.23"
  s.summary = "Arel is a relational algebra engine for Ruby"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["~> 3.0.0"])
    else
      s.add_dependency(%q<activesupport>, ["~> 3.0.0"])
    end
  else
    s.add_dependency(%q<activesupport>, ["~> 3.0.0"])
  end
end
