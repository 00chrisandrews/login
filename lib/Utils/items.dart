import 'package:flutter/material.dart';

class Items {
  List<String> recyclableItems = [
    "Paper",
    "Wrapping Paper - Not the shiny plastic sort",
    "Newspapers",
    "Magazines",
    "Catalogues",
    "Directories",
    "Leaflets",
    "Junk Mail",
    "Paper Bags",
    "Envelopes - Including window envelopes",
    "Diaries",
    "Calendars",
    "Books - Hardback covers should go in the bin",
    "Cardboard",
    "Greetings cards - Without stick on sparkles or ribbon",
    "Kitchen roll tubes",
    "Glass Bottles",
    "Glass Jars",
    "Plastic Bags - Including plastic carrier bags",
    "Dring and Food Cartons - i.e Tetra Pak",
    "Plastic Bottle Tops",
    "Plastic Food Containers",
    "Yoghurt Pots Lids - Foil only, not the shiny paper lids",
    "Cling Film",
    "Cellophane",
    "Tin Foil",
    "Foil Trays and Cases",
    "Tins and Cans",
    "Chocolate and Biscuit Tins",
    "Plastic and Cardboard Packaging - Excluding polystyrene)",
  ];

  sortRecItems() {
    recyclableItems.sort();
    return recyclableItems;
  }

  var nonRecyclableItems = [
    "Balloons/streamers",
    "Hard or brittle plastic e.g.boxes",
    "Coat hangers",
    "Mirrors",
    "Twist ties",
    "Broken glass",
    "Crockery",
    "Firework cases",
    "Polystyrene/styrofoam",
    "Artificial or real wreaths",
    "Food waste/peelings",
    "Cuddly/stuffed toys",
    "Cushions",
    "Nappies",
    "Pet bedding (wood shavings/straw)",
    "Building waste",
    "Carpet",
    "Wallpaper/tissue or crepe paper",
    "Sweet wrappers and crisp packets",
    "Electric sockets/plug sockets",
    "Toothpaste tubes",
    "String/cord",
    "General household waste including cigarette ends",
    "Knives/cutlery/utensils",
  ];

  sortNonRecItems() {
    nonRecyclableItems.sort();
    return nonRecyclableItems;
  }

  var householdWasteRecyclingCentres = [
    "Cooking oil",
    "Batteries (household & car)",
    "CDs/DVDs",
    "Video tapes",
    "Plastic toys",
    "Saucepans",
    "Artificial/real christmas trees",
    "Plants/flowers",
    "Garden waste",
    "Clothing",
    "Shoes/boots/slippers",
    "Paint",
    "Wood*/wood flooring",
    "Tiles",
    "Electrical wire",
    "Electrical and electronic items e.g. electric toothbrush; toaster; kettle; hairdryer; straighteners; power tools etc. known as WEEE",
  ];
  sortHouseItems() {
    householdWasteRecyclingCentres.sort();
    return householdWasteRecyclingCentres;
  }
}
