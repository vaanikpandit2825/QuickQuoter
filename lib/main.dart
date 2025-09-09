import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(QuotesApp());

class QuotesApp extends StatelessWidget{
  const QuotesApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Daily Quotes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: QuotesScreen(),
    );
  }
}

class QuotesScreen extends StatefulWidget
{
  const QuotesScreen({super.key});

  @override
  _QuotesScreenState createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> 
{
  final List<String> quotes = [
    "Don’t watch the clock; do what it does. Keep going.",
    "Success is not final, failure is not fatal: It is the courage to continue that counts.",
    "The harder you work for something, the greater you’ll feel when you achieve it.",
    "Dream it. Wish it. Do it.",
    "Stay positive, work hard, make it happen.",
    "Don’t stop when you’re tired. Stop when you’re done.",
    "Little things make big days.",
    "One day or day one — you decide.",
    "Wake up with determination. Go to bed with satisfaction.",
    "Your limitation—it's only your imagination.",
    "Push yourself, because no one else is going to do it for you.",
    "Great things never come from comfort zones.",
    "Dream bigger. Do bigger.",
    "Don’t wait for opportunity. Create it.",
    "Sometimes we’re tested not to show our weaknesses, but to discover our strengths.",
    "The key to success is to focus on goals, not obstacles.",
    "Turn your wounds into wisdom.",
    "Dream it. Believe it. Build it.",
    "Rise like the sun, even if yesterday was stormy. Every new day is your shot to shine brighter than ever." 
    "Quit whining, start grinding. Your glow-up ain’t gonna happen while you’re busy scrolling."
  ];

  int currentIndex = 0;

  void nextQuote() {
    final random = Random();
    setState(() {
      currentIndex = random.nextInt(quotes.length);
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text('Quotes of the Day'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Text(
                '"${quotes[currentIndex]}"',
                style: TextStyle(
                  fontSize: 26,
                  fontStyle: FontStyle.italic,
                  color: Colors.deepPurple.shade700,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: nextQuote,
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
                child: Text('Next Quote'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}






















