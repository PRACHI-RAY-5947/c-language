import 'package:flutter/material.dart';

List<Map<String, dynamic>> Quotes = [
  {
    "quote":
        "May the festival of lights fill your life with the glow of happiness and the sparkle of joy."
  },
  {
    "quote":
        "Wishing you a Diwali filled with happiness, success, and prosperity."
  },
  {
    "quote":
        "Let the light of Diwali illuminate your life with endless joy, prosperity, health, and wealth."
  },
  {
    "quote":
        "May the divine light of Diwali spread into your life peace, prosperity, happiness, and good health."
  },
  {
    "quote":
        "Wishing you a Diwali full of celebrations and feasts, sweets and crackers, and endless memories to cherish."
  },
  {
    "quote":
        "May the festival of lights brighten your life with the glow of happiness and the sparkle of joy."
  },
  {
    "quote":
        "Wishing you a Diwali that brings you prosperity, wealth, and success in abundance."
  },
  {
    "quote":
        "May the beauty of Diwali fill your home with happiness, and may the coming year provide you with everything that brings you joy."
  },
  {
    "quote":
        "Wishing you a Diwali that brings you success, wealth, and fulfillment."
  },
  {
    "quote":
        "May the joyous celebration of this divine festival fill your heart with never-ending joy and happiness."
  },
  {
    "quote":
        "On this auspicious occasion of Diwali, may you be blessed with happiness, prosperity, and success."
  },
  {
    "quote":
        "Wishing you a Diwali full of sweet moments and colorful memories to cherish forever."
  },
  {
    "quote":
        "May the festival of lights fill your life with the glow of happiness and the sparkle of joy."
  },
  {"quote": "Wishing you a Diwali filled with love, light, and laughter."},
  {
    "quote":
        "May the joyous celebration of Diwali bring you happiness and prosperity."
  },
  {
    "quote":
        "Wishing you and your family a Diwali filled with love, light, and happiness."
  },
  {
    "quote":
        "May the divine light of Diwali bring peace, prosperity, and happiness to your life."
  },
  {
    "quote": "Wishing you a Diwali that's as bright as the lights on the diyas."
  },
  {
    "quote":
        "May the festival of lights bring blessings, joy, and prosperity into your life."
  },
  {
    "quote":
        "Wishing you a Diwali that shines brighter with love, laughter, and prosperity."
  }
];

class Quote {
  late String quote;

  Quote({
    required this.quote,
  });

  factory Quote.fromMap({required Map quotedata}) {
    return Quote(quote: quotedata['quote']);
  }
}
