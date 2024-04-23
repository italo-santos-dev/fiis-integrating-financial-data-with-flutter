import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FiisListPage(),
    );
  }
}

class FiisListPage extends StatefulWidget {
  @override
  _FiisListPageState createState() => _FiisListPageState();
}

class _FiisListPageState extends State<FiisListPage> {
  List<dynamic> fiis = [];

  @override
  void initState() {
    super.initState();
    fetchFiis();
  }

  Future<void> fetchFiis() async {
    final String apiUrl = "https://mfinance.com.br/api/v1/fiis";

    var response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      setState(() {
        fiis = jsonData['fiis'];
      });
    } else {
      throw Exception('falid to load fiis');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fiis'),
      ),
      body: ListView.builder(
        itemCount: fiis.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            child: Card(
              elevation: 4.0,
              child: ListTile(
                title: Text(
                  fiis[index]['symbol'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(fiis[index]['segment']),
                trailing: Text('R\$ ${fiis[index]['lastPrice']}',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
          );
        },
      ),
    );
  }
}
