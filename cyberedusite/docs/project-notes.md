# CyberSecure Club Website Notes

## Planning and Project Management
- Created the cyber-club-site folder with separate files for markup (index.html), styles (styles.css), and documentation (docs/).
- Used a four-step plan (concept, implementation, testing, documentation) to organise tasks and track progress.
- Saved the testing outcomes in docs/testing-log.md to act as versioned evidence of trialling.
- Followed a logical naming system for sections and classes to make future updates easier.

## Decomposition of Components
- **Navigation bar:** flex container linking to each page section.
- **Hero block:** two-column layout with key message and weekly plan card.
- **About section:** paired text and testimonial card to add context.
- **Skills grid:** three feature cards that reuse shared styles.
- **Gallery:** responsive grid demonstrating media query work.
- **Timeline:** horizontally scrolling achievements track.
- **Contact form:** captures name, email, and goals with browser validation.

## Trialling and Iteration
- Adjusted hero layout to stack on small screens and align side-by-side at wider breakpoints.
- Tuned button classes (outline, rounded, solid) to mirror the Level 200 button styling exercises.
- Applied scroll snapping to the wins timeline after confirming horizontal overflow worked smoothly.

## Testing Summary
See docs/testing-log.md for detailed steps. Key checks covered:
- Responsive breakpoints (stacked vs three-column layouts).
- Horizontal scrolling behaviour on the timeline track.
- Form focus and required-field behaviour for usability.

## Relevant Implications
- **Accessibility:** High-contrast palette, focus outlines, descriptive alt text, and semantic headings support screen-reader users.
- **Privacy:** Contact form only requests essential info (name, email, interest) and signals that the data is for club communication.
- **Cultural & Social:** Celebrates collaborative learning and includes language (whanau) relevant to local community.
- **Ethical & Legal:** No copyrighted media used; placeholder images respect intellectual property constraints.
- **Sustainability & Future Proofing:** Modular sections make it easy to swap content without rebuilding the site; responsive design extends the site's lifespan across devices.
- **End-user Considerations:** Navigation links align with student goals (learning, proof of success, getting started) and the simple layout suits a high school audience.