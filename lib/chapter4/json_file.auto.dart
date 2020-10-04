import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

class JSonAutoApp extends StatefulWidget {
  @override
  _JSonAutoApp createState() => _JSonAutoApp();
}

class _JSonAutoApp extends State<JSonAutoApp> {
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

@JsonSerializable()
class OfficesList {
  List<Office> offices;
  OfficesList({this.offices});

  factory OfficesList.fromJson(Map<String, dynamic> json) =>
      _$OfficesListFromJson(json);

  Map<String, dynamic> toJson() => _$OfficesListToJson(this);
}

@JsonSerializable()
class Office {
  @JsonKey()
  final String address;
  final String name;
  final String image;
  Office({this.address, this.name, this.image});

  factory Office.fromJson(Map<String, dynamic> json) => _$OfficeFromJson(json);
  Map<String, dynamic> toJson() => _$OfficeToJson(this);
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

////////////////////////////////////////////////////////////////////////////////
OfficesList _$OfficesListFromJson(Map<String, dynamic> json) {
  return OfficesList(
      offices: (json['offices'] as List)
          ?.map((e) =>
              e == null ? null : Office.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$OfficesListToJson(OfficesList instance) =>
    <String, dynamic>{
      'offices': instance.offices,
    };
////////////////////////////////////////////////////////////////////////////////
Office _$OfficeFromJson(Map<String, dynamic> json) {
  return Office(
    name: json['name'] as String,
    address: json['address'] as String,
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$OfficeToJson(Office instance) => <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'image': instance.image,
    };
////////////////////////////////////////////////////////////////////////////////