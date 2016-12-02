#
# Be sure to run `pod lib lint XCGLogentriesLogDestination.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "XCGLoggerLogentriesConnector"
  s.version          = '1.0.0'
  s.summary          = "XCGLogger extension to log to the Logentries service."
  s.description      = <<-DESC
                       Allows you to send your XCGLogger logs to the Logentries cloud logging service.
                       DESC
  s.homepage         = "http://github.com/brianbatchelder/XCGLoggerLogentries"
  s.screenshots     = ""
  s.license          = 'MIT'
  s.author           = { "Brian Batchelder" => "brian@briansbrain.biz" }
  s.source           = { :git => "https://github.com/brianbatchelder/XCGLoggerLogentries.git", :tag => "#{s.version}" }
  s.social_media_url = 'http://twitter.com/briansbrainbiz'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'XCGLogentriesLogDestination/XCGLogentriesLogDestination.swift'
  #s.resource_bundles = {}

  # s.public_header_files
  # s.frameworks
  s.dependency 'XCGLogger'
  s.dependency 'le'
  
end
