# Trial and Testing Log

- 1: Loaded index.html in the browser to verify that the hero section and navigation display without layout breaking on first paint. Result: layout works and buttons show outline/rounded/solid styles.
- 2: Resized the viewport to approximately 360px wide to confirm the gallery stacks in a single column and hero switches to column flow. Result: sections stack vertically with readable spacing.
- 3: Resized to ~768px and ~1024px to check responsive breakpoints. Result: skills and gallery display three columns, hero splits content and plan card side by side.
- 4: Scrolled horizontally through the wins timeline to ensure overflow-x is active and scroll snapping keeps cards centered. Result: track scrolls smoothly with visible scrollbar.
- 5: Tested the contact form fields for focus styling and required attribute prompts. Result: focus outline appears and browser blocks submission if required fields are empty.