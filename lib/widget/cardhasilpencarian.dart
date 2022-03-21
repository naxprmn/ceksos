import 'package:ceksos/models/hasilpencarian.dart';
import 'package:flutter/material.dart';

class YourCardDetails extends StatelessWidget {
  final String cardTitle;
  final String cardSubTitle;
  //getting data as Map
  final ModelHasilPencarian elm;

  const YourCardDetails(
      {Key? key,
      required this.cardTitle,
      required this.cardSubTitle,
      required this.elm})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const Icon(Icons.account_box),
            title: Text(cardTitle),
            subtitle: Text(
              cardSubTitle,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          // ListView.builder(
          //   padding: EdgeInsets.zero,
          //   shrinkWrap: true,
          //   itemBuilder: (context, index) {
          //     //build view from Map to listTile
          //     String key = elm.keys.elementAt(index);
          //     if ("${elm[key]}" == "null") {
          //       return SizedBox();
          //     }
          //     return ListTile(
          //       title: Text(key),
          //       subtitle: Text("${elm[key]}"),
          //     );
          //   },
          //   itemCount: elm.length,
          // ),
          ListTile(
            title: const Text("NIK"),
            subtitle: Text(elm.nik.toString()),
          ),
          ListTile(
            title: const Text("NAMA"),
            subtitle: Text(elm.nama.toString()),
          ),
          ListTile(
            title: const Text("ALAMAT"),
            subtitle: Text(elm.alamat.toString()),
          ),
          ListTile(
            title: const Text("PEKERJAN"),
            subtitle: Text(elm.pekerjaan.toString()),
          ),
          ListTile(
            title: const Text("STATUS DTKS"),
            subtitle: elm.dtks != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ID DTKS  : ${elm.dtks!.idDtks}"),
                      Text("PBI-JKN  : ${elm.dtks!.bansosPbi}"),
                    ],
                  )
                : const Text("-"),
          ),
          ListTile(
            title: const Text("PKH"),
            subtitle: elm.pkh != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("NIK      : ${elm.pkh!.nik}"),
                      Text("NAMA     : ${elm.pkh!.nama}"),
                      const Text("PKH      : YA"),
                    ],
                  )
                : const Text("-"),
          ),
          ListTile(
            title: const Text("BPNT"),
            subtitle: elm.bpnt != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("NIK      : ${elm.bpnt!.nik}"),
                      Text("NAMA     : ${elm.bpnt!.nama}"),
                      Text("ID DTKS  : ${elm.bpnt!.idDtks}"),
                      Text("BPNT     : ${elm.bpnt!.bansosBpnt}"),
                    ],
                  )
                : const Text("-"),
          ),
          ListTile(
            title: const Text("BPNT-PPKM"),
            subtitle: elm.bpntPpkm != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("NIK      : ${elm.bpntPpkm!.nik}"),
                      Text("NAMA     : ${elm.bpntPpkm!.nama}"),
                      Text("ID DTKS  : ${elm.bpntPpkm!.idDtks}"),
                      Text("BPNT-PPKM: ${elm.bpntPpkm!.bansosBpntPpkm}"),
                    ],
                  )
                : const Text("-"),
          ),
          ListTile(
            title: const Text("BANSOS APBD"),
            subtitle: elm.bansos != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("NIK     :${elm.bansos!.nik}"),
                      Text("NAMA    :${elm.bansos!.nama}"),
                      Text("BERUPA  :${elm.bansos!.besarnya}")
                    ],
                  )
                : const Text("-"),
          ),
          ListTile(
            title: const Text("PBI APBD"),
            subtitle: elm.pbiPemda != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("NO Kartu : ${elm.pbiPemda!.nomorKartu}"),
                      Text("Faskes   : ${elm.pbiPemda!.namaFaskes}"),
                    ],
                  )
                : const Text("-"),
          ),
          ListTile(
            title: const Text("KJS"),
            subtitle: elm.kjs != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("NO            : ${elm.kjs!.no}"),
                      Text("NIK           : ${elm.kjs!.nik}"),
                      Text("NAMA          : ${elm.kjs!.nama}"),
                      Text("ALAMAT        : ${elm.kjs!.alamat}"),
                      Text("Nama Pasangan : ${elm.kjs!.namaPasangan}"),
                    ],
                  )
                : const Text("-"),
          )
        ],
      ),
    );
  }
}
