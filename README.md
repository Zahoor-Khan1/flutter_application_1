🍞 Sandwich Shop — Flutter App

A simple Flutter application that allows users to customise and order sandwiches.
The app includes features for selecting bread type, choosing sandwich size, adding notes, and adjusting quantity.
It also contains a full widget test suite to ensure the UI behaves correctly.

🚀 Features
🥪 Sandwich Customisation

Choose sandwich size (footlong, six-inch, etc.)

Select bread type:

White

Wheat

Wholemeal

Add optional notes (e.g., “Extra mayo”, “No pickles”)

➕➖ Quantity Controls

Increase or decrease sandwich quantity

Prevents quantity from going below 0

Prevents quantity from going above maximum allowed (e.g., max 5)

🧾 Order Summary

Displays quantity, bread type, sandwich type

Shows sandwich emoji representation

Displays order note clearly

🎨 Custom Widgets

StyledButton — reusable button with icon

OrderItemDisplay — shows the sandwich order details

🧪 Test Coverage

This project includes multiple widget tests covering:

App startup

Quantity increment/decrement

Bread type dropdown selection

Notes input

Display widgets

Styled button