# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'ios-rakuten-api-demo' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for ios-rakuten-api-demo
	pod 'Alamofire'
	pod 'ObjectMapper', '~> 2.2'
	pod 'AlamofireImage'


  target 'ios-rakuten-api-demoTests' do
    inherit! :search_paths
    # Pods for testing
  end

end

plugin 'cocoapods-keys', {
  :project => "ios-rakuten-api-demo",
  :keys => [
    "applicationId"
]}
