import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

import 'package:udp_templete/models/my_model.dart';
import 'package:udp_templete/repositories/msg_repository.dart';

class MyViewModel with ChangeNotifier, DiagnosticableTreeMixin {
  MsgRepository? _msgRepository;
  MyModel? data;

  bool isInitialized = false;
  DateFormat _dataFmt = DateFormat('yyyy/MM/dd HH:mm:ss');

  final toMyViewModelMsg = StreamTransformer<MyModel, MyModel>.fromHandlers(handleData: (value, sink) {
    /// TODO : add your convert implements
    sink.add(value);
  });

  startReceiveStream() async {
    _msgRepository = MsgRepository();
    await _msgRepository!.startReceiveStream();
    isInitialized = true;
    notifyListeners();
  }

  int send(String msg) {
    return _msgRepository!.send(msg);
  }

  Stream<String> listen() async* {
    await for (MyModel data in _msgRepository!.listen()!.transform(toMyViewModelMsg)) {
      yield "${_dataFmt.format(DateTime.now())}(seq:${data.seqNum}) : ${data.msg}";
    }
  }
}
