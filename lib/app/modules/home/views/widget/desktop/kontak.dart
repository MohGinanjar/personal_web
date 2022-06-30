import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Kontak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 6,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text("Tertarik Menggunakan Jasa Saya?",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.black54)),
                Text(
                    "Silahkan hubungi kontak di bawah jika Anda ingin menggunakan jasa saya untuk keperluan bisnis Anda.",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Colors.black54))
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 6,
        ),
        Container(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width / 5,
          child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.place)),
                    Text("Depok",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.black))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.email)),
                    Text("Mohamad.Ginanjar@outlook.co.id")
                  ],
                ),
              ),
              // Row(
              //   children: [
              //     IconButton(
              //         onPressed: () {}, icon: Icon(Icons.whatsapp)),
              //     Text("+6281909592614")
              //   ],
              // ),

              ElevatedButton.icon(
                  onPressed: () {
                   const url = "https://wa.me/+6281909592614?text=Hallo, langsung chat aja";
                    var encoded = Uri.encodeFull(url);
                    launchUrl(Uri.parse(encoded));
                  },
                  icon: Icon(Icons.whatsapp),
                  label: Text("Send Message +6281909592614"),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 66, 133, 68),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
