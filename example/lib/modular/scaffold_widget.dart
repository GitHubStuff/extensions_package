import 'package:extensions_package/extensions_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:xample/cubit/locale_cubit.dart';

class ScaffoldWidget extends StatefulWidget {
  ScaffoldWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _ScaffoldWidget createState() => _ScaffoldWidget();
}

class _ScaffoldWidget extends ObservingStatefulWidget<ScaffoldWidget> {
  String message = 'Tap for Size';
  String instruction = 'Tap + to change the text';
  String instruction2 = 'Tap again';
  bool isFirst = true;
  late Image sample;

  @override
  void initState() {
    super.initState();
    sample = Image.asset('assets/sample.png');
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            //ThemeControlWidget(),
          ],
        ),
        body: _body(context),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Keyboard open ${context.isKeyBoardOpen}');
            if (context.isKeyBoardOpen) context.hideKeyboard();
            setState(() {
              isFirst = !isFirst;
            });
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      );

  Widget _body(BuildContext context) {
    LocaleCubit localeCubit = Modular.get<LocaleCubit>();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Hello You!')
              .textColor(Colors.white)
              .fontSize(31.0)
              .paddingAll(12.0)
              .background(Colors.lightBlue)
              .wrap(bottom: 3, top: 3, left: 3, right: 3, color: Colors.white)
              .borderAll(Colors.green)
              .wrap(bottom: 8, top: 3, left: 3, right: 3),
          Wrap(
            spacing: 4.0,
            children: [
              Container(height: 50, width: 50, child: sample).wrapAll(4.0).borderAll(Colors.red),
              Container(height: 50, width: 50, child: sample.rotate(percentage: 0.12)),
              Container(height: 50, width: 50, child: sample.rightRotation),
              Container(height: 50, width: 50, child: sample.rotate(percentage: 0.37)),
              Container(height: 50, width: 50, child: sample.upsideDownRotation),
              Container(height: 50, width: 50, child: sample.leftRotation),
            ],
          ),
          Text(
            message,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a search term',
            ),
          ),
          WidgetSize(
            onSizeChange: (Size? size) {
              setState(() {
                final height = context.height;
                final width = context.width;
                debugPrint('height: $height, width: $width $isFirst');
                message = 'Size - $size';
              });
            },
            child: Text(
              isFirst ? instruction : instruction2,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () => localeCubit.updateLocale(Locale('en', '')), child: Text('English')),
              ElevatedButton(onPressed: () => localeCubit.updateLocale(Locale('es', '')), child: Text('Spanish')),
              ElevatedButton(onPressed: () => localeCubit.updateLocale(Locale('de', '')), child: Text('German')),
            ],
          )
        ],
      ),
    );
  }
}
