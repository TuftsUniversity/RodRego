/usr/libexec/PlistBuddy -c "Set :CFBundleIdentifier edu.tufts.tts.ests.RodRego" Builds\ -\ RodRego14.rbp/Mac\ OS\ X\ \(Cocoa\ Intel\)/RodRego.app/Contents/Info.plist
codesign -f -s "Developer ID Application" Builds\ -\ RodRego14.rbp/Mac\ OS\ X\ \(Cocoa\ Intel\)/RodRego.app
spctl --assess --verbose=4 Builds\ -\ RodRego14.rbp/Mac\ OS\ X\ \(Cocoa\ Intel\)/RodRego.app
productbuild --component Builds\ -\ RodRego14.rbp/Mac\ OS\ X\ \(Cocoa\ Intel\)/RodRego.app /Applications ./RodRego.pkg --sign "Developer ID Installer"
