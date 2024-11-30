import 'dart:io';
import 'dart:math';

void main() {
  print('');
  print('       ⚜ IKRAM GRILL & GO ⚜     ');

  print('');
  print('1. New User Sign Up ');
  print('2. Old user Login ');
  stdout.write('Enter your choice: ');
  int choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      print('            Sign Up   ');

      stdout.write('Enter your email/Google/Facebook:\n');
      String? email = stdin.readLineSync();

      stdout.write('Enter your passwaor: \n');
      var password = stdin.readLineSync();

      stdout.write('Conform Your Password: \n');
      var passwordconf = '';

      while (passwordconf != password) {
        passwordconf = stdin.readLineSync()!;
        if (passwordconf != password) {
          print('');
          print('Password not match try agian');
        }
      }
      Random rand = Random();
      int otp = rand.nextInt(10000);
      if (email != null && password != null && passwordconf == password) {
        print('Your OTP: $otp');
      }
      break;

    case 2:
      print('');
      print('            Login Your Account   ');
      print('');

      const cemail = 'ikramkhan@gmail.com';
      const cpassword = 'ikram123,..@#';

      stdout.write('Enter Your Email/Google/Facebook: \n');
      String email1 = '';
      while (email1 != cemail) {
        email1 = stdin.readLineSync()!;
        if (email1 != cemail) {
          print('');
          print('Your Email/Google/Facebook is wrong try agin');
        }
      }

      stdout.write('Enter Your Password: \n');
      var passwaord1 = '';
      while (passwaord1 != cpassword) {
        passwaord1 = stdin.readLineSync()!;
        if (passwaord1 != cpassword) {
          print('');
          print('Your Paaswaord is wrong try Again');
        }
      }

      print('');
      print('Login Successfully.......');

      print('');
      print('⚜⚜⚜ Well To IKRAM GRILL & GO ⚜⚜⚜');

    default:
      print('Invallied entry');
  }

  print('');
  stdout.write('Enter Your Wallet: ');
  int wallet = int.parse(stdin.readLineSync()!);

  bool Mainmanuactive = true;

  // store the total bill
  double totalbill = 0;

  // store the selected item and their quantaties
  Map<String, int> selecteditems = {};

  while (Mainmanuactive) {
    print('   ⚜⚜⚜ Restaurant Manu ⚜⚜⚜');
    print('');
    print('1. Food Manu ');
    print('2. Tea Manu ');
    print('3. Extit');

    print('');
    stdout.write('Enter Your Choice : ');
    String? mainchoice = stdin.readLineSync();

    switch (mainchoice) {
      case '1':
        bool foodmenuactive = true;
        while (foodmenuactive) {
          print('⚜⚜⚜ Food Menu ⚜⚜⚜');
          print('A. Burger, Price:100');
          print('B. Baryni , Price: 1200');
          print('C. Large Piza , Price: 2000');
          print('D. Small Piza, price: 1000');
          print('E. Chicken , Price: 1200');
          print('F. Kabab , Price: 150');
          print('Exit. For Exit Food Menu');

          stdout.write('Enter Your Choice: ');
          String? foodchoice = stdin.readLineSync();

          double price = 0.0;
          String item = '';

          switch (foodchoice) {
            case 'A':
            case 'a':
              price = 100;
              item = 'Burger, Price Of 1: $price';
              break;

            case 'B':
            case 'b':
              price = 1200;
              item = 'Biryani, price Of 1: $price: ';
              break;

            case 'C':
            case 'c':
              price = 2000;
              item = 'Large Pizza, Price Of 1: $price';
              break;

            case 'D':
            case 'd':
              price = 1000;
              item = 'Small Pizza, Price Of 1: $price';
              break;

            case 'E':
            case 'e':
              price = 1200;
              item = 'Chicken , Price Of 1: $price';
              break;

            case 'F':
            case 'f':
              price = 150;
              item = 'Kabab, Price Of 1: $price';
              break;

            case 'Exit':
            case 'exit':
              foodmenuactive = false;
              continue;
            default:
              print('Invalid entey . Try Again');
              continue;
          }

          stdout.write('Enter Quantity: ');
          String? quantitystr = stdin.readLineSync();
          int quantity = int.tryParse(quantitystr ?? '0') ?? 0;

          if (quantity > 0) {
            double itemtotal = price * quantity;
            totalbill += itemtotal;

            //store selected items and its quantity
            if (selecteditems.containsKey(item)) {
              selecteditems[item] = selecteditems[item]! + quantity;
            } else {
              selecteditems[item] = quantity;
            }
            print(
                'You Selected $quantity $item for the total price : \$$itemtotal');
          } else {
            print('Invalid quantity try again');
          }
        }
        break;

      case '2':
        print('');
        bool teamenuactive = true;
        while (teamenuactive) {
          print('⚜⚜⚜ Tea Menu ⚜⚜⚜');
          print('G. Simple Tea ,Price:50');
          print('H. Special Tea, price: 70');
          print('I Balck Coffe , Price: 120');
          print('J. Coffe ,Price: 50');
          print('k. Kashmiri Tea, Price: 100');
          print('Exit1 for Exit Tea Menu');

          stdout.write('Enter Your Choice: ');
          String? teachoice = stdin.readLineSync();

          double price = 0;
          String item = '';

          switch (teachoice) {
            case 'G':
            case 'g':
              price = 50;
              item = 'Simpal Team, Price Of 1: $price';
              break;

            case 'H':
            case 'h':
              price = 70;
              item = 'Special Tea, Price Of 1: $price';
              break;

            case 'I':
            case 'i':
              price = 120;
              item = 'Black Coffe, Price Of 1: $price';
              break;

            case 'J':
            case 'j':
              price = 50;
              item = 'Coffe, Price Of 1: $price';
              break;

            case 'K':
            case 'k':
              price = 100;
              item = 'Kashmiri Tea, Price Of 1: $price';
              break;

            case 'Exit1':
            case 'exit1':
              teamenuactive = false;
              continue;

            default:
              print('Invalid entey . Try Again');
              continue;
          }

          stdout.write('Enter Quantity: ');
          String? quantitystr = stdin.readLineSync();
          int quantity = int.tryParse(quantitystr ?? '0') ?? 0;

          if (quantity > 0) {
            double itemtotal = price * quantity;
            totalbill += itemtotal;

            //store selected items and its quantity
            if (selecteditems.containsKey(item)) {
              selecteditems[item] = selecteditems[item]! + quantity;
            } else {
              selecteditems[item] = quantity;
            }
            print(
                'You Selected $quantity $item for the total price : \$$itemtotal');
          } else {
            print('Invalid quantity try again');
          }
        }
        break;

      case '3':
        Mainmanuactive = false;
        print('\n Exiting the Restaurant Menu Here is Your total bill: ');

        //Show The selected items and total bill
        selecteditems.forEach((item, qunatity) {
          print('$qunatity  $item');
        });
        print('Your Total Bill of Selected Items is : $totalbill');
        break;

      default:
        print('Invalid Entry , Enter 1,2 or 3');
    }
  }

  print('');
  const pkm = 30;
  stdout.write('Add Your Location: ');
  String? location = stdin.readLineSync();

  stdout.write('Add Your Distance in Killometers : ');
  int km = int.parse(stdin.readLineSync()!);

  int DCharges = km * pkm;
  print('Delivery Charges: $DCharges');

  double fbill = totalbill + DCharges;
  print('Your Filnal Bill: $fbill');

  if (fbill > wallet) {
    print('Insufficent Funds , Reacharge Your Account');
  } else {
    print('Your Remaining Balance: ${wallet - fbill}');
    print('');
    print('Your order is placed and Delivery boy is on the way');
    print('        Thanks For Visiting ');
    print('⚜⚜⚜ IKRAM GRILL & GO For Placing Order ⚜⚜⚜');
    print('                GOOD BY  ');
  }
}
