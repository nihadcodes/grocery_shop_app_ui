import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const SizedBox(height: 16),
          header(),
          const SizedBox(height: 30),
          title(),
          const SizedBox(height: 30),
          search(),
        ],
      ),
    );
  }
    Widget header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Material(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8),
                child: const Icon(Icons.menu, color: Colors.black,),
              ),
            ),
          ),
          Spacer(),
          const Icon(Icons.location_on,color: Colors.green, size: 20),
          const Text('Dhaka, Bangladesh'),
          Spacer(),

          ClipRect(
            child: Image.asset('asset/salad.webp',
            fit: BoxFit.cover,
            width: 40,
            height: 40,
            ),

          ),
        ],
      ),
    );

    }

    Widget title() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Hi there!',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),),
          Text('Find your food',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 34,
          ),),
        ],
      ),
    );
    }

    Widget search() {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search, color: Colors.green),
                hintText: 'search food',
                hintStyle: TextStyle(color: Colors.grey[600],fontSize: 14),
              ),

            ),
          ),
          Material(
            color: Colors.green,
            borderRadius: BorderRadius.circular(12),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8),
                child: const Icon(Icons.category_outlined, color: Colors.white,),
              ),
            ),
          ),
        ],
      ),
    );
    }
}
