import 'package:chat_app/controller/login_controller.dart';
import 'package:chat_app/login_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  //This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return MultiProvider(
        providers:[
          ChangeNotifierProvider(create: (context) => LoginController(),
          )
        ] ,
    child: MaterialApp(
      title: 'Messaging App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      )

    ),
    );
  }
}