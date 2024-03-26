import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'vnpay_ticket_platform_interface.dart';

/// An implementation of [VnpayTicketPlatform] that uses method channels.
class MethodChannelVnpayTicket extends VnpayTicketPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('vnpay_ticket');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
