import 'package:recipes/data/recipe_step.dart';

class RecipeData {
  final String title;
  final String? description;
  final String? image;
  final List<String> ingredients;
  final List<RecipeStepData> steps;

  const RecipeData({
    required this.title,
    this.description,
    this.image,
    required this.ingredients,
    required this.steps,
  });
}

const recipesData = [
  RecipeData(
    title: 'Chicken Roast',
    description:
        'Chicken roast is a popular dish made by marinating chicken in a mixture of spices and then roasting it until tender.',
    image: 'assets/images/chicken_roast.jpg',
    ingredients: [
      '1 kg chicken',
      '1 cup yogurt',
      '1 tbsp ginger garlic paste',
      '1 tbsp red chili powder',
      '1 tbsp coriander powder',
      '1 tbsp cumin powder',
      '1 tbsp garam masala',
      '1 tbsp lemon juice',
      '1/2 cup oil',
      'Salt to taste',
    ],
    steps: [
      RecipeStepData(
        title: 'Marinate the chicken',
        description:
            'In a large bowl, mix together the yogurt, ginger garlic paste, red chili powder, coriander powder, cumin powder, garam masala, lemon juice, and salt.',
        duration: Duration(hours: 2),
      ),
      RecipeStepData(
        title: 'Roast the chicken',
        description:
            'Preheat the oven to 200°C. Place the marinated chicken on a baking tray and drizzle with oil. Roast for 30-40 minutes, or until the chicken is cooked through and the skin is crispy.',
        duration: Duration(minutes: 40),
      ),
    ],
  ),
  RecipeData(
    title: 'Chocolate Cake',
    description:
        'Chocolate cake is a classic dessert made with cocoa powder, flour, sugar, and eggs. It is often frosted with chocolate buttercream or ganache.',
    image: 'assets/images/chocolate_cake.jpg',
    ingredients: [
      '1 3/4 cups all-purpose flour',
      '3/4 cup unsweetened cocoa powder',
      '1 1/2 tsp baking powder',
      '1 1/2 tsp baking soda',
      '1/2 tsp salt',
      '2 cups sugar',
      '2 eggs',
      '1 cup milk',
      '1/2 cup vegetable oil',
      '2 tsp vanilla extract',
      '1 cup boiling water',
    ],
    steps: [
      RecipeStepData(
        title: 'Prepare the batter',
        description:
            'In a large bowl, sift together the flour, cocoa powder, baking powder, baking soda, and salt. Add the sugar, eggs, milk, oil, and vanilla extract. Beat on medium speed for 2 minutes. Stir in the boiling water. The batter will be thin.',
        duration: Duration(minutes: 10),
      ),
      RecipeStepData(
        title: 'Bake the cake',
        description:
            'Preheat the oven to 180°C. Grease and flour two 9-inch round baking pans. Pour the batter into the prepared pans. Bake for 30-35 minutes, or until a toothpick inserted into the center comes out clean. Cool in the pans for 10 minutes, then remove to a wire rack to cool completely.',
        duration: Duration(minutes: 35),
      ),
      RecipeStepData(
        title: 'Bake the cake',
        description:
            'Preheat the oven to 180°C. Grease and flour two 9-inch round baking pans. Pour the batter into the prepared pans. Bake for 30-35 minutes, or until a toothpick inserted into the center comes out clean. Cool in the pans for 10 minutes, then remove to a wire rack to cool completely.',
        duration: Duration(minutes: 35),
      ),
      RecipeStepData(
        title: 'Bake the cake',
        description:
            'Preheat the oven to 180°C. Grease and flour two 9-inch round baking pans. Pour the batter into the prepared pans. Bake for 30-35 minutes, or until a toothpick inserted into the center comes out clean. Cool in the pans for 10 minutes, then remove to a wire rack to cool completely.',
        duration: Duration(minutes: 35),
      ),
      RecipeStepData(
        title: 'Bake the cake',
        description:
            'Preheat the oven to 180°C. Grease and flour two 9-inch round baking pans. Pour the batter into the prepared pans. Bake for 30-35 minutes, or until a toothpick inserted into the center comes out clean. Cool in the pans for 10 minutes, then remove to a wire rack to cool completely.',
        duration: Duration(minutes: 35),
      ),
      RecipeStepData(
        title: 'Bake the cake',
        description:
            'Preheat the oven to 180°C. Grease and flour two 9-inch round baking pans. Pour the batter into the prepared pans. Bake for 30-35 minutes, or until a toothpick inserted into the center comes out clean. Cool in the pans for 10 minutes, then remove to a wire rack to cool completely.',
        duration: Duration(minutes: 35),
      ),
    ],
  ),
];
