# Advanced Techniques Checklist

This checklist lists advanced web development and frontend techniques used in this website or recommended to add. Mark items you have implemented.

- [x] CSS hover effects (transitions, transform, hover states)
- [ ] CSS variables (custom properties) for theme and colors
- [ ] Responsive typography using clamp()
- [ ] Flexbox layout for one-dimensional layouts
- [ ] CSS Grid for two-dimensional responsive layouts
- [ ] Backdrop-filter translucency (frosted glass effect)
- [ ] Hero background optimization (webp/avif, responsive images)
- [ ] Preload critical images and preconnect to font providers
- [ ] Lazy-load non-critical images with loading="lazy"
- [ ] ARIA roles and accessibility improvements
- [ ] Content Security Policy (CSP) meta/header
- [ ] Service Worker for offline caching (PWA)
- [ ] Performance tuning: critical CSS, minification
- [ ] Scroll-snap and custom scrollbar styling
- [ ] Structured data (JSON-LD) for better SEO
- [ ] Automated accessibility and performance testing (Lighthouse/aXe)
- [ ] Security headers (HSTS, X-Frame-Options, Referrer-Policy)
- [ ] Image optimization pipeline (sharp, Squoosh, or build tool)
- [ ] Font loading strategies (preload, preconnect, font-display)
- [ ] Reduce gradients for cleaner design

> Notes: You already use CSS hover effects; keep them consistent and accessible (don't rely solely on hover for essential interactions).

## Generating responsive hero images (local)

A PowerShell script is included at `scripts/generate-responsive-images.ps1` that uses ImageMagick (`magick`) to generate three WebP variants from the original `media/cyber_security_1.webp`:

- `media/cyber_security_1-small.webp` (640px wide)
- `media/cyber_security_1-medium.webp` (1024px wide)
- `media/cyber_security_1-large.webp` (1600px wide)

Usage (PowerShell):

```powershell
cd cyber-club-site
.\scripts\generate-responsive-images.ps1 -Source "media\cyber_security_1.webp"
```

Requirements:
- ImageMagick installed and available as `magick` in PATH

After generating the images the CSS will automatically use the appropriate image at different breakpoints. We also added preload links in the HTML head to prioritize the right image for the device.