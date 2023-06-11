import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Apply extends StatefulWidget {
  Apply({super.key, required this.linkurl});

  String linkurl;

  @override
  State<Apply> createState() => _ApplyState();
}

class _ApplyState extends State<Apply> {
  // WEB VIEW
  late InAppWebViewController controller;
  // String url =
  //     "https://docs.google.com/forms/d/e/1FAIpQLSdVZPIcuor6HUk61DKmO3iVVow4duWR5i7fqZ7qYeQko7yD2A/viewform?usp=sf_link";
  double progress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        //leading: Icon(Icons.menu),
        title: const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "APPLY HERE",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              // padding: const EdgeInsets.all(2.0),
              child: progress < 1.0
                  ? LinearProgressIndicator(value: progress)
                  : Container()),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10.0),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.blueAccent)),
              child: InAppWebView(
                //initialUrl: "https://flutter.dev/",
                initialUrlRequest: URLRequest(url: Uri.parse(widget.linkurl)),
                //initialUrl: url,
                // initialHeaders: const {},
                // initialOptions: InAppWebViewGroupOptions(
                //     crossPlatform:
                //         InAppWebViewGroupOptions(debuggingEnabled: true)),
                onWebViewCreated: (webViewController) =>
                    controller = webViewController,
                onLoadStart: (controller, url) {
                  setState(() {
                    widget.linkurl = url as String;
                  });
                },
                onLoadStop: (controller, url) {
                  setState(() {
                    widget.linkurl = url as String;
                  });
                },
                onProgressChanged: (controller, progress) {
                  setState(() {
                    this.progress = progress / 100;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

