import 'package:flutter/material.dart';
import '../getxControllers/counter_controller.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetX<CounterController>(
              init: CounterController(),
              builder: (controller)=> Text(
                'Current Number is : ${controller.count}', textScaleFactor: 1.3),
            ),

            const SizedBox(height: 30,),
            ElevatedButton(
              child: const Text('Count',textScaleFactor: 1.3,),
              onPressed: ()=> Get.find<CounterController>().increment(),
            ),
          ],
        ),
      ),
    );
  }
}
