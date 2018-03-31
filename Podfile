# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'

def testing_pods
    pod 'Quick'
    pod 'Nimble'
end

target 'Eisenhower Todo' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  pod 'Firebase/Auth'
  pod 'Firebase/Core'
  pod 'Firebase/Database'
  pod 'Firebase/Storage'
  pod 'Firebase/Firestore'
  pod 'Windless', '~> 0.1.5'
  pod 'AppCenter'
  pod 'TimePicker'
  target 'Eisenhower TodoTests' do
    inherit! :search_paths
    testing_pods
  end

  target 'Eisenhower TodoUITests' do
    inherit! :search_paths
    testing_pods
  end

end
