import 'dart:typed_data';

import 'package:udp_templete/models/my_model.dart';
import 'package:udp_templete/utils/udp_endpoint.dart';
import 'package:udp_templete/configs/config.dart';

class MsgRepository {
  MsgRepository();

  late UdpEndpoint udpEndpoint = UdpEndpoint();

  int seqNum = 0;

  Future<void> startReceiveStream() async {
    await udpEndpoint.startReceiveStream(udpRecvIpAddr, udpRecvPort);
  }

  int send(String msg) {
    // convert msg String to utf-8 binary list
    return udpEndpoint.send(udpSendIpAddr, udpSendPort, msg.codeUnits);
  }

  Stream<MyModel>? listen() async* {
    // listen UdpEndpoint
    await for (Uint8List data in udpEndpoint.stream) {
      yield MyModel(seqNum: seqNum++, msg: String.fromCharCodes(data));
    }
  }
}
