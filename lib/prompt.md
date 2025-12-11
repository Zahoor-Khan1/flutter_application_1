# Prompt for AI — Cart Modification Feature

I have a sandwich shop app written in Flutter.

I need your help to design the requirements for a new feature: allowing users to modify items in their cart.

## Current App Structure

### Models
- **Sandwich** (type, isFootlong, breadType, image)
- **Cart**
  - add(sandwich, quantity)
  - items: List<CartItem>
  - totalPrice getter
- **CartItem**
  - sandwich
  - quantity

### Repository
- **PricingRepository**
  - sixInchPrice
  - footlongPrice
  - calculateTotal(quantity, isFootlong)

### Views Implemented
- CartScreen (shows list of items + total)

## Feature to Add: Modify Cart Items

Users should be able to:
1. Increase quantity of an item
2. Decrease quantity of an item
3. Remove the item if quantity drops below 1
4. Remove the item via a delete/trash icon

## Tasks for AI

1. Write a clear requirements document for this feature.
2. Include:
   - A description of the feature
   - User stories
   - Acceptance criteria
3. Format the output as Markdown.

After this prompt is finalised, I will ask AI to generate the requirements file.


# Prompt for AI — New Profile Screen Feature

I am building a Flutter sandwich shop application. I need to add a new screen where the user can view or enter personal profile details.

## App Context
The app currently includes:
- OrderScreen
- CartScreen
- CheckoutScreen
- Cart model
- Sandwich model

## Profile Screen Requirements
1. A title at the top saying "Profile".
2. Two TextFields:
   - One for the user name.
   - One for the user email.
3. A Save button (UI only; no backend required).
4. Data typed into the fields should update internal state.
5. A back button should navigate back to the previous screen.

## Tasks for AI
Please generate:
1. A requirements document for this feature.
2. User stories and acceptance criteria.
3. Flutter UI code for the ProfileScreen using a StatefulWidget.
4. One widget test verifying:
   - The screen loads correctly.
   - The text fields can accept input.

The output will be saved as requirements.md.
