import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'vnpay_ticket_method_channel.dart';

abstract class VnpayTicketPlatform extends PlatformInterface {
  /// Constructs a VnpayTicketPlatform.
  VnpayTicketPlatform() : super(token: _token);

  static final Object _token = Object();

  static VnpayTicketPlatform _instance = MethodChannelVnpayTicket();

  /// The default instance of [VnpayTicketPlatform] to use.
  ///
  /// Defaults to [MethodChannelVnpayTicket].
  static VnpayTicketPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [VnpayTicketPlatform] when
  /// they register themselves.
  static set instance(VnpayTicketPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
