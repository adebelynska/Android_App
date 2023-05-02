import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'United with Ukraine',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const IntroScreen(),
    );
  }
}

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainPage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/emblem.jpg',
              height: 200,
              width: 200,
            ),
            const SizedBox(height: 20),
            const Text(
              'United with Ukraine',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'United with Ukraine',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/Ukraine_Heart.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60.0,
              width: 250.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const InformationPage()),
                  );
                },
                child: const Text(
                  'Інформація',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20), // Add SizedBox widget with desired height
            SizedBox(
              height: 60.0,
              width: 250.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ImmigrationFormsPage()),
                  );
                },
                child: const Text(
                    'Імміграційні форми',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                    ),
                ),
              ),
            ),
            const SizedBox(height: 20), // Add SizedBox widget with desired height
            SizedBox(
              height: 60.0,
              width: 250.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AddInfoPage()),
                  );
                },
                child: const Text(
                  'Додати інформацію',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}


class InformationPage extends StatelessWidget {
  const InformationPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Інформація',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Image.asset(
                'assets/emblem.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'З початку війни Америка почала пропускати українців через кордон Мексика - Америка з видаванням паролю на 1 рік по формі I-94. 25-го квітня кордон закрився, але в той день Америка відкрила нову программу “United for Ukraine”, яку коротко називають “U4U”, та яка при схваленні видає пароль на 2 роки. Для того щоб приїхати в Америку по цій програмі необхідно мати спонсора який подасть форму I- на кожну людину в сім`ї. Після подачі документів, United States Citizenship and Immigration Services (USCIS) розглядають документи та схвалюють чи відхиляють спонсорство. Якщо спонсорство було схвалено, українці отримують листа та заповнюють особисту інформацію. Згодом, якщо одобрено, їм прийде лист з дозволом на в’їзд.\n\nНа даний момент програма “U4U” є єдиною програмою через яку українець або українка можe заїхати в Америку та отримати пароль.\n',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}




class ImmigrationFormsPage extends StatelessWidget {
  const ImmigrationFormsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Імміграційні форми',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/Bird.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(16),
            color: Colors.blue.shade800.withOpacity(0.7),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '\nК тому часу як ви отримаєте пароль для українців по U4U, у вас вже буде ваш аккаунт в USCIS.\n\nЯкщо ви приїхали іншим шляхом та в вас немає аккаунту, не хвилюйтесь, для реєстрації потрібна буде лише ваша електронна пошта!\n\nНа сайті, USCIS, ви можете подати більшість з імміграційних форм онлайн. Деякі форми, особливо якщо разом з формою ви подаєте на відхилення від податків, потрібно буде подавати фізичною поштою.\n\nНовоприбулі українці частіше за все користуються формами нижче:\n',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 60.0,
                    width: 250.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const I94Page()),
                        );
                      },
                      child: const Text(
                        'Форма I-94',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 60.0,
                    width: 250.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const I765Page()),
                        );
                      },
                      child: const Text(
                        'Форма I-765',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class I94Page extends StatelessWidget {
  const I94Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Ваш пароль, форма I-94',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
          ),
        ),
      ),
      body: Stack(
        children: [
        Image.asset(
        'assets/Bird.jpg',
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
      CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              padding: const EdgeInsets.all(16),
              color: Colors.blue.shade800.withOpacity(0.7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Форма I-94 являється паролем який видається електронно по прибуттю в США.\n\nЯкщо ви знаходитесь в штатах по паролю тоді у вас має бути форма I-94. Ця форма показує що ви законно знаходитесь на території Америки. Форма показує коли ви прибули до штатів та до якої дати в вас діє пароль.\n\nВи можете завантажити цю форму нижче. Для цього оберіть “GET MOST RECENT I-94” та введіть свою інформацію в необхідних лініях для вводу. \n(Якщо форму не знаходить, ви можете спробувати ввести свій А-номер замість номеру паспорту)\n',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Center(
                    child: SizedBox(
                      height: 60.0,
                      width: 250.0,
                      child: ElevatedButton(
                        onPressed: () {
                          launch('https://i94.cbp.dhs.gov/I94/#/home');
                        },
                        child: const Text(
                          'Отримати свою форму I-94',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.yellow,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '\nЩе не отримали оновлений пароль?\nВи можете подати запит на оновлення нижче. Під розділом "Topic" оберіть "I-94/Traveler Compliance", під розділом "Applicable Issue" оберіть "Ukrainians Paroled into U.S. - Russia Invasion" та заповніть решту інформації згідно вашій особистій інформації.\n',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Center(
                    child: SizedBox(
                      height: 60.0,
                      width: 250.0,
                      child: ElevatedButton(
                        onPressed: () {
                          launch('https://help.cbp.gov/s/questions?language=en_US');
                        },
                        child: const Text(
                          'Подати запит',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.yellow,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
              ],
            ),
          ),
          ),
        ],
      ),
      ]
    ),
    );
  }
}


class I765Page extends StatelessWidget {
  const I765Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Дозвіл на роботу, форма I-765',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
          ),
        ),
      ),
      body: Stack(
        children: [
        Image.asset(
        'assets/Bird.jpg',
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
      SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(16),
        color: Colors.blue.shade800.withOpacity(0.7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Форма I-765 являється формою дозвола на працю.\n\nЗ кінця 2022-го року, USCIS прийняли що всі українці які знаходяться в штатах по паролю можуть безкоштовно подавати форму I-765, яка являється формою дозвола на працю. Зазвичай мито цієї форми складає \$410, але зараз українці можуть уминути цієї плати! При подачі I-765 форми онлайн через ваш USCIS аккаунт, вам просто потрібно буде вибрати статус “DT - Ukrainian parole” та заповнити решту форми використовуя свої особисті данні!\n',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                height: 60.0,
                width: 250.0,
                child: ElevatedButton(
                  onPressed: () {
                    launch('https://www.uscis.gov/i-765');
                  },
                  child: const Text(
                    'Подати форму I-765',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.yellow,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      ),
        ],
      ),
    );
  }
}

class AddInfoPage extends StatelessWidget {
  const AddInfoPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Додати свою інформацію',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/Field.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.blue.shade800.withOpacity(0.7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    '\nЯкщо у вас є якась додаткова або оновлена інформація, ви можете прислати її нам за посиланням нижче. Також, якщо в вас є пропозиції того що було б корисно добавити до нашого додатку, можете також це запропонувати за посиланням нижче.\n',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: SizedBox(
                      height: 60.0,
                      width: 250.0,
                      child: ElevatedButton(
                        onPressed: () {
                          launch('https://docs.google.com/forms/d/e/1FAIpQLSf7kCqwlOmAIXqIHh1wEL4E4DsXBD1e1T6M9w2fRXx1VCKxWQ/viewform');
                        },
                        child: const Text(
                          'Додати інформацію',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.yellow,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}




