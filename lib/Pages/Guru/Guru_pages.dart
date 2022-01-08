import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdmantabfront/Provider/Guru_Provider.dart';

class GuruScreen extends StatefulWidget {
  const GuruScreen({Key key}) : super(key: key);

  @override
  _GuruScreenState createState() => _GuruScreenState();
}

class _GuruScreenState extends State<GuruScreen> {
  GlobalKey<FormFieldState> _formKey = GlobalKey<FormFieldState>();
  var nama = '';
  var kelas = '';
  var nilaiuts = '';
  var nilaiuas = '';
  var kritik = '';
  var guru = '';
  var durasi = '';
  var alasan = '';
  @override
  Widget build(BuildContext context) {
    Provider.of<GuruProvider>(context, listen: false).getNilai(context);
    return Scaffold(
      appBar: AppBar(title: Text("Guru Screen")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Form(
                    key: _formKey,
                    child: Row(children: [
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
                                            onEditingComplete: () {
                                              FocusScope.of(context).nextFocus();
                                            },
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
                                            onEditingComplete: () {
                                              FocusScope.of(context).nextFocus();
                                            },
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
                                            onEditingComplete: () {
                                              FocusScope.of(context).nextFocus();
                                            },
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder()),
                                            onChanged: (value) {
                                              setState(() {
                                                nilaiuts = value;
                                              });
                                            },
                                          ),
                                          SizedBox(height: 5),
                                          Container(
                                              alignment: Alignment.centerLeft,
                                              child: Text("Nilai Uas")),
                                          SizedBox(height: 5),
                                          TextFormField(
                                              onEditingComplete: () {
                                                FocusScope.of(context)
                                                    .nextFocus();
                                              },
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder()),
                                              onChanged: (value) {
                                                setState(() {
                                                  nilaiuas = value;
                                                });
                                              }),
                                          SizedBox(height: 5),
                                          Container(
                                              alignment: Alignment.centerLeft,
                                              child: Text("Kritik")),
                                          SizedBox(height: 5),
                                          TextFormField(
                                            onEditingComplete: () {
                                              FocusScope.of(context).nextFocus();
                                            },
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder()),
                                            onChanged: (value) {
                                              setState(() {
                                                kritik = value;
                                              });
                                            },
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          ElevatedButton(
                                              onPressed: () {
                                                Provider.of<GuruProvider>(context,
                                                        listen: false)
                                                    .postNilai(
                                                        nama,
                                                        kelas,
                                                        nilaiuts,
                                                        nilaiuas,
                                                        kritik,
                                                        context);
                                                Navigator.pop(context);
                                              },
                                              child: Text("Kirim"))
                                        ],
                                      ),
                                    ));
                          }),
                    ]),
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Row(children: [
                    Text("Tambah izin"),
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
                                          onFieldSubmitted: (v) {
                                            FocusScope.of(context).nextFocus();
                                          },
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder()),
                                          onChanged: (value) {
                                            setState(() {
                                              guru = value;
                                            });
                                          },
                                        ),
                                        SizedBox(height: 5),
                                        Container(
                                            alignment: Alignment.centerLeft,
                                            child: Text("Durasi")),
                                        SizedBox(height: 5),
                                        TextFormField(
                                         onFieldSubmitted: (v) {
                                            FocusScope.of(context).nextFocus();
                                          },
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder()),
                                          onChanged: (value) {
                                            setState(() {
                                              durasi = value;
                                            });
                                          },
                                        ),
                                        SizedBox(height: 5),
                                        Container(
                                            alignment: Alignment.centerLeft,
                                            child: Text("Alasan")),
                                        SizedBox(height: 5),
                                        TextFormField(
                                          onFieldSubmitted: (v) {
                                            FocusScope.of(context).nextFocus();
                                          },
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder()),
                                          onChanged: (value) {
                                            setState(() {
                                              alasan = value;
                                            });
                                          },
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              Provider.of<GuruProvider>(context,
                                                      listen: false)
                                                  .postIzin(
                                                      guru, durasi, alasan);
                                              Navigator.pop(context);
                                            },
                                            child: Text("Kirim"))
                                      ],
                                    ),
                                  ));
                        }),
                  ])),
              Consumer<GuruProvider>(builder: (_, list, value) {
                return list.nilaiguru.length == 0 || list.nilaiguru.isEmpty
                    ? Text("belom ada apa apa")
                    : ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: list.nilaiguru["data"].length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                        actions: [
                                          IconButton(
                                              icon: Icon(Icons.delete),
                                              onPressed: () {
                                                setState(() {
                                                  Provider.of<GuruProvider>(
                                                          context,
                                                          listen: false)
                                                      .deleteNilai(
                                                          list.nilaiguru["data"]
                                                              [index]["id"]);
                                                  Navigator.pop(context);
                                                });
                                              })
                                        ],
                                      ));
                            },
                            child: Card(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      child: Row(children: [
                                    Text("Nama"),
                                    SizedBox(width: 50),
                                    Text(":"),
                                    SizedBox(width: 10),
                                    Text(list.nilaiguru["data"][index]["nama"])
                                  ])),
                                  Container(
                                      child: Row(children: [
                                    Text("Kelas"),
                                    SizedBox(width: 50),
                                    Text(":"),
                                    SizedBox(width: 10),
                                    Text(list.nilaiguru["data"][index]["kelas"])
                                  ])),
                                  Container(
                                      child: Row(children: [
                                    Text("Nilai UTS"),
                                    SizedBox(width: 50),
                                    Text(":"),
                                    SizedBox(width: 10),
                                    Text(list.nilaiguru["data"][index]
                                        ["nilaiuts"])
                                  ])),
                                  Container(
                                      child: Row(children: [
                                    Text("Nilai UAS"),
                                    SizedBox(width: 50),
                                    Text(":"),
                                    SizedBox(width: 10),
                                    Text(list.nilaiguru["data"][index]
                                        ["nilaiuas"])
                                  ])),
                                  Container(
                                      child: Row(children: [
                                    Text("Kritik"),
                                    SizedBox(width: 50),
                                    Text(":"),
                                    SizedBox(width: 10),
                                    Text(
                                        list.nilaiguru["data"][index]["kritik"])
                                  ])),
                                ],
                              ),
                            ),
                          );
                        });
              })
            ],
          ),
        ),
      ),
    );
  }
}
