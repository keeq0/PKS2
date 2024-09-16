import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Авторизация',
      home: const Authorization(),
    );
  }
}

class Authorization extends StatelessWidget {
  const Authorization({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(padding: EdgeInsets.all(80.0),
          child: Center(
            child: Container(width: 300,
            child: Center(child:
             Text("Авторизация", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
            ),
            ),
            ),
          ),
          ), 
          
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            child: TextField(
              decoration: InputDecoration( 
                hintText: 'Логин',
                filled: true,
                contentPadding: EdgeInsets.only(left: 20, right: 0, top: 0, bottom: 0),
                fillColor: Color.fromARGB(255, 240, 239, 243),
                hintStyle: const TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),


          const Padding(
            padding:  EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 0),
            child: TextField(
              decoration: InputDecoration( 
                hintText: 'Пароль',
                filled: true,
                contentPadding: EdgeInsets.only(left: 20, right: 0, top: 0, bottom: 0),
                fillColor: Color.fromARGB(255, 240, 239, 243),
                hintStyle: const TextStyle(color:  Colors.grey, fontWeight: FontWeight.w400),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: false,
                   onChanged: (value){},
                   checkColor: Color.fromARGB(255, 255, 0, 0),
                   ),
                const Text("Запомнить меня", style: TextStyle(fontSize: 16, color: Colors.grey),),
              ],
            ),

          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 0),
            child: Center(
              child: Container(
                width: 400,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.all(16),
                    textStyle: const TextStyle(fontSize: 16,),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Войти', style: TextStyle(fontWeight: FontWeight.w700)),
                ),
              ),
            ),
          ),
          
           Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Container(
                width: 400,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.all(16),
                    textStyle: const TextStyle(fontSize: 16,),
                    side: const BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Регистрация', style: TextStyle(fontWeight: FontWeight.w700)),
                ),
              ),
            ),
          ),

          TextButton(onPressed: (){}, 
          child: Text('Восстановить пароль', style: TextStyle(fontSize: 16,color: const Color.fromARGB(255, 158, 158, 158))))

        ],
      ),
    );
  }
}