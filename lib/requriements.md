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
