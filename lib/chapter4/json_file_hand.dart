import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class JSonApp extends StatefulWidget {
  @override
  _JSonApp createState() => _JSonApp();
}

class _JSonApp extends State<JSonApp> {
  Future<OfficesList> officesList;
  @override
  void initState() {
    super.initState();
    officesList = getOfficesList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<OfficesList>(
          future: officesList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.offices.length,
                itemBuilder: (context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text('${snapshot.data.offices[index].name}'),
                      subtitle: Text('${snapshot.data.offices[index].address}'),
                      leading: Image.network(
                          '${snapshot.data.offices[index].image}'),
                      isThreeLine: true,
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('Ошибка');
            }
            return Center(child: CircularProgressIndicator());
          }),
    );
  }
}

class OfficesList {
  List<Office> offices;
  OfficesList({this.offices});

  factory OfficesList.fromJson(Map<String, dynamic> json) {
    var officesJson = json['offices'] as List;

    List<Office> officesList =
        officesJson.map((e) => Office.fromJson(e)).toList();
    return OfficesList(offices: officesList);
  }
}

class Office {
  final String address;
  final String name;
  final String image;
  Office({this.address, this.name, this.image});

  factory Office.fromJson(Map<String, dynamic> json) {
    return Office(
        address: json['address'] as String,
        name: json['name'] as String,
        image: json['image'] as String);
  }
}

Future<OfficesList> getOfficesList() async {
  const url = 'https://about.google/static/data/locations.json';
  final response = await http.get(url);

  if (response.statusCode == 200) {
    return OfficesList.fromJson(json.decode(response.body));
  } else {
    throw Exception('Ошибка: ${response.reasonPhrase}');
  }
}
