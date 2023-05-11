import 'package:ceksos/domain/model/bantuanmodel.dart';
import 'package:flutter/material.dart';

class HasilCard extends StatelessWidget {
  //getting data as Map
  final List<BantuanModel> data;

  const HasilCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: Icon(Icons.account_box),
            title: Text('Hasil Pencarian'),
          ),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    title: Text(data[index].nik),
                    subtitle: Text(data[index].nama),
                  ),
                  ListTile(
                    title: Text(data[index].bantuan),
                    subtitle: const Text('Bantuan'),
                  ),
                ],
              );
            },
            itemCount: data.length,
          ),
        ],
      ),
    );
  }
}
