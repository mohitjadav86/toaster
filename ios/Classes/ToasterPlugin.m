#import "ToasterPlugin.h"
#if __has_include(<toaster/toaster-Swift.h>)
#import <toaster/toaster-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "toaster-Swift.h"
#endif

@implementation ToasterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftToasterPlugin registerWithRegistrar:registrar];
}
@end
