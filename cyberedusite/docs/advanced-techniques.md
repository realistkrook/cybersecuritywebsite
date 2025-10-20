# Advanced Techniques Checklist

- [x] CSS hover effects (transitions, transform, hover states)
- [x] CSS variables (custom properties) for theme and colors
- [x] Responsive typography using clamp()
- [x] Flexbox layout for one-dimensional layouts
- [x] CSS Grid for two-dimensional responsive layouts
- [x] Backdrop-filter translucency (frosted glass effect)
- [x] Hero background optimization (webp/avif, responsive images)
- [x] Preload critical images and preconnect to font providers
- [ ] Lazy-load non-critical images with loading="lazy"
- [x] ARIA roles and accessibility improvements
- [ ] Content Security Policy (CSP) meta/header
- [ ] Service Worker for offline caching (PWA)
- [ ] Performance tuning: critical CSS, minification
- [x] Scroll-snap and custom scrollbar styling
- [ ] Structured data (JSON-LD) for better SEO
- [ ] Automated accessibility and performance testing (Lighthouse/aXe)
- [ ] Security headers (HSTS, X-Frame-Options, Referrer-Policy)
- [x] Image optimization pipeline (local ImageMagick script)
- [x] Font loading strategies (preload, preconnect, font-display)
- [x] Reduce gradients for cleaner design

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