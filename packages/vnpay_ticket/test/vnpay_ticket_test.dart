import 'package:flutter_test/flutter_test.dart';
import 'package:vnpay_ticket/vnpay_ticket.dart';
import 'package:vnpay_ticket/vnpay_ticket_platform_interface.dart';
import 'package:vnpay_ticket/vnpay_ticket_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockVnpayTicketPlatform
    with MockPlatformInterfaceMixin
    implements VnpayTicketPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final VnpayTicketPlatform initialPlatform = VnpayTicketPlatform.instance;

  test('$MethodChannelVnpayTicket is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelVnpayTicket>());
  });

  test('getPlatformVersion', () async {
    VnpayTicket vnpayTicketPlugin = VnpayTicket();
    MockVnpayTicketPlatform fakePlatform = MockVnpayTicketPlatform();
    VnpayTicketPlatform.instance = fakePlatform;

    expect(await vnpayTicketPlugin.getPlatformVersion(), '42');
  });
}
