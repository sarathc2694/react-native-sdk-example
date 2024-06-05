require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.module_name  = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.author       = package['author']
  s.homepage     = package['homepage']

  s.source       = { :git => package['repository']['url'] }
  s.vendored_frameworks = "Frameworks/*"
  s.resource_bundles = {
    package['name'] => ["Resources/*"],
  }
  s.dependency "hermes-engine"
  if respond_to?(:install_modules_dependencies, true)
    install_modules_dependencies(s)
   else
   end
end