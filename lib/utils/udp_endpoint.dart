import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

class UdpEndpoint {
  UdpEndpoint();

  RawDatagramSocket? _udpSocket;

  // stream for consumer
  final _controller = StreamController<Uint8List>();
  Stream<Uint8List> get stream => _controller.stream;

  Future<void> startReceiveStream(String ipAddr, int port) async {
    var addressesIListenFrom = InternetAddress(ipAddr);
    _udpSocket = await RawDatagramSocket.bind(addressesIListenFrom, port, reuseAddress: true, reusePort: true);

    // start to listen
    _udpSocket!.listen((event) {
      if (event == RawSocketEvent.read) {
        Datagram? dg = _udpSocket!.receive()!;
        if (null != dg) _controller.sink.add(dg.data);
      }
    });
  }

  int send(String ipAddr, int port, List<int> buffer) {
    var addressesIListenFrom = InternetAddress(ipAddr);
    return _udpSocket!.send(buffer, addressesIListenFrom, port);
  }

  @override
  dispose() {
    _controller.close();
  }
}
