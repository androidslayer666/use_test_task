import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 70),
          MenuPagePhoneNumber(),
          SizedBox(height: 61),
          Expanded(child: MenuPageMenuItemsColumn()),
          SizedBox(height: 20),
          MenuPageMenuItemsBottom(),
          SizedBox(height: 48),
        ],
      ),
    );
  }
}

class MenuPageMenuItemsColumn extends StatelessWidget {
  const MenuPageMenuItemsColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MenuPageMenuItem(
          iconData: Icons.credit_card,
          onPressed: () {},
          text: 'Способы оплаты',
        ),
        const SizedBox(height: 35),
        MenuPageMenuItem(
          iconData: Icons.car_rental,
          onPressed: () {},
          text: 'Автомобили',
        ),
        const SizedBox(height: 35),
        MenuPageMenuItem(
          iconData: Icons.list_alt,
          onPressed: () {},
          text: 'Заказы',
        ),
        const SizedBox(height: 35),
        MenuPageMenuItem(
          iconData: Icons.favorite,
          onPressed: () {},
          text: 'Избранное (0)',
        ),
        const SizedBox(height: 35),
        MenuPageMenuItem(
          iconData: Icons.settings,
          onPressed: () {},
          text: 'Настройки',
        ),
      ],
    );
  }
}

class MenuPageMenuItemsBottom extends StatelessWidget {
  const MenuPageMenuItemsBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MenuPageMenuItem(
          iconData: Icons.support,
          onPressed: () {},
          text: 'Поддержка',
        ),
        const SizedBox(height: 35),
        MenuPageMenuItem(
          iconData: Icons.exit_to_app,
          onPressed: () {},
          text: 'Выйти',
        )
      ],
    );
  }
}

class MenuPageMenuItem extends StatelessWidget {
  const MenuPageMenuItem(
      {Key? key,
      required this.iconData,
      required this.text,
      required this.onPressed})
      : super(key: key);

  final IconData iconData;
  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed(),
      child: Row(
        children: [
          Icon(iconData, color: Theme.of(context).primaryColor,),
          const SizedBox(width: 18,),
          Text(text, style: Theme.of(context).textTheme.bodyText2),
        ],
      ),
    );
  }
}

class MenuPagePhoneNumber extends StatelessWidget {
  const MenuPagePhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '+7 920 065 79 87',
      style: Theme.of(context).textTheme.headline1,
    );
  }
}
