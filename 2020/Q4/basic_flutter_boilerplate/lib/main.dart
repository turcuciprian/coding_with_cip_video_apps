import 'package:basic_flutter_boilerplate/globalStateManagement/language.dart';
import 'package:basic_flutter_boilerplate/globalStateManagement/requestsTest.dart';
import 'package:basic_flutter_boilerplate/globalStateManagement/themeManagement.dart';
import 'package:basic_flutter_boilerplate/localStorage/localSTorageExample.dart';
import 'package:basic_flutter_boilerplate/ui/themes.dart';
import 'package:basic_flutter_boilerplate/utils/MyLocalizations.dart';
import 'package:basic_flutter_boilerplate/utils/MyLocalizationsDelegate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import './utils/routes.dart';

import 'package:flutter/material.dart';
import './globalStateManagement/increment.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => Increment()),
    ChangeNotifierProvider(create: (_) => ThemeManagement()),
    ChangeNotifierProvider(create: (_) => LanguageProvider()),
    ChangeNotifierProvider(create: (_) => RequestsTest()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: context.watch<LanguageProvider>().language,
      supportedLocales: [
        const Locale('en', ''),
        const Locale('es', ''),
      ],
      localizationsDelegates: [
        const MyLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      localeResolutionCallback:
          (Locale locale, Iterable<Locale> supportedLocales) {
        for (Locale supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode ||
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      title: 'Flutter Boilerplate Demo',
      routes: Routes.routes,
      theme: context.watch<ThemeManagement>().currentTheme,
      home: MyHomePage(title: 'Flutter Boilerplate Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    LocalStorageExample localStorageEx = LocalStorageExample();
    String localStorageAuthor = '';
  @override
  Widget build(BuildContext context) {
    String author = context.watch<RequestsTest>().data['slideshow'] != null
        ? context.watch<RequestsTest>().data['slideshow']['author']
        : 'empty';
    var incrementValue = context.watch<Increment>().count;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.login);
              },
              child: Text('Login'),
            ),
            RaisedButton(
              onPressed: () {
                context.read<Increment>().increment();
              },
              child: Text('Increment Using Provider'),
            ),
            Text('Value:${incrementValue}',
                style: secondaryTheme.textTheme.headline2),
            RaisedButton(
              onPressed: () {
                context.read<ThemeManagement>().toggleTheme();
              },
              child: Text('Toggle Theme'),
            ),
            Text(MyLocalizations.of(context).trans("hello_world")),
            RaisedButton(
              onPressed: () {
                context.read<LanguageProvider>().changeLaguage();
              },
              child: Text('Toggle Language'),
            ),
            RaisedButton(
              onPressed: () {
                context.read<RequestsTest>().fetchData();
              },
              child: Text('Make Request'),
            ),
            Text('$author'),
            RaisedButton(
              onPressed: () {
                setState(() {
                  localStorageAuthor = localStorageEx.getAuthor();
                });
              },
              child: Text('get Local'),
            ),
            RaisedButton(
              onPressed: () {
                localStorageEx.setAuthor('test3');
              },
              child: Text('SET Local'),
            ),
            Text('Local Storage text:$localStorageAuthor')
          ],
        ),
      ),
    );
  }
}
