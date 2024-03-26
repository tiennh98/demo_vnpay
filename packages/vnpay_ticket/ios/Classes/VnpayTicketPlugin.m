#import "VnpayTicketPlugin.h"
#if __has_include(<vnpay_ticket/vnpay_ticket-Swift.h>)
#import <vnpay_ticket/vnpay_ticket-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "vnpay_ticket-Swift.h"
#endif

@implementation VnpayTicketPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftVnpayTicketPlugin registerWithRegistrar:registrar];
}
@end
