
Pod::Spec.new do |s|
	s.name         = "MRKViewUtils"
	s.version      = "1.0.1"
	s.summary      = "MRKTrace pod utils to make easier the view structure."
	s.description  = "MRKTrace pod utils to make easier the view structure."
	s.homepage     = "https://github.com/mrktrace/MRKViewUtils"

	# ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

	s.license      = "MIT"

	# ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

	s.author             = { "MRKTrace" => "mrktrace@gmail.com" }
	s.social_media_url   = "http://twitter.com/OfficiaMRKTrace"

	# ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

	s.platform     = :ios, "8.0"
	s.swift_version = "4.0"

	# ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

	s.source       = { :git => "https://github.com/mrktrace/MRKViewUtils.git", :tag => "1.0.1" }

	# ――― Sub specs ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

	s.source_files = "MRKViewUtils/src/**/*.swift"
end
