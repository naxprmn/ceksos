import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:ceksos/domain/state/homestate.dart';
import 'package:ceksos/presentation/widget/hasil_card.dart';
import 'package:ceksos/presentation/widget/search_bar.dart';
import 'package:ceksos/provider/global_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    ref.listen<Homestate>(homeController, (previous, next) {
      next.whenOrNull(
        loading: () {
          SnackBar snack = const SnackBar(content: Text('Memuat...'));
          ScaffoldMessenger.of(context).showSnackBar(snack);
        },
        error: (error) => AwesomeDialog(
          context: context,
          dialogType: DialogType.error,
          body: Text(error),
          btnOkOnPress: () {},
        ).show(),
      );
    });
    //define screensize
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.blue.shade200,
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            SizedBox(
              height: screenSize.height * 0.45,
              width: screenSize.width,
              child: Image.asset(
                "assets/images/topImage1.png",
                fit: BoxFit.fitWidth,
              ),
            ),
            // ignore: sized_box_for_whitespace
            Padding(
              padding: EdgeInsets.only(
                top: screenSize.height * 0.05,
                left: screenSize.width / 50,
                right: screenSize.width / 50,
              ),
              child: const SearchBar(),
            ),
            Center(
              child: SingleChildScrollView(
                child: ref.watch(homeController).when(
                      initial: () => const Text('Masukan NIK Terlebih Dahulu'),
                      loading: () => const CircularProgressIndicator(),
                      error: (error) => Text(error),
                      data: (data) {
                        return HasilCard(data: data);
                      },
                    ),
              ),
            )
          ],
        ));
  }
}
