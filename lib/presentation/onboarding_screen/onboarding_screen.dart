import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _current = 1;
  List<String> imageList = ['0', '1', '2'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/carousel_left.png'),
                Image.asset('assets/images/carousel_main.png'),
                Image.asset('assets/images/carousel_right.png')
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 46),
            child: Text(
              'Заказывайте и оплачивайте еду в приложении',
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Пока идёте, \n еда готовится',
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 57),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ...imageList.map((imageUrl) {
              int index = imageList.indexOf(imageUrl);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: const EdgeInsets.symmetric(horizontal: 7.5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).indicatorColor),
              );
            })
          ]),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 45,
                  width: 157,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Что ещё?',
                          style:
                          TextStyle(color: Theme.of(context).primaryColor)),
                      style: ButtonStyle(
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: BorderSide(
                                      color:
                                      Theme.of(context).primaryColor))),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Theme.of(context).backgroundColor)))),
              const SizedBox(width: 20),
              SizedBox(
                height: 45,
                width: 157,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Начать юзать',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Theme.of(context).primaryColor))),
              )
            ],
          )
        ]),
      ),
    );
  }
}
