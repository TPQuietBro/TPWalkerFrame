Pod::Spec.new do |s|

  s.name         = "walkerSpec"

  s.version      = "0.0.1"

  s.summary      = "A short description of walkerSpec."

  s.description  = "TPFrame"

  s.license = "MIT"

  s.homepage     = "https://github.com/TPQuietBro/TPWalkerFrame.git"

  s.author             = { "tangpeng" => "allentp@163.com" }

  s.source       = { :git => "https://github.com/TPQuietBro/TPWalkerFrame.git", :tag => "#{s.version}" }

  s.source_files  = "TPWalkerFrame", "TPWalkerFrame/**/*.{h,m}"

  s.exclude_files = "Classes/Exclude"

end
