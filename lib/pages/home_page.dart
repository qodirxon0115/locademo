import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

             Expanded(
              child: Center(
                child: const Text("Flutter", style: TextStyle(fontSize: 20),).tr(),
              ),
            ),

            Row(
              children: [

                Expanded(
                  child: Container(
                    height: 45,
                    color: Colors.green,
                    child: TextButton(
                      onPressed: (){
                        context.setLocale(const Locale('en', 'US'));
                      },
                      child: const Text("English",
                        style: TextStyle(color: Colors.white,),),
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 45,
                    color: Colors.red,
                    child: TextButton(
                      onPressed: (){
                        context.setLocale(const Locale('kr', 'KR'));
                      },
                      child: const Text("Korean",
                        style: TextStyle(color: Colors.white,),),
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 45,
                    width: 80,
                    color: Colors.blue,
                    child: TextButton(
                      onPressed: (){
                        context.setLocale(const Locale('ja', 'JA'));
                      },
                      child: const Text("Japanese",
                        style: TextStyle(color: Colors.white,),),
                    ),
                  ),
                ),

                // Expanded(
                //   child: Container(
                //     height: 45,
                //     color: Colors.green,
                //     child: TextButton(
                //       onPressed: (){
                //         context.setLocale(const Locale('en', 'US'));
                //       },
                //       child: const Text("English",
                //         style: TextStyle(color: Colors.white,),),
                //     ),
                //   ),
                // ),
                // const SizedBox(width: 10,),
                // Expanded(
                //   child: Container(
                //     height: 45,
                //     color: Colors.red,
                //     child: TextButton(
                //       onPressed: (){
                //         context.setLocale(const Locale('ru', 'RU'));
                //       },
                //       child: const Text("Russian",
                //         style: TextStyle(color: Colors.white,),),
                //     ),
                //   ),
                // ),
                // const SizedBox(width: 10,),
                // Expanded(
                //   child: Container(
                //     height: 45,
                //     width: 80,
                //     color: Colors.blue,
                //     child: TextButton(
                //       onPressed: (){
                //         context.setLocale(const Locale('uz', 'UZ'));
                //       },
                //       child: const Text("Uzbek",
                //         style: TextStyle(color: Colors.white,),),
                //     ),
                //   ),
                // ),
                // const SizedBox(width: 10,),
                // Expanded(
                //   child: Container(
                //     height: 45,
                //     width: 80,
                //     color: Colors.orange,
                //     child: TextButton(
                //       onPressed: (){
                //         context.setLocale(const Locale('fr', 'FR'));
                //       },
                //       child: const Text("French",
                //         style: TextStyle(color: Colors.white,),),
                //     ),
                //   ),
                // ),
              ],
            )
          ],
        ),
      )
    );
  }
}
