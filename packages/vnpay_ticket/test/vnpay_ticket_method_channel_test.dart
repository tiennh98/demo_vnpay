import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vnpay_ticket/vnpay_ticket_method_channel.dart';

void main() {
  MethodChannelVnpayTicket platform = MethodChannelVnpayTicket();
  const MethodChannel channel = MethodChannel('vnpay_ticket');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
