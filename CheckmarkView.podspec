Pod::Spec.new do |s|
 s.name = 'CheckmarkView'
 s.version = '0.0.1'
 s.license = { :type => "MIT", :file => "LICENSE" }
 s.summary = 'Pixel perfect checkmark view for iOS'
 s.homepage = 'https://beewisedevelopment.com'
 s.social_media_url = 'https://beewisedevelopment.com'
 s.authors = { "Bee Wise Development" => "bee.wise.development@gmail.com" }
 s.source = { :git => "https://github.com/BeeWise/CheckmarkView-iOS.git", :tag => s.version.to_s }
 s.platforms = { :ios => "11.0" }
 s.requires_arc = true
 s.swift_versions = ['5.0']

 s.default_subspec = "Core"
 s.subspec "Core" do |ss|
     ss.source_files = "Sources/**/*.swift"
     ss.framework = "Foundation"
 end
end
