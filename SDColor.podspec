Pod::Spec.new do |spec|
  spec.name         = 'SDColor'
  spec.version      = '0.1'
  spec.summary      = 'Dead simple connivence categories for UIColor.'
  spec.homepage     = 'https://github.com/steam/SDColor'
  spec.author       = { 'Sean Dougherty' => 'sean@process255.com' }
  spec.source       = { :git => 'https://github.com/steam/SDColor.git', :tag => "v#{spec.version}" }
  spec.description  = 'Use hexidecimal values to create UIColor objects.'
  spec.source_files = 'SDColor/*.{h,m}'
  spec.requires_arc = false
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
end