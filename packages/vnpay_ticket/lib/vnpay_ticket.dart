
import 'vnpay_ticket_platform_interface.dart';

class VnpayTicket {
  Future<String?> getPlatformVersion() {
    return VnpayTicketPlatform.instance.getPlatformVersion();
  }
}
