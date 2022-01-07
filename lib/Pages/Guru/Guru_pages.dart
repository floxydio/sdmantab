import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdmantabfront/Provider/DataNilai_Provider.dart';

class GuruScreen extends StatefulWidget {
  const GuruScreen({Key key}) : super(key: key);

  @override
  _GuruScreenState createState() => _GuruScreenState();
}

class _GuruScreenState extends State<GuruScreen> {
  var nama = '';
  var kelas = '';
  var nilaiUts = '';
  var nilaiUas = '';
  var kritik = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Guru Screen")),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  children: [
                    Text("Tambah nilai"),
                    SizedBox(width: 5),
                    IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                    scrollable: true,
                                    content: Column(
                                      children: [
                                        Text("Silahkan masukan data"),
                                        SizedBox(height: 20),
                                        Container(
                                            alignment: Alignment.centerLeft,
                                            child: Text("Nama")),
                                        SizedBox(height: 5),
                                        TextFormField(
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder()),
                                          onChanged: (value) {
                                            setState(() {
                                              nama = value;
                                            });
                                          },
                                        ),
                                        SizedBox(height: 5),
                                        Container(
                                            alignment: Alignment.centerLeft,
                                            child: Text("Kelas")),
                                        SizedBox(height: 5),
                                        TextFormField(
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder()),
                                          onChanged: (value) {
                                            setState(() {
                                              kelas = value;
                                            });
                                          },
                                        ),
                                        SizedBox(height: 5),
                                        Container(
                                            alignment: Alignment.centerLeft,
                                            child: Text("Nilai Uts")),
                                        SizedBox(height: 5),
                                        TextFormField(
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder()),
                                          onChanged: (value) {
                                            setState(() {
                                              nilaiUts = value;
                                            });
                                          },
                                        ),
                                        SizedBox(height: 5),
                                        Container(
                                            alignment: Alignment.centerLeft,
                                            child: Text("Nilai Uas")),
                                        SizedBox(height: 5),
                                        TextFormField(
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder()),
                                            onChanged: (value) {
                                              setState(() {
                                                nilaiUas = value;
                                              });
                                            }),
                                        SizedBox(height: 5),
                                        Container(
                                            alignment: Alignment.centerLeft,
                                            child: Text("Kritik")),
                                        SizedBox(height: 5),
                                        TextFormField(
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder()),
                                          onChanged: (value) {
                                            setState(() {
                                              kritik = value;
                                            });
                                          },
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              print(nama);
                                              print(kelas);
                                              print(nilaiUts);
                                              print(nilaiUas);
                                              print(kritik);
                                              Navigator.pop(context);
                                              // Provider.of<DataNilai>(context,
                                              //     listen: false);
                                            },
                                            child: Text("Kirim"))
                                      ],
                                    ),
                                  ));
                        }),
                    // Consumer<DataNilai>(builder: (_, list, value) {
                    //   return list.nilai.isNotEmpty ? SizedBox() : SizedBox();
                    // })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
