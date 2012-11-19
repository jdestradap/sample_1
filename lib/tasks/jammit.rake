desc "Package assets using Jammit"
task :jammit do
  require 'jammit'
  Jammit.package!
end