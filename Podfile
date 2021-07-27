platform :ios, '9.0'

def import_pods
end

workspace 'XcodeExperiments.xcworkspace'

target 'Framework1' do
  project 'Framework1/Framework1.xcodeproj'
  use_frameworks!
  import_pods
end

target 'Framework1Tests' do
  project 'Framework1/Framework1.xcodeproj'
  use_frameworks!
  import_pods
end

post_install do |installer|
  # Dive into the generated xcconfig file for the Framework target and strip out the `-ObjC` linker flag.
  # CocoaPods adds this flag even though it's not required and it causes significant binary bloat when building against J2ObjC.
  # See the following section in the J2ObjC documentation for a discussion about this linker flag:
  # https://developers.google.com/j2objc/guides/required-link-flags#the_-objc_link_flag
  xcconfig_input_files = ["Pods-Framework1.debug.xcconfig", "Pods-Framework1.release.xcconfig"]
  xcconfig_input_files.each do |filename|
    path_to_xcconfig = installer.sandbox.target_support_files_dir('Pods-Framework1') + filename
    input_file = File.open(path_to_xcconfig, "r")
    output_file = File.open(path_to_xcconfig.to_s + '.tmp', "w")
    input_file.each_line do |line|
      line.sub! '-ObjC', ''
      output_file.puts line
    end
    input_file.close
    output_file.close
    File.rename(output_file.path, input_file.path)
  end
end
