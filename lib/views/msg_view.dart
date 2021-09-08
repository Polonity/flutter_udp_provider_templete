import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udp_templete/viewModels/my_view_model.dart';

class MsgView extends StatefulWidget {
  const MsgView({Key? key}) : super(key: key);

  @override
  _MsgViewState createState() => _MsgViewState();
}

class _MsgViewState extends State<MsgView> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<MyViewModel>().startReceiveStream();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Flexible(
            flex: 2,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'your message',
                  icon: Icon(Icons.message),
                ),
                onSubmitted: (msg) {
                  context.read<MyViewModel>().send(msg);
                },
              ),
            )),
        Flexible(flex: 5, child: Center(child: _msgBox(context)))
      ],
    );
  }

  Widget _msgBox(BuildContext context) {
    return (context.watch<MyViewModel>().isInitialized)
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.topLeft,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: StreamBuilder(
                    stream: context.read<MyViewModel>().listen(),
                    builder: (BuildContext context, AsyncSnapshot<String> snapShot) {
                      return Text(
                        snapShot.hasData ? (snapShot.data!) : "",
                        style: const TextStyle(fontSize: 30),
                      );
                    },
                  ),
                ),
              )
            ],
          )
        : Column(
            children: const [Text("Now loading..."), CircularProgressIndicator()],
          );
  }
}
