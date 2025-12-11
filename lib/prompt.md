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
