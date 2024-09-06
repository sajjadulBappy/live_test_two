import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_test_two/model/product.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Bag",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 110,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 16,
            right: 16,
          ),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Amount: ",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFBBBBBB),
                    ),
                  ),
                  Text(
                    "123\$",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFDB3022),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 20),
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('Congratulating'),
                        action: SnackBarAction(
                          label: 'UNDO',
                          onPressed: () {
                            // Handle the 'UNDO' action
                          },
                        ),
                        duration: const Duration(seconds: 3), // How long the snackbar stays visible
                      ),
                    );
                  },
                  child: const Text(
                    'CHECK OUT',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontStyle: FontStyle.normal),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) => Container(
            margin: const EdgeInsets.only(bottom: 40),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(1,1), // Position of the shadow (x, y)
                  ),
                ],

              ),
              child: Row(
                children: [

                  Image.asset(
                    products[index].image,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              products[index].title,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            IconButton(
                                onPressed: (){},
                                icon: const Icon(Icons.three_k_outlined)
                            ),
                          ],
                        ),
                    
                        //Size and Color
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'Color: ',
                                style: const TextStyle(
                                  color: Color(0xFFBBBBBB),
                                  fontSize: 16,
                                ),
                                children: [
                                  TextSpan(
                                    text: products[index].color,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20,),
                            RichText(
                              text: TextSpan(
                                text: 'Size: ',
                                style: const TextStyle(
                                  color: Color(0xFFBBBBBB),
                                  fontSize: 16,
                                ),
                                children: [
                                  TextSpan(
                                    text: products[index].size.toString(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                    
                        const SizedBox(height: 16,),
                        //increment and decrement buttons
                        SizedBox(
                    
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2), // Shadow color
                                      spreadRadius: 2, // Spread radius
                                      blurRadius: 6, // Blur radius for soft shadow
                                      offset: const Offset(0, 3), // Position of shadow (x, y)
                                    ),
                                  ],// Makes the background circular
                                ),
                                child: IconButton(
                                    onPressed: (){},
                                    icon: const Icon(Icons.add),
                    
                                ),
                              ),
                              const SizedBox(width: 10,),
                              const Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2), // Shadow color
                                      spreadRadius: 2, // Spread radius
                                      blurRadius: 6, // Blur radius for soft shadow
                                      offset: const Offset(0, 3), // Position of shadow (x, y)
                                    ),
                                  ],// Makes the background circular
                                ),
                                child: IconButton(
                                  onPressed: (){},
                                  icon: const Icon(Icons.add),
                    
                                ),
                              ),
                              const Spacer(),
                              const Text(
                                "123\$",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}
