# draughts
This project is a Draughts ♟️ (Checkers) game built with `Swift` and `SwiftUI`. It aims to deliver a playable checkers experience with a simple and intuitive design, complete with essential game features and user data tracking.

## Core Features and Implementation:
- **User Interface (UI)**: The entire application UI is constructed using SwiftUI, leveraging components like `VStack`, `HStack`, `Text`, `Image`, `Button`, `NavigationLink`, and `Form`.
- **Game Modes**: The app includes different game modes, accessible via navigation from the main `WelcomeView`.
- **Game Board**: A dedicated `BoardView` handles the display and interaction of the checkers board.
- **User Statistics**: The `StatsView` allows users to track their progress. It persists user data (such as username and games attempted) using UserDefaults, ensuring data is loaded upon view appearance and saved upon submission.
- **Navigation**: The `WelcomeView` serves as the primary entry point, utilizing NavigationStack and NavigationLink to facilitate seamless transitions to `GameModeView`, `StatsView`, and `BoardView`.
- **Modularity and Customization**: The codebase is organized into distinct views (`BoardView`, `GameModeView`, `StatsView`, `WelcomeView`) and models (`UserProfile`, `Utils`) for better maintainability. The `Utils` struct centralizes constants for colors (e.g., `colourCFGPink`, `colourDarkCell`, `colourLightCell`) and `board size (maxCells)`, allowing for easy visual customization.
- **Basic Game Logic**: The project incorporates fundamental game logic to ensure a functional and engaging checkers experience.

Sequence diagram showing the navigation flow from the `WelcomeView`:
<img width="1050" alt="WelcomeView" src="https://github.com/user-attachments/assets/7ed6718b-7165-43e9-a2f3-3857b59a89a2" />



TIPS


> **Plan ahead**: Don't just make moves without thinking. Try to anticipate your opponent's moves and plan your own accordingly.
> 
> **Look for opportunities to capture**: Be on the lookout for opportunities to capture your opponent's checkers. This will reduce their number of pieces and give you an advantage.
> 
> **Know your opponent's strengths and weaknesses**: Pay attention to your opponent's playing style and try to exploit their weaknesses.
 

## Screens:
![views1 2](https://github.com/Majo-es/draughts/assets/43044338/71ab2567-4803-462a-a99d-faecdea585eb)
![views3 4](https://github.com/Majo-es/draughts/assets/43044338/a9de82dd-f037-4350-b3fb-601f35e0b2bb)

## Prototype:
https://github.com/Majo-es/draughts/assets/43044338/d6f78957-73d7-4d15-9d13-bece6ce9e7ff

