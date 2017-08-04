Pod::Spec.new do |s|
  s.name = 'SegueHandling'
  s.version = '0.1.0'
  s.license = 'MIT'
  s.summary = 'Protocol-Oriented Segue Handling in Swift'
  s.homepage = 'https://github.com/k-san/SegueHandling'
  s.authors = { 'Keiichi Sato' => 'keiichisato82@gmail.com' }
  s.source = { :git => 'https://github.com/k-san/SegueHandling.git', :tag => s.version }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Source/*.swift'

  s.ios.framework = 'UIKit'
end
