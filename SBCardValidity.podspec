
Pod::Spec.new do |s|

  s.name         = "SBCardValidity"
  s.version      = "1.0.0"
  s.summary      = "🦑 Swifty Card Varlidator."
  s.description  = "SBCArdValidity is a framework that provides you the type and validation of your card data based on Luhn Algorithm."
  s.homepage     = "https://github.com/Silvio911/SBCardValidity.git"
  s.screenshots  = "https://gph.is/2AeXMGt"
  s.license      = "MIT"
  s.author       = { "Silvio Bulla" => "silviobulla@yahoo.com" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/Silvio911/SBCardValidity.git", :tag => "1.0.0" }
  s.source_files  = "CardEvaluatorFW/**/*"

end
