# Requirements — Cart Modification Feature

## 1. Feature Summary

The app must allow users to modify the items in their cart.  
Users should be able to increase quantity, decrease quantity, or remove items entirely.

This feature improves usability by letting users adjust their order without returning to the order screen.

---

## 2. User Stories

### User Story 1 — Increase Quantity
“As a user, I want to increase the quantity of a sandwich in my cart so I can order more of the same item.”

### User Story 2 — Decrease Quantity
“As a user, I want to decrease the quantity of an item so I can reduce my order without deleting it manually.”

### User Story 3 — Auto-Remove Items
“As a user, when I reduce the quantity to zero, the item should be removed automatically.”

### User Story 4 — Delete Button
“As a user, I want a delete icon to remove an item immediately.”

---

## 3. Acceptance Criteria

### Increase Quantity
- A "+" icon must increase item.quantity.
- Total price must update instantly.

### Decrease Quantity
- A "–" icon decreases item.quantity.
- If quantity becomes 0 → item is removed.
- Total price updates.

### Delete Item
- A trash/delete icon appears beside each item.
- Pressing it immediately removes the item.

### UI Requirements
- Icons must be visible and aligned with each cart item.
- Total price at bottom updates correctly.
- Interaction must persist after navigating back to the order page.

### Technical Requirements
- Cart model must support:
  - increaseQuantity(item)
  - decreaseQuantity(item)
  - remove(item)
- CartScreen must call these methods.



# Profile Screen Feature Requirements

## 1. Feature Description and Purpose

The Profile Screen allows users of the Sandwich Shop app to enter and view basic personal information, such as their name and email address.  
This feature improves the user experience by providing a simple place to store personal details for display or future use (depending on app needs).  
No backend or persistent storage is required — only UI state handling.

---

## 2. User Stories

### 2.1. View and Enter Personal Details

- **As a user**, I want to open a profile screen so that I can view or edit my personal details.
- **As a user**, I want a field to enter my name.
- **As a user**, I want a field to enter my email.
- **As a user**, I want a Save button so I can confirm my changes.

### 2.2. Navigation and Feedback

- **As a user**, I want a back button so I can return to the previous screen.
- **As a user**, I want visual confirmation (such as a snackbar) after I press Save, so I know my information was accepted.

---

## 3. Acceptance Criteria

### 3.1. UI Elements

- [ ] A visible title reading **“Profile”**.
- [ ] A TextField for entering a name.
- [ ] A TextField for entering an email.
- [ ] A Save button that triggers feedback.
- [ ] A back navigation option (e.g., AppBar back button).

### 3.2. Behavior

- [ ] Typing into fields updates internal widget state using `setState`.
- [ ] Tapping Save shows a snackbar confirming the action.
- [ ] Email and name fields accept user input.
- [ ] No persistent storage is required — values do not need to be saved after app restart.

### 3.3. Technical Requirements

- [ ] Implemented as a `StatefulWidget`.
- [ ] Screen is reachable via navigation from OrderScreen (or Drawer).
- [ ] At least one widget test verifies:
  - The screen renders correctly.
  - The text fields accept input.

---

## 4. Subtasks

1. Create a new `profile_screen.dart` inside `lib/views/`.
2. Implement a `StatefulWidget` for the Profile screen UI.
3. Add TextFields for name and email with state management.
4. Add a Save button that shows a confirmation snackbar.
5. Add navigation from the main screen (OrderScreen) to ProfileScreen.
6. Write a widget test ensuring the screen loads and text input works.
