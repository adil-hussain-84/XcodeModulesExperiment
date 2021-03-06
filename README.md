# Xcode Modules Experiment

This Xcode workspace exists to demonstrate an Xcode project which contains Framework and Static Library targets defined in Objective-C and which has the "Enable Modules" Build Setting turned on in each of the targets which make up the project.

The primary Xcode project of interest in this workspace is the [Framework1](Framework1) project. This project contains a Framework target named 'Framework1' which links to two Static Library targets – 'Library1' and 'Library2' – that are also defined in the project. The 'Library2' target is a little special in that its sources are translated from Java to Objective-C by means of the J2ObjC tool. The project also contains a Unit Testing target named 'Framework1Tests'. The key thing to note about the 'Framework1Tests' target is that it is able to access classes in each of the 'Framework1', 'Library1' and 'Library2' targets as well as classes contained in the J2ObjC libraries without explicitly linking to any of the aforementioned frameworks or libraries.

The [App1](App1) Xcode project is supplemantary and exists just to see 'Framework1' being consumed and used within an Application target. The Application target in this case – 'App1' – is defined entirely as a Swift target.
