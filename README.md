# Advanced Calculator

**A professional mobile calculator application with advanced features built with Flutter.**

---

## **Project Description**

Advanced Calculator is a full-featured calculator app that supports:

- **Three modes:** Basic, Scientific, Programmer
- **Scientific functions:** Trigonometric, Logarithmic, Power operations, Factorial, Constants (π, e)
- **Memory functions:** M+, M-, MR, MC
- **Expression parser:** Supports operator precedence (PEMDAS), parentheses, implicit multiplication
- **History:** Stores last 25/50/100 calculations with persistence
- **Theme system:** Light, Dark, System theme with smooth transitions
- **Settings:** Decimal precision, angle mode (Degrees/Radians), haptic feedback, sound effects
- **Gesture controls:** Swipe, long press, pinch to zoom
- **Animations:** Button press, mode transitions, error shake, result fade-in
- **Unit and integration tests:** Ensures >80% test coverage
- **Optimized performance:** Handles complex calculations efficiently

This project is implemented following clean architecture and advanced state management using **Provider**.

---

## **Screenshots / GIFs**

| Basic Mode | Scientific Mode | Programmer Mode |
|------------|----------------|----------------|
| ![Basic](screenshots/basic_mode.png) | ![Scientific](screenshots/scientific_mode.png) | ![Programmer](screenshots/programmer_mode.png) |

*Replace screenshots with your actual images or GIFs.*

---

## **Features**

### **Calculator Modes**
- **Basic:** Standard arithmetic operations
- **Scientific:** sin, cos, tan, ln, log, powers, roots, factorial
- **Programmer:** Binary, Octal, Decimal, Hex conversions; bitwise operations; bit shifting

### **Memory Functions**
- **M+:** Add current value to memory
- **M-:** Subtract current value from memory
- **MR:** Recall memory
- **MC:** Clear memory

### **History**
- Stores last calculations
- Tap to reuse
- Swipe up to open
- Clear history with long press

### **Settings**
- Theme selection (Light, Dark, System)
- Decimal precision (2–10)
- Angle mode (Degrees/Radians)
- Haptic feedback On/Off
- Sound effects On/Off
- History size (25/50/100)
- Clear all history with confirmation

### **Gestures & Animations**
- Swipe right to delete last character
- Pinch to change font size
- Button press scale effect
- Result fade-in
- Error shake animation

---

## **Project Architecture**

