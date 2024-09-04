import 'package:model_flight_logbook_terminal/ui/screen/flight_session_status/flight_session_status_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:model_flight_logbook_terminal/constants.dart';
import 'package:model_flight_logbook_terminal/ui/screen/rfid_scan/fragments/main_menu.dart';

class RfidScanScreen extends StatefulWidget {
  const RfidScanScreen({
    super.key,
  });

  static const route = '/';

  @override
  State<RfidScanScreen> createState() => _RfidScanScreenState();
}

class _RfidScanScreenState extends State<RfidScanScreen> {
  var _input = '';

  @override
  void initState() {
    super.initState();
    ServicesBinding.instance.keyboard.addHandler(_onKey);
  }

  @override
  void dispose() {
    ServicesBinding.instance.keyboard.removeHandler(_onKey);
    super.dispose();
  }

  bool _onKey(KeyEvent event) {
    if (event is KeyDownEvent && (ModalRoute.of(context)?.isCurrent ?? false)) {
      if ((event.character ?? '') == '\r') {
        final input = _input;
        _input = '';
        Navigator.of(context).pushNamed(FlightSessionStatusScreen.route, arguments: input).then((value) {
          if (value != null) {
            showAboutDialog(context: context, children: [Text(value.toString())]);
          }
        });
      } else {
        _input += event.character ?? '';
      }
    }

    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const MainMenu(),
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 3,
          child: Image.asset(kAssetRfidIconWhite),
        ),
      ),
    );
  }
}