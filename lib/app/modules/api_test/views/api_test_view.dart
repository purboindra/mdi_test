import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:modern_digital_indonesia_test/app/data/model/user_model.dart';

import '../controllers/api_test_controller.dart';

class ApiTestView extends GetView<ApiTestController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ApiTestView'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<UserModel>>(
        future: controller.fetchApi(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasData) {
            return ListView.builder(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var data = snapshot.data![index];
                return ListTile(
                  onTap: () {
                    print(data.id);
                  },
                  trailing: Text(
                    data.id.toString(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  leading: ClipOval(
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.teal,
                      child: Center(
                        child: Text(
                          data.userId.toString(),
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  isThreeLine: true,
                  title: Text(
                    data.title!,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(data.body!),
                );
              },
            );
          }
          return Center(child: Text("ERROR"));
        },
      ),
    );
  }
}
