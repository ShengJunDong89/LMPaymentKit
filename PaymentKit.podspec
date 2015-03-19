Pod::Spec.new do |s|
  s.name                = "PaymentKit"
  s.version             = "1.0.0"
  s.summary             = "Utility library for creating credit card payment forms."
  s.license             = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage            = "https://stripe.com"
  s.author              = { "Alex MacCaw" => "alex@stripe.com" }
  s.source              = { :git => "https://github.com/ShengJunDong89/JLPermissions.git", :branch => "master"}
  s.source_files        = 'PaymentKit/*.{h,m}'
  s.public_header_files = 'PaymentKit/*.h'
  s.ios.resource_bundle = { 'PaymentKitResources' => 'PaymentKit/Resources/Cards/*.png' }
  s.platform            = :ios
  s.requires_arc        = true
end