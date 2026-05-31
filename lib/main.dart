import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
    Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Environment Problem',
      
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F0E8), 
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4A7C59), 
          background: const Color(0xFFF5F0E8),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Color(0xFF2C2C2C)),
        ),
        useMaterial3: true,
      ),
      home: const FirstScreen(), 
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: const Color(0xFF4A7C59),
        title: const Text(
          'AI & The Environment',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),


  

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //title text 
          const Text(
              'The Hidden Cost of AI',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2C2C2C),
              ),
            ),


            const SizedBox(height: 20),

          //datacenter image for display
            Image.network( 'https://images.unsplash.com/photo-1558494949-ef010cbdcc31?w=400&q=80',height: 150,),


            const SizedBox(height: 20),

            // stat 1 
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'Data centers used 415 TWh of electricity in 2024 which is 1.5% of all global power.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Color(0xFF555555), height: 1.5),
              ),
            ),

            const SizedBox(height: 8),

            //stat 2
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'One data center can consume up to 5 million gallons of water per day.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Color(0xFF555555), height: 1.5),
              ),
            ),

            const SizedBox(height: 8),

            //stat 3
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'AI electricity demand is projected to more than double by 2030.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Color(0xFF555555), height: 1.5),
              ),
            ),

            const SizedBox(height: 24), 

//styled navigator button
              ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4A7C59), // green to match appbar
                foregroundColor: Colors.white,
              ),
              child: const Text('See The Numbers: '),
            ),

          ],
        ),
      ),
    );
  }
}

//SECOND SCREEN with more stats and sources + back button

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: const Color(0xFF2C2C2C),
        iconTheme: const IconThemeData(color: Colors.white), // makes back arrow white
        title: const Text(
          'The Numbers',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

              Image.network(
              'https://images.unsplash.com/photo-1611273426858-450d8e3c9fce?w=400&q=80',
              height: 150,
              // fallback icon if image fail to load
              errorBuilder: (context, error, stackTrace) => const Icon(
                Icons.cloud,
                size: 80,
                color: Color(0xFF888888),
              ),
            ),

            const SizedBox(height: 20), 

            // headline for next screen
            const Text(
              'The Carbon Problem',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2C2C2C),
              ),
            ),

            const SizedBox(height: 12),


                // Fact 1 
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'US data centers generated over 105 million tons of CO₂ in 2023 with 56% powered by fossil fuels.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Color(0xFF555555), height: 1.5),
              ),
            ),

            const SizedBox(height: 8),

              const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'AI\'s water footprint could equal the world\'s entire annual bottled water consumption by 2025.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Color(0xFF555555), height: 1.5),
              ),
            ),

            const SizedBox(height: 8),


            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'Google\'s emissions rose 13% in 2023 and they blamed data center energy growth from AI.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Color(0xFF555555), height: 1.5),
              ),
            ),

            const SizedBox(height: 8),

               //source citations
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'Sources: IEA (2025), EPA, ScienceDirect (2025), arxiv.org (2024)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11,
                  color: Color(0xFF888888),
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 24),


          // Back button — same Navigator.pop pattern as starter
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to Screen 1
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2C2C2C),
                foregroundColor: Colors.white,
              ),
              child: const Text('Back'),
            ),

          ],
        ),
      ),
    );
  }
}
