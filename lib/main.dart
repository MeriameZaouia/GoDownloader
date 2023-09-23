
import 'package:flutter/material.dart';

import 'DownloadingPage.dart';

// widget

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: BodyWidget(),
        ),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 58, 46, 129),
                  // borderRadius: BorderRadius.only(
                  //   bottomLeft: Radius.circular(80),
                  //   bottomRight: Radius.circular(80),
                  // ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 180,
                      child: Image.asset("assets/logo.png"),
                    ),
                    const Text(
                      "Go Downloader",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "RobotoMono",
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Downloading All Video on One Click",
                      style: TextStyle(
                        fontFamily: "RobotoMono",
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 50),
                    Center(
                        child: Column(
                      children: [
                        // Facebook
                        FacebookTile(),

                        const SizedBox(
                          height: 10,
                        ),

                        // Instagram
                        instagramTile(),

                        const SizedBox(
                          height: 10,
                        ),

                        // WhatsApp
                        WatsAppTile(),

                        const SizedBox(
                          height: 10,
                        ),

                        // Youtube
                        YoutubeTile(),

                        const SizedBox(
                          height: 10,
                        ),

                        // TikTok
                        TikTokTile(),

                        const SizedBox(
                          height: 10,
                        ),

                        // about us
                        AboutUsTile(),

                        const SizedBox(
                          height: 10,
                        ),

                        // share app
                        ShareTile(),

                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ShareTile extends StatelessWidget {
  const ShareTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Couleur de l'ombre
            spreadRadius: 3, // Écart de l'ombre
            blurRadius: 3, // Flou de l'ombre
            offset: Offset(0, 3), // Décalage de l'ombre
          ),
        ],
      ),
      child: ListTile(
        onTap: () async {
          // final dynamicLink = await shareApp();
          // if (dynamicLink != null) {
          //   Share.share(
          //       'Téléchargez notre application : ${dynamicLink.toString()}');
          // } else {

          //   print("erreur de telechargemnet");
           
          // }
        },
        tileColor: Colors.white,
        contentPadding: EdgeInsets.all(15),
        leading: Icon(
          Icons.share,
          color: Color.fromARGB(255, 68, 202, 255),
          size: 50,
        ),
        title: Text('Share App'),
        trailing: const Icon(Icons.arrow_forward_ios),
        subtitle: const Text(
          'Share App with your friends',
          style: TextStyle(color: Color.fromARGB(255, 58, 46, 129)),
        ),
      ),
    );
  }
}

class AboutUsTile extends StatelessWidget {
  const AboutUsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Couleur de l'ombre
            spreadRadius: 3, // Écart de l'ombre
            blurRadius: 3, // Flou de l'ombre
            offset: Offset(0, 3), // Décalage de l'ombre
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DownloadingPage(plateform: "about")));
        },
        tileColor: Colors.white,
        contentPadding: EdgeInsets.all(15),
        leading: Icon(
          Icons.info,
          color: Color.fromARGB(255, 68, 202, 255),
          size: 50,
        ),
        title: Text('About us'),
        trailing: const Icon(Icons.arrow_forward_ios),
        subtitle: const Text(
          'Know more about App',
          style: TextStyle(color: Color.fromARGB(255, 58, 46, 129)),
        ),
      ),
    );
  }
}

class TikTokTile extends StatelessWidget {
  const TikTokTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Couleur de l'ombre
            spreadRadius: 3, // Écart de l'ombre
            blurRadius: 3, // Flou de l'ombre
            offset: Offset(0, 3), // Décalage de l'ombre
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DownloadingPage(plateform: "tiktok")));
        },
        tileColor: Colors.white,
        contentPadding: EdgeInsets.all(15),
        leading: Image.network(
            "https://logodownload.org/wp-content/uploads/2019/08/tiktok-logo-0-1.png"),
        title: Text('Tiktok'),
        trailing: const Icon(Icons.arrow_forward_ios),
        subtitle: const Text(
          'Downloading Tiktok video',
          style: TextStyle(color: Color.fromARGB(255, 58, 46, 129)),
        ),
      ),
    );
  }
}

