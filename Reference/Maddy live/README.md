# Maddy 2025 – Local Clone

This is a local clone of **https://maddys2025.ripplear.live/** (Advertising Club Madras – Maddys 2025), including:

- **Layout & styling** – All CSS and structure
- **Animations** – GSAP, ScrollTrigger, Lenis (smooth scroll), and other dynamic behavior from the original Next.js app
- **Assets** – Fonts, images, SVGs (from `_next/static/` and CDN)

## How to view (recommended)

The site uses JavaScript modules and expects to be served over HTTP. For correct behavior (animations, scroll, etc.):

1. **Option A – Node.js (npx serve)**  
   In this folder run:
   ```bash
   npx serve -l 3000
   ```
   Then open: **http://localhost:3000**

2. **Option B – Python**  
   In this folder run:
   ```bash
   python -m http.server 3000
   ```
   Then open: **http://localhost:3000**

3. **Option C – Open `index.html` in browser**  
   Double‑click `index.html`.  
   Layout and images should work; some scripts may be limited due to `file://` (e.g. module/CORS). If something doesn’t work, use Option A or B.

## Folder structure

- `index.html` – Main page
- `_next/static/css/` – Styles
- `_next/static/chunks/` – JavaScript (Next.js runtime, GSAP, ScrollTrigger, app logic)
- `_next/static/media/` – Fonts, SVGs, highlight images
- `cdn/` – CDN assets (jury/support images, pencil, etc.)
- `assets/` – e.g. eye-icon

## Using this with Google Antigravity

To work on this clone inside **Google Antigravity**:

1. **Open this folder in Antigravity**  
   - In Antigravity: **File → Open Folder** (or **Open Workspace**).  
   - Go to: `...\DPS AMROHA Website Project\Reference\Maddy live`  
   - Select the **Maddy live** folder and open it.  
   Antigravity will use this as the project root; agents can edit `index.html`, CSS, and assets here.

2. **Or open the parent project**  
   - Open **`DPS AMROHA Website Project`** as the folder in Antigravity.  
   - This clone lives at `Reference\Maddy live` inside that project.  
   Agents can then reference and edit files under `Reference\Maddy live` as part of the larger project.

3. **Run the site from Antigravity**  
   - Use the integrated terminal and run from the **Maddy live** folder:  
     `npx serve -l 3000`  
   - Open **http://localhost:3000** in a browser to preview.

---

## Original site

- **URL:** https://maddys2025.ripplear.live/
- **Title:** Advertising Club Madras – Maddys 2025
