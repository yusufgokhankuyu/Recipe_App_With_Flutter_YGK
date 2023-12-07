import 'package:flutter/material.dart';

class Recipe {
  Recipe(
      {this.recipeName = '',
      this.description = '',
      this.ingredients = '',
      this.steps = '',
      this.recipeImage = '',
      this.recipeMaker = '',
      this.totalTime = '',
      this.servings = '',
      this.startColor,
      this.endColor});

  String recipeName;
  String description;
  String ingredients;
  String steps;
  String recipeImage;
  String recipeMaker;
  String totalTime;
  String servings;
  Color? startColor;
  Color? endColor;
}

var recipes = [
  Recipe(
    recipeName: 'Chicken and Shrimp Laksas',
    description:
        'Buddha Lo shares this family recipe for Chicken and Shrimp Laksa, a refreshing and brothy noodle dish popular throughout Southeast Asia. Lo\'s homemade laksa paste — made with fresh lemongrass, pungent shrimp paste, and nutty peanuts — forms the base of this fragrant noodle dish, while coconut cream adds a velvety mouthfeel to the aromatic broth. Top it with poached shrimp and chicken, fresh herbs, and fried shallots, and slurp with joy.',
    ingredients:
        "Laksa Paste:\n -3 medium (1-ounce) shallots, chopped (about 3/4 cup)\n -¼ cup canola oil\n -(2-inch) piece fresh ginger, peeled and sliced (about 1/4 cup)\n -1 (3-inch) piece fresh galangal, peeled and chopped (about 1/4 cup)\n -4 small dried red chiles \n -3 large garlic cloves, smashed\n -1 cup chicken stock, divided\n -½ cup peanuts\n -2 teaspoons dried shrimp paste (such as Shrimp & 6A Brand Belacan)\n -2 teaspoons ground turmeric\n -2 teaspoons ground coriander\n -1 teaspoon palm sugar or brown sugar\n\n Soup:\n -2 tablespoons canola oil\n -4 cups chicken stock\n -2 cups coconut cream (from 1 [15-ounce] can)\n -2 tablespoons fish sauce, plus more to taste\n -8 ounces dried rice noodles\n -2 (8-ounce) cooked boneless, skinless chicken breasts, sliced\n -8 unpeeled raw jumbo shrimp, peeled, cleaned, and poached\n -1 cup fresh bean sprouts\n -4 scallions (about 1 1/2 ounces), sliced (about 1/3 cup)\n -½ cup loosely packed fresh Vietnamese mint leaves\n -½ cup loosely packed fresh cilantro leaves\n -¼ cup fried shallots\n -1 lime, cut into 4 wedges",
    steps:
        "Make the laksa paste:\n Step 1\n Combine shallots, lemongrass, oil, ginger, galangal, red chiles, garlic, and 1/2 cup stock in a blender; process until mixture forms a thick, smooth paste, about 30 seconds. Add peanuts, shrimp paste, turmeric, coriander, sugar, and remaining 1/2 cup stock to blender; process until smooth, about 30 seconds.\n\n Make the soup:\n Step 1\n Heat oil in a large Dutch oven over medium. Add laksa paste, and cook, stirring constantly, until fragrant, 4 to 6 minutes. Whisk in stock and coconut cream; bring to a boil over high. Reduce heat to medium-low, and simmer, covered, 10 minutes. Remove from heat. Whisk in fish sauce, and add more to taste, if desired.\n Step 2\n While stock mixture simmers, cook rice noodles according to package directions. Divide rice noodles evenly among 4 bowls. Arrange sliced chicken and poached shrimp evenly on noodles. Ladle hot stock mixture evenly into bowls. Top evenly with bean sprouts, scallions, mint, cilantro, fried shallots, and lime wedges.",
    recipeImage: 'chicken_and_shrimp_laksa.jpg',
    recipeMaker: 'Buddha Lo',
    totalTime: "45 mins",
    servings: "4",
    startColor: const Color(0xFFF37552),
    endColor: const Color(0xFFF58B5A),
  ),

  Recipe(
    recipeName: 'Look No Further for Creamy, Cheesy Scalloped Potatoes',
    description:
        'Indulge your guests with the exquisite delight of these rich and creamy scalloped potatoes, meticulously crafted to add a touch of luxury to your next dinner party. Elevate your dining experience with this delectable side dish, sure to leave a lasting impression and create a culinary atmosphere that surpasses expectations. The velvety texture and decadent flavor of these potatoes make them a perfect complement to any main course, turning an ordinary meal into an extraordinary feast. Treat your taste buds and those of your guests to an unforgettable gastronomic journey with this sumptuous culinary creation.',
    ingredients:
        "-Cooking spray\n -6 ounces aged extra-sharp cheddar cheese (such as Old Croc), grated (about 1 1/2 cups)\n -2 ounces cheddar cheese, grated (about 1/2 cup)\n -2 pounds russet potatoes, peeled and sliced crosswise into 1/4-inch-thick rounds (about 5 cups)\n -1 1/4 cups heavy whipping cream\n -1 cup whole milk\n1 teaspoon kosher salt\n -1/2 teaspoon black pepper\n -2 medium garlic cloves, smashed\n -2 (3-inch) thyme sprigs\n -2 tablespoons chopped fresh chives, plus chives for garnish",
    steps:
        "Step 1\n Preheat oven to 425°F. Spray an 8-inch square baking dish with cooking spray.\n Step 2\n Combine cheeses in a medium bowl. Set aside.\n Step 3\n Bring potatoes, cream, milk, salt, pepper, garlic, and thyme to a simmer in a large saucepan over medium-high. Reduce heat to medium-low; cover and cook, stirring occasionally, until potatoes are mostly tender, about 8 minutes. Remove from heat, and gently stir in chives and 1 1/2 cups cheese mixture. Discard thyme sprigs.\n Step 4\n Transfer potato mixture to prepared baking dish, spreading into a relatively even layer; sprinkle with remaining 1/2 cup cheese mixture. Bake in preheated oven until bubbling around edges and top is golden brown, 20 to 25 minutes. Remove from oven, and let cool at room temperature for 15 minutes. Cut additional chives into 1-inch pieces, and garnish.",
    recipeImage: 'Cheesy_Scalloped_Potatoes.jpg',
    recipeMaker: 'Julia Levy',
    totalTime: "1 hr",
    servings: "6",
    startColor: const Color(0xFF621e14),
    endColor: const Color(0xFFc7c73d),
  ),

  Recipe(
    recipeName: 'Ricotta Polpette',
    description:
        'Tender vegetarian polpette made with ricotta mixed with grated Parmesan cheese, and simmered in a slightly spicy tomato sauce.',
    ingredients:
        "Ricotto Polpette\n 2 cups whole-milk ricotta cheese (from 2 [15-ounce] containers), drained\n2 large eggs, lightly beaten\n4 ounces Parmesan cheese, grated (about 1 cup), plus more for serving\n1/2 cup chopped fresh basil\n1 1/2 teaspoons kosher salt\n1/2 teaspoon black pepper\n1/2 teaspoon grated garlic (from 2 medium garlic cloves)\n1 1/4 cups dry breadcrumbs, plus more as needed\n\n Tomato Souce\n 4 medium garlic cloves\n1/4 cup olive oil, plus more for drizzling\n1/4 teaspoon crushed red pepper flakes\n1 (28-ounce) can whole peeled San Marzano plum tomatoes, crushed by hand\n1 cup loosely packed fresh basil leaves, plus small leaves for garnish\n1/2 cup water\n1/2 teaspoon kosher salt",
    steps:
        "Ricotta Polpette Preparation\n Step 1\n -If ricotta is watery, spoon onto a few layers of paper towels and spread to an even layer; place more paper towels on top. Gently press down on ricotta to remove excess moisture. Remove and discard top layer of paper towels. Lift paper towel by the sides and dump ricotta into a large bowl, using paper towel to shake leftover pieces of ricotta into bowl.\n Step 2\n -Stir in eggs, Parmesan cheese, basil, salt, pepper, and garlic until thoroughly blended and smooth. Stir in breadcrumbs until combined. (Depending on ricotta, mixture may be loose but should be able to shape into balls that hold together. If not, add additional breadcrumbs, 1/4 cup at a time, as needed.)\n Step 3\n -Shape mixture into 24 balls (about 2 tablespoons each) and place on a baking sheet lined with parchment paper. Refrigerate, uncovered, for 1 hour.\n Step 4\n -While polpette chill, prepare the Tomato Sauce. Place garlic, oil, and crushed red pepper flakes in a small saucepan over medium-low. Once garlic starts to sizzle, reduce heat to low. Cook, stirring occasionally, until garlic is tender, 10 to 12 minutes.\n Step 5\n -Remove saucepan from heat, and mash garlic cloves using a fork. Transfer garlic mixture to a large Dutch oven, and stir in tomatoes, basil, water, and salt. Bring to a simmer over medium. Simmer, stirring occasionally, until slightly thickened, 12 to 15 minutes, reducing heat to low as needed to prevent boiling.\n Step 6\n -Stir Tomato Sauce, and immediately add Ricotta Polpette to simmering sauce. Cover and reduce heat to low. Cook, gently shaking Dutch oven occasionally, until polpette are tender and cooked through, 12 to 15 minutes. Remove from heat.\n Step 7\n -Using a serving spoon, divide polpette and sauce evenly among 4 shallow bowls. Drizzle with additional oil, and sprinkle with additional Parmesan cheese. Garnish with small basil leaves. ",
    recipeImage: 'risotto_polpette.jpg',
    recipeMaker: 'Liz Mervosh',
    totalTime: "1 hr 45 mins",
    servings: "4",
    startColor: const Color(0xFFe18b41),
    endColor: const Color(0xFFc7c73d),
  ),

  Recipe(
    recipeName: 'Mediterranean Chickpea Salad',
    description:
        'A refreshing and healthy salad featuring chickpeas, colorful vegetables, and a zesty lemon vinaigrette.',
    ingredients:
        "Salad\n 2 cans (15 ounces each) chickpeas, drained and rinsed\n1 cup cherry tomatoes, halved\n1 cucumber, diced\n1 red bell pepper, diced\n1/2 red onion, finely chopped\n1/2 cup Kalamata olives, sliced\n1/2 cup crumbled feta cheese\n1/4 cup fresh parsley, chopped\n\nLemon Vinaigrette\n 1/4 cup olive oil\n3 tablespoons fresh lemon juice\n1 teaspoon honey\n1 teaspoon Dijon mustard\n1 clove garlic, minced\nSalt and black pepper to taste",
    steps:
        "Step 1\n -In a large salad bowl, combine chickpeas, cherry tomatoes, cucumber, red bell pepper, red onion, olives, feta cheese, and parsley.\n Step 2\n -In a small bowl, whisk together olive oil, lemon juice, honey, Dijon mustard, minced garlic, salt, and black pepper to create the vinaigrette.\n Step 3\n -Pour the lemon vinaigrette over the salad and toss gently to coat the ingredients evenly.\n Step 4\n -Refrigerate the salad for at least 30 minutes to allow flavors to meld.\n Step 5\n -Serve chilled and garnish with additional parsley if desired.",
    recipeImage: "Chickpea_Salad.jpg",
    totalTime: "30 mins",
    servings: "6",
    startColor: const Color(0xFF4caf50),
    endColor: const Color(0xFF388e3c),
    recipeMaker: 'Makinze Gore',
  ),

  Recipe(
    recipeName: 'Thai Basil Chicken Stir-Fry',
    description:
        'A flavorful and aromatic Thai-inspired stir-fry with tender chicken, fresh basil, and a savory sauce.',
    ingredients:
        "Stir-Fry\n 1 lb boneless, skinless chicken breasts, thinly sliced\n2 tablespoons vegetable oil\n3 cloves garlic, minced\n1 red bell pepper, thinly sliced\n1 yellow bell pepper, thinly sliced\n1 cup snap peas, ends trimmed\n1 cup fresh basil leaves, torn\n\nSauce\n 3 tablespoons soy sauce\n2 tablespoons oyster sauce\n1 tablespoon fish sauce\n1 tablespoon hoisin sauce\n1 tablespoon brown sugar\n1 teaspoon Sriracha sauce (adjust to taste)\n\nTo Serve\n Cooked jasmine rice",
    steps:
        "Step 1\n -In a small bowl, whisk together soy sauce, oyster sauce, fish sauce, hoisin sauce, brown sugar, and Sriracha to create the sauce. Set aside.\n Step 2\n -In a wok or large skillet, heat vegetable oil over medium-high heat. Add minced garlic and sauté for about 30 seconds until fragrant.\n Step 3\n -Add sliced chicken to the wok and stir-fry until fully cooked and slightly browned. Remove chicken from the wok and set aside.\n Step 4\n -In the same wok, add a bit more oil if needed and stir-fry the sliced bell peppers and snap peas until they are crisp-tender.\n Step 5\n -Return the cooked chicken to the wok, pour the sauce over the ingredients, and toss everything together until well coated.\n Step 6\n -Add torn basil leaves and toss again until the basil is wilted.\n Step 7\n -Serve the Thai Basil Chicken over cooked jasmine rice.",
    recipeImage: "thai-basil-chicken-stir-fry.jpg",
    totalTime: "25 mins",
    servings: "4",
    startColor: const Color(0xFFe57373),
    endColor: const Color(0xFFc62828),
    recipeMaker: 'Chef John',
  ),

  Recipe(
    recipeName: 'Mushroom Risotto',
    description:
        'Creamy and comforting risotto made with Arborio rice, a variety of mushrooms, and a touch of Parmesan cheese.',
    ingredients:
        "Risotto\n 1 1/2 cups Arborio rice\n1/2 cup dry white wine\n6 cups vegetable or chicken broth, kept warm on the stove\n1 cup assorted mushrooms (such as shiitake, cremini, and oyster), sliced\n1 small onion, finely chopped\n2 cloves garlic, minced\n2 tablespoons olive oil\n1/2 cup grated Parmesan cheese\nSalt and black pepper to taste\n\nGarnish\n Fresh parsley, chopped\nAdditional Parmesan cheese",
    steps:
        "Step 1\n -In a large pan, heat olive oil over medium heat. Add chopped onion and sauté until translucent.\n Step 2\n -Add minced garlic and sliced mushrooms to the pan. Cook until mushrooms are tender and any liquid has evaporated.\n Step 3\n -Stir in Arborio rice and cook for 1-2 minutes until the rice is lightly toasted.\n Step 4\n -Pour in the white wine and stir until it is mostly absorbed by the rice.\n Step 5\n -Begin adding warm broth to the rice one ladle at a time, stirring frequently. Allow each addition of broth to be absorbed before adding the next. Continue until the rice is creamy and cooked to al dente texture.\n Step 6\n -Stir in grated Parmesan cheese and season with salt and black pepper to taste.\n Step 7\n -Garnish with fresh chopped parsley and additional Parmesan cheese before serving.",
    recipeImage: "mashroom_risotto.jpg",
    totalTime: "40 mins",
    servings: "4",
    startColor: const Color(0xFF5c6bc0),
    endColor: const Color(0xFF3949ab),
    recipeMaker: 'Gardon Ramsay',
  ),

  Recipe(
    recipeName: 'Ali Nazik Kebab',
    description:
        'Delicious Ali Nazik Kebab, a traditional Turkish dish served with roasted eggplant puree and yogurt-based sauce.',
    ingredients:
        "Roasted Eggplant Puree\n 2 roasted eggplants\n1 clove garlic, crushed\n1 cup strained yogurt\n2 tablespoons olive oil\nSalt\nBlack pepper\n\nMeatballs\n 500 grams ground beef\n1 onion, grated\n2 cloves garlic, crushed\n1/3 cup breadcrumbs\n1 egg\n1 teaspoon cumin\nSalt\nBlack pepper\n\nFor Topping\n 2 tablespoons butter\n1 teaspoon red pepper flakes\nPomegranate seeds (optional)\n",
    steps:
        "Roasted Eggplant Puree\n Step 1\n -Grate or mash the roasted eggplants. Mix with garlic, yogurt, olive oil, salt, and black pepper.\n Step 2\n -Let the mixture rest in the refrigerator.\n\nMeatballs\n Step 3\n -In a large bowl, combine ground beef, grated onion, crushed garlic, breadcrumbs, egg, cumin, salt, and black pepper.\n Step 4\n -Shape the mixture into walnut-sized balls and cook them on a grill or in a pan.\n\nAssembly\n Step 5\n -Spread the roasted eggplant puree on a serving plate.\n Step 6\n -Place the cooked meatballs on top.\n Step 7\n -Melt butter in a separate pan, add red pepper flakes, and stir.\n Step 8\n -Pour the prepared sauce over the meatballs.\n Step 9\n -Optionally, garnish with pomegranate seeds.\n Step 10\n -Serve hot.",
    recipeImage: "ali_nazik.jpg",
    totalTime: "1 hour",
    servings: "4",
    startColor: const Color(0xFFff7043),
    endColor: const Color(0xFFe64a19),
    recipeMaker: 'Somer Sivrioğlu',
  ),

  Recipe(
    recipeName: 'Coq au Vin',
    description:
        'A classic French dish, Coq au Vin is a rich and flavorful chicken stew braised in red wine, bacon, mushrooms, and aromatic herbs.',
    ingredients:
        "Chicken Marinade\n 1 whole chicken, cut into pieces\n2 cups red wine\n2 cloves garlic, minced\n1 onion, chopped\n2 carrots, sliced\n2 sprigs fresh thyme\n2 bay leaves\nSalt and black pepper to taste\n\nOther Ingredients\n 4 ounces bacon, diced\n12-16 small pearl onions, peeled\n8 ounces mushrooms, quartered\n2 tablespoons all-purpose flour\n2 cups chicken broth\n2 tablespoons tomato paste\n2 tablespoons unsalted butter\nFresh parsley, chopped for garnish\n\nTo Serve\n Mashed potatoes or crusty bread",
    steps:
        "Chicken Marinade\n Step 1\n -In a large bowl, combine chicken pieces with red wine, minced garlic, chopped onion, sliced carrots, thyme, bay leaves, salt, and black pepper. Cover and refrigerate for at least 4 hours or overnight.\n\nCooking\n Step 2\n -Remove chicken from the marinade and pat dry with paper towels. Reserve the marinade.\n Step 3\n -In a large Dutch oven, cook diced bacon until crispy. Remove bacon and set aside.\n Step 4\n -Brown chicken pieces in the bacon fat until golden on all sides. Remove chicken and set aside.\n Step 5\n -In the same pot, sauté pearl onions and mushrooms until golden brown.\n Step 6\n -Sprinkle flour over the vegetables and stir to coat.\n Step 7\n -Return the cooked bacon and chicken to the pot. Pour in the reserved marinade, chicken broth, and add tomato paste. Stir well.\n Step 8\n -Bring the mixture to a simmer, cover, and cook for about 1.5 to 2 hours until the chicken is tender.\n Step 9\n -Stir in butter for added richness and adjust salt and pepper to taste.\n\nTo Serve\n Step 10\n -Serve Coq au Vin over mashed potatoes or with crusty bread. Garnish with chopped fresh parsley.",
    recipeImage: "french.jpg",
    totalTime: "2.5 to 3 hours",
    servings: "6",
    startColor: const Color(0xFFe57373),
    endColor: const Color(0xFFc62828),
    recipeMaker: 'Antoine Lours',
  ),

  Recipe(
    recipeName: 'Homemade Chicken Burgers',
    description:
        'Delicious and juicy homemade chicken burgers with a special sauce, lettuce, tomato, and pickles, served in soft burger buns.',
    ingredients:
        "Chicken Patties\n 1 lb ground chicken\n1/4 cup breadcrumbs\n1 egg\n1/4 cup grated Parmesan cheese\n2 cloves garlic, minced\n1 teaspoon dried oregano\nSalt and black pepper to taste\n\nSpecial Sauce\n 1/2 cup mayonnaise\n2 tablespoons ketchup\n1 tablespoon Dijon mustard\n1 tablespoon pickle relish\n1 teaspoon honey\n\nBurger Assembly\n Burger buns\nLettuce leaves\nTomato slices\nPickles\nCheese slices (optional)\n\nTo Serve\n French fries or sweet potato fries",
    steps:
        "Chicken Patties\n Step 1\n -In a bowl, combine ground chicken, breadcrumbs, egg, Parmesan cheese, minced garlic, dried oregano, salt, and black pepper. Mix until well combined.\n Step 2\n -Divide the mixture into equal portions and shape into burger patties.\n Step 3\n -Cook the patties on a grill or stovetop until fully cooked and golden brown on both sides.\n\nSpecial Sauce\n Step 4\n -In a small bowl, mix mayonnaise, ketchup, Dijon mustard, pickle relish, and honey to create the special sauce.\n\nBurger Assembly\n Step 5\n -Toast the burger buns and spread a generous amount of special sauce on each half.\n Step 6\n -Place a lettuce leaf on the bottom bun, followed by a chicken patty.\n Step 7\n -Top with tomato slices, pickles, and cheese if desired.\n Step 8\n -Cover with the top bun and secure with a toothpick.\n\nTo Serve\n Step 9\n -Serve the homemade chicken burgers with your favorite fries.",
    recipeImage: "homemade_burger.jpg",
    totalTime: "30 mins",
    servings: "4",
    startColor: const Color(0xFFffcc80),
    endColor: const Color(0xFFef6c00),
    recipeMaker: 'Laura Rege',
  ),

  Recipe(
    recipeName: 'Vegetarian Chickpea Curry',
    description:
        'A hearty and flavorful vegetarian chickpea curry with a blend of spices, coconut milk, and a variety of colorful vegetables.',
    ingredients:
        "Curry\n 2 cans (15 ounces each) chickpeas, drained and rinsed\n1 large onion, finely chopped\n3 cloves garlic, minced\n1 tablespoon fresh ginger, grated\n1 can (14 ounces) diced tomatoes\n1 can (14 ounces) coconut milk\n2 cups mixed vegetables (e.g., bell peppers, carrots, peas)\n1 tablespoon curry powder\n1 teaspoon ground cumin\n1 teaspoon ground coriander\n1/2 teaspoon turmeric\n1/2 teaspoon cayenne pepper (adjust to taste)\nSalt and black pepper to taste\n2 tablespoons cooking oil\n\nTo Serve\n Cooked rice\nFresh cilantro, chopped\nLime wedges",
    steps:
        "Step 1\n -In a large pan, heat cooking oil over medium heat. Add chopped onions and sauté until softened.\n Step 2\n -Add minced garlic and grated ginger to the onions. Sauté for an additional minute until fragrant.\n Step 3\n -Stir in curry powder, ground cumin, ground coriander, turmeric, and cayenne pepper. Cook for 1-2 minutes to toast the spices.\n Step 4\n -Add diced tomatoes (with their juice) and coconut milk to the pan. Stir well to combine.\n Step 5\n -Add mixed vegetables and chickpeas to the mixture. Season with salt and black pepper. Stir and bring to a simmer.\n Step 6\n -Reduce heat to low, cover the pan, and let it simmer for 15-20 minutes until the vegetables are tender.\n\nTo Serve\n Step 7\n -Serve the vegetarian chickpea curry over cooked rice.\n Step 8\n -Garnish with fresh chopped cilantro and serve with lime wedges on the side.",
    recipeImage: "vegan_chickpea.jpg",
    totalTime: "30 mins",
    servings: "4",
    startColor: const Color(0xFF4caf50),
    endColor: const Color(0xFF388e3c),
    recipeMaker: 'Melissa Huggins',
  ),

  Recipe(
    recipeName: 'Ratatouille',
    description:
        'A classic French Provençal vegetable stew made with a medley of colorful vegetables like eggplant, zucchini, bell peppers, and tomatoes.',
    ingredients:
        "Vegetable Medley\n 1 large eggplant, diced\n2 medium zucchinis, sliced\n1 large red bell pepper, diced\n1 large yellow bell pepper, diced\n4 ripe tomatoes, diced\n1 large onion, finely chopped\n4 cloves garlic, minced\n1/4 cup fresh basil, chopped\n1/4 cup fresh parsley, chopped\nSalt and black pepper to taste\n\nHerb-infused Tomato Sauce\n 2 tablespoons tomato paste\n1/4 cup olive oil\n1 teaspoon dried thyme\n1 teaspoon dried oregano\n1 teaspoon dried rosemary\nSalt and black pepper to taste\n\nTo Serve\n Crusty bread or cooked quinoa",
    steps:
        "Step 1\n -Preheat the oven to 375°F (190°C).\n\nVegetable Medley\n Step 2\n -In a large bowl, combine diced eggplant, sliced zucchinis, diced red and yellow bell peppers, diced tomatoes, chopped onion, minced garlic, fresh basil, and fresh parsley.\n Step 3\n -Season the vegetable medley with salt and black pepper. Toss to combine.\n\nHerb-infused Tomato Sauce\n Step 4\n -In a small bowl, whisk together tomato paste, olive oil, dried thyme, dried oregano, dried rosemary, salt, and black pepper.\n Step 5\n -Pour the herb-infused tomato sauce over the vegetable mixture and toss until the vegetables are evenly coated.\n\nBaking\n Step 6\n -Transfer the vegetable mixture to a baking dish and spread it evenly.\n Step 7\n -Bake in the preheated oven for 45-50 minutes or until the vegetables are tender, stirring halfway through.\n\nTo Serve\n Step 8\n -Serve Ratatouille hot, garnished with additional fresh herbs. Enjoy with crusty bread or over cooked quinoa.",
    recipeImage: "ratatouille.jpg",
    totalTime: "1 hour",
    servings: "6",
    startColor: const Color(0xFFb39ddb),
    endColor: const Color(0xFF7e57c2),
    recipeMaker: 'Robin Broadfoot',
  ),

  Recipe(
    recipeName: 'Chicken Teriyaki Stir-Fry',
    description:
        'A flavorful and quick Chicken Teriyaki Stir-Fry featuring tender chicken, crisp vegetables, and a homemade teriyaki sauce.',
    ingredients:
        "Chicken Marinade\n 1 lb boneless, skinless chicken breasts, thinly sliced\n2 tablespoons soy sauce\n1 tablespoon sake (or dry white wine)\n1 tablespoon mirin\n1 tablespoon cornstarch\n\nTeriyaki Sauce\n 1/4 cup soy sauce\n2 tablespoons mirin\n2 tablespoons sake\n2 tablespoons brown sugar\n1 tablespoon honey\n\nStir-Fry\n 2 tablespoons vegetable oil\n1 bell pepper, thinly sliced\n1 carrot, julienned\n1 broccoli crown, cut into florets\n2 cloves garlic, minced\n1 tablespoon fresh ginger, grated\nSesame seeds and green onions for garnish\n\nTo Serve\n Cooked white rice",
    steps:
        "Chicken Marinade\n Step 1\n -In a bowl, combine thinly sliced chicken with soy sauce, sake, mirin, and cornstarch. Mix well and let it marinate for at least 15 minutes.\n\nTeriyaki Sauce\n Step 2\n -In a small saucepan, whisk together soy sauce, mirin, sake, brown sugar, and honey. Bring to a simmer over medium heat, stirring until the sugar is dissolved. Simmer for 2-3 minutes until the sauce thickens slightly. Set aside.\n\nStir-Fry\n Step 3\n -Heat vegetable oil in a wok or large skillet over high heat. Add marinated chicken and stir-fry until browned and cooked through. Remove chicken from the wok and set aside.\n Step 4\n -In the same wok, add a bit more oil if needed. Stir-fry bell pepper, julienned carrot, and broccoli florets until crisp-tender.\n Step 5\n -Add minced garlic and grated ginger to the vegetables. Stir-fry for an additional 1-2 minutes.\n Step 6\n -Return the cooked chicken to the wok and pour the teriyaki sauce over the ingredients. Toss everything together until well coated and heated through.\n\nTo Serve\n Step 7\n -Serve the Chicken Teriyaki Stir-Fry over cooked white rice. Garnish with sesame seeds and chopped green onions.",
    recipeImage: "stir_fry.jpg",
    totalTime: "30 mins",
    servings: "4",
    startColor: const Color(0xFFffcc80),
    endColor: const Color(0xFFef6c00),
    recipeMaker: 'Natasha Bull',
  ),

  Recipe(
    recipeName: 'Spaghetti Carbonara',
    description:
        'A classic Roman pasta dish featuring spaghetti, pancetta, eggs, Parmesan cheese, and black pepper for a simple yet indulgent meal.',
    ingredients:
        "Spaghetti\n 400 grams spaghetti\n1 tablespoon olive oil\n1 teaspoon salt\n\nCarbonara Sauce\n 150 grams pancetta or guanciale, diced\n3 large eggs\n1 cup grated Parmesan cheese\n1 cup Pecorino Romano cheese, grated\nSalt and black pepper to taste\n\nTo Serve\n Freshly chopped parsley\nExtra Parmesan cheese for garnish",
    steps:
        "Step 1\n -Bring a large pot of salted water to a boil. Cook the spaghetti according to the package instructions until al dente. Reserve about 1 cup of pasta cooking water. Drain the spaghetti and toss with olive oil to prevent sticking.\n\nCarbonara Sauce\n Step 2\n -While the pasta is cooking, heat a pan over medium heat. Add diced pancetta or guanciale and cook until crispy.\n Step 3\n -In a bowl, whisk together eggs, grated Parmesan cheese, and grated Pecorino Romano cheese until well combined.\n\nAssembling\n Step 4\n -Add the cooked spaghetti to the pan with crispy pancetta, tossing to coat the pasta with the rendered fat.\n Step 5\n -Remove the pan from heat and quickly pour the egg and cheese mixture over the spaghetti, tossing continuously to create a creamy sauce. If needed, add reserved pasta cooking water gradually to achieve the desired consistency.\n Step 6\n -Season with salt and black pepper to taste.\n\nTo Serve\n Step 7\n -Garnish with freshly chopped parsley and extra Parmesan cheese. Serve immediately.",
    recipeImage: "spghetti_carnobatta.jpg",
    totalTime: "20 mins",
    servings: "4",
    startColor: const Color(0xFFe57373),
    endColor: const Color(0xFFc62828),
    recipeMaker: 'Jean Piette',
  ),

  // Recipe(
  //   recipeName: 'Chorizo & mozzarella gnocchi bake',
  //   description:
  //       'Chorizo & Mozzarella Gnocchi Bake Recipe: Cook chorizo. Mix with cooked gnocchi and tomato sauce. Layer in a baking dish with mozzarella. Bake until cheese melts and bubbles. Serve hot and enjoy!',
  //   ingredients: [],
  //   steps: [],
  //   recipeImage: 'img-gnocchi.webp',
  //   recipeMaker: 'Marianne Turner',
  //   startColor: const Color(0xFF621e14),
  //   endColor: const Color(0xFFd13b10),
  // ),
  // Recipe(
  //   recipeName: 'Easy butter chicken',
  //   recipeContent:
  //       'Easy Butter Chicken Recipe: Sauté chicken, onion, and garlic. Add tomato sauce, butter, and spices. Simmer. Stir in cream. Serve with rice',
  //   recipeImage: 'img-butter-chicken.webp',
  //   recipeMaker: 'Jennifer Joyce',
  //   startColor: const Color(0xFFe18b41),
  //   endColor: const Color(0xFFc7c73d),
  // ),
  // Recipe(
  //   recipeName: 'Easy classic lasagne',
  //   recipeContent:
  //       'Easy Classic Lasagne Recipe: Layer lasagne sheets, beef sauce, and cheese. Repeat. Bake until bubbly and golden. Let cool, slice, and enjoy!',
  //   recipeImage: 'img-classic-lasange.webp',
  //   recipeMaker: 'Angela Boggiano',
  //   startColor: const Color(0xFFaf781d),
  //   endColor: const Color(0xFFd6a651),
  // ),
  // Recipe(
  //   recipeName: 'Easy teriyaki chicken',
  //   recipeContent:
  //       'Easy Teriyaki Chicken Recipe: Marinate chicken in teriyaki sauce. Sear in pan until cooked. Serve with steamed rice and veggies.',
  //   recipeImage: 'img-easy-teriyaki.webp',
  //   recipeMaker: 'Esther Clark',
  //   startColor: const Color(0xFF9a9d9a),
  //   endColor: const Color(0xFFb9b2b5),
  // ),
  // Recipe(
  //   recipeName: 'Easy chocolate fudge cake',
  //   recipeContent:
  //       'Easy chocolate fudge cake Recipe: Marinate chicken in teriyaki sauce. Sear in pan until cooked. Serve with steamed rice and veggies.',
  //   recipeImage: 'img-chocolate-fudge-cake.webp',
  //   recipeMaker: 'Member recipe by misskay',
  //   startColor: const Color(0xFF2e0f07),
  //   endColor: const Color(0xFF653424),
  // ),
  // Recipe(
  //   recipeName: 'One-pan spaghetti with nduja, fennel & olives',
  //   recipeContent:
  //       'One-pan spaghetti with nduja, fennel & olives Recipe: Marinate chicken in teriyaki sauce. Sear in pan until cooked. Serve with steamed rice and veggies.',
  //   recipeImage: 'img-one-pan-spaghetti.webp',
  //   recipeMaker: 'Cassie Best',
  //   startColor: const Color(0xFF8b1d07),
  //   endColor: const Color(0xFFee882d),
  // ),
  // Recipe(
  //   recipeName: 'Easy pancakes',
  //   recipeContent:
  //       'Easy pancakes Recipe: Marinate chicken in teriyaki sauce. Sear in pan until cooked. Serve with steamed rice and veggies.',
  //   recipeImage: 'img-easy-pancake.webp',
  //   recipeMaker: 'Cassie Best',
  //   startColor: const Color(0xFFa1783c),
  //   endColor: const Color(0xFFf3dc37),
  // ),
  // Recipe(
  //   recipeName: 'Easy chicken fajitas',
  //   recipeContent:
  //       'Easy chicken fajitas Recipe: Marinate chicken in teriyaki sauce. Sear in pan until cooked. Serve with steamed rice and veggies.',
  //   recipeImage: 'img-chicken-fajitas.webp',
  //   recipeMaker: 'Steven Morris',
  //   startColor: const Color(0xFF3e4824),
  //   endColor: const Color(0xFF5da6a6),
  // ),
  // Recipe(
  //   recipeName: 'Easy vegetable lasagne',
  //   recipeContent:
  //       'Easy vegetable lasagne Recipe: Marinate chicken in teriyaki sauce. Sear in pan until cooked. Serve with steamed rice and veggies.',
  //   recipeImage: 'img-easy-vegetable-lasagne.webp',
  //   recipeMaker: 'Emma Lewis',
  //   startColor: const Color(0xFF914322),
  //   endColor: const Color(0xFFbf802f),
  // ),
  // Recipe(
  //   recipeName: 'Thai fried prawn & pineapple rice',
  //   recipeContent:
  //       'Thai fried prawn & pineapple rice Recipe: Marinate chicken in teriyaki sauce. Sear in pan until cooked. Serve with steamed rice and veggies.',
  //   recipeImage: 'img-thai-fried-prawn.webp',
  //   recipeMaker: 'Good Food Team',
  //   startColor: const Color(0xFF5b8e38),
  //   endColor: const Color(0xFF94bf77),
  // ),
];