class YoutubeTile extends StatelessWidget {
  const YoutubeTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Couleur de l'ombre
            spreadRadius: 3, // Écart de l'ombre
            blurRadius: 3, // Flou de l'ombre
            offset: Offset(0, 3), // Décalage de l'ombre
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DownloadingPage(plateform: "youtube")));
        },
        tileColor: Colors.white,
        contentPadding: EdgeInsets.all(15),
        leading: Image.network(
            "https://clipart-library.com/images_k/youtube-logo-png-transparent/youtube-logo-png-transparent-7.png"),
        title: Text('Youtube'),
        trailing: const Icon(Icons.arrow_forward_ios),
        subtitle: const Text(
          'Downloading Youtube video',
          style: TextStyle(color: Color.fromARGB(255, 58, 46, 129)),
        ),
      ),
    );
  }
}

class WatsAppTile extends StatelessWidget {
  const WatsAppTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Couleur de l'ombre
            spreadRadius: 3, // Écart de l'ombre
            blurRadius: 3, // Flou de l'ombre
            offset: Offset(0, 3), // Décalage de l'ombre
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DownloadingPage(plateform: "watsapp")));
        },
        tileColor: Colors.white,
        contentPadding: EdgeInsets.all(15),
        leading: Image.network(
            "https://logodownload.org/wp-content/uploads/2015/04/whatsapp-logo-png-0-1536x1536.png"),
        title: Text('WhatsApp'),
        trailing: const Icon(Icons.arrow_forward_ios),
        subtitle: const Text(
          'Downloading WhatsApp video',
          style: TextStyle(color: Color.fromARGB(255, 58, 46, 129)),
        ),
      ),
    );
  }
}

class instagramTile extends StatelessWidget {
  const instagramTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Couleur de l'ombre
            spreadRadius: 3, // Écart de l'ombre
            blurRadius: 3, // Flou de l'ombre
            offset: Offset(0, 3), // Décalage de l'ombre
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      DownloadingPage(plateform: "instagram")));
        },
        tileColor: Colors.white,
        contentPadding: EdgeInsets.all(15),
        leading: Image.network(
            "https://logodownload.org/wp-content/uploads/2017/04/instagram-logo-13.png"),
        title: Text('Instagram'),
        trailing: const Icon(Icons.arrow_forward_ios),
        subtitle: const Text(
          'Downloading Instagram video',
          style: TextStyle(color: Color.fromARGB(255, 58, 46, 129)),
        ),
      ),
    );
  }
}

class FacebookTile extends StatelessWidget {
  const FacebookTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Couleur de l'ombre
            spreadRadius: 3, // Écart de l'ombre
            blurRadius: 3, // Flou de l'ombre
            offset: Offset(0, 3), // Décalage de l'ombre
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      DownloadingPage(plateform: "facebook")));
        },
        contentPadding: EdgeInsets.all(15),
        tileColor: Colors.white, // Fond blanc
        leading: Image.network(
            "https://www.cologniapress.com/runtime/cache/attachedImagesThumb/facebook-logo-d133b91c142e2ccd4e3d6e8c2176a7b4.png"),
        title: const Text('Facebook'),
        trailing: const Icon(Icons.arrow_forward_ios),
        subtitle: const Text(
          'Downloading Facebook video',
          style: TextStyle(color: Color.fromARGB(255, 58, 46, 129)),
        ),
      ),
    );
  }
}

// shareApp() async {
//   final dynamicLinkParams = DynamicLinkParameters(
//     link: Uri.parse("https://godownloader.page.link/ShareApp"),
//     uriPrefix: "https://godownloader.page.link",
//     androidParameters:
//         const AndroidParameters(packageName: "com.example.social_save"),
//   );
//   final dynamicLink =
//       await FirebaseDynamicLinks.instance.buildLink(dynamicLinkParams);

//   return dynamicLink;
// }
