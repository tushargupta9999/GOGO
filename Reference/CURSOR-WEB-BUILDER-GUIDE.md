# Cursor as a Web Builder Powerhouse – Quick Reference

Your Cursor IDE is now configured with extensions and settings for fast, professional website building. Use this as a quick reference.

---

## Installed Extensions

### Core (already or newly installed)
| Extension | What it does |
|-----------|----------------|
| **Live Server** | Right-click HTML → "Open with Live Server" for instant local server + live reload on save. |
| **Prettier** | Formats HTML, CSS, JS, JSON on save. Set as default formatter. |
| **ESLint** | Lints JavaScript/TypeScript and highlights errors. |
| **Tailwind CSS IntelliSense** | Autocomplete, hover preview, and linting for Tailwind classes (when Tailwind is in the project). |

### HTML & CSS
| Extension | What it does |
|-----------|----------------|
| **HTML CSS Support** | CSS class/id completion and go-to-definition from HTML. |
| **HTML CSS Class Completion** | Suggests CSS class names from your stylesheets in HTML. |
| **Auto Close Tag** | Automatically closes HTML tags. |
| **Auto Rename Tag** | Renaming a tag renames the matching open/close tag. |
| **CSS Peek** | Jump to CSS definition from class/id in HTML (e.g. Ctrl+Click). |
| **HTML Snippets** | Type abbreviations and get full HTML blocks. |
| **JavaScript (ES6) Snippets** | Type `cl`, `fn`, etc. for quick JS snippets. |

### Styling & Assets
| Extension | What it does |
|-----------|----------------|
| **SCSS IntelliSense** | Syntax and IntelliSense for SCSS. |
| **Color Highlight** | Shows a color swatch next to hex/rgb in code. |
| **Image preview** (Gutter Preview) | Hover or gutter icon to preview images. |
| **SVG** | Preview and work with SVG files. |

### Productivity & Quality
| Extension | What it does |
|-----------|----------------|
| **GitLens** | Blame, history, and Git info inline and in the sidebar. |
| **Error Lens** | Shows errors/warnings inline in the editor. |
| **Path Intellisense** | Autocomplete for file paths in `src`, `href`, `import`, etc. |
| **TODO Highlight** | Highlights `TODO`, `FIXME` in code. |
| **TODO Tree** | Lists all TODO/FIXME in a sidebar tree. |
| **Bookmarks** | Bookmark lines (Ctrl+Alt+K) and jump between them. |
| **Project Manager** | Save and switch between project folders quickly. |
| **Peacock** | Color-code different workspaces (title bar, status bar). |

### API & Data
| Extension | What it does |
|-----------|----------------|
| **Thunder Client** | REST API client inside Cursor (like Postman). |
| **REST Client** | Send HTTP requests from `.http` files. |
| **DotENV** | Syntax highlight for `.env` files. |

### React & Frontend
| Extension | What it does |
|-----------|----------------|
| **ES7+ React/Redux/React-Native snippets** | Type `rfc`, `use`, `clg` etc. for React/JS snippets. |
| **Import Cost** | Shows bundle size next to `import` statements. |
| **npm IntelliSense** | Autocomplete for npm package names in `import`/`require`. |
| **Iconify** | Preview and search icon sets (Iconify, Font Awesome, etc.). |

### UI & Readability
| Extension | What it does |
|-----------|----------------|
| **Material Icon Theme** | File/folder icons (enable: File → Preferences → File Icon Theme). |
| **Better Comments** | Color-codes comments (TODO, FIXME, !, ?, *). |
| **Indent Rainbow** | Colors indentation levels for easier reading. |
| **Highlight Matching Tag** | Highlights matching HTML/JSX tags. |
| **Code Spell Checker** | Spell-check in code and comments. |
| **Code Runner** | Run code (JS, Python, etc.) with a button or shortcut. |

### Docs & Notes
| Extension | What it does |
|-----------|----------------|
| **Markdown All in One** | Shortcuts, TOC, preview, and shortcuts for Markdown. |

---

## Settings Added for Web Building

- **Default formatter**: Prettier for HTML, CSS, JavaScript.
- **Format on save**: Already on; Prettier runs on save for supported files.
- **Emmet**: Tab expansion for HTML/CSS; works in JSX/JS for HTML snippets.
- **Live Server**: Default port 5500 (change in settings if needed).
- **Tailwind**: IntelliSense enabled for HTML and JavaScript.
- **HTML**: Auto-closing tags and auto-create quotes.
- **Path Intellisense**: Suggests file extensions on import.

---

## Quick Workflow

1. **Start a site**  
   Create or open a folder with `index.html` (and optional CSS/JS).

2. **Live preview**  
   Right-click `index.html` → **Open with Live Server**.  
   Browser opens at `http://127.0.0.1:5500` and reloads on save.

3. **Write HTML**  
   Use Emmet (e.g. `div.container>ul>li*5`) then **Tab** to expand.  
   Use **Auto Close Tag** and **Auto Rename Tag** for fast markup.

4. **Write CSS/SCSS**  
   Use **CSS Peek** from HTML (Ctrl+Click on class) to jump to styles.  
   Use **Color Highlight** and **Tailwind CSS IntelliSense** if using Tailwind.

5. **Format & lint**  
   Save to format with Prettier. Fix issues highlighted by **Error Lens** and **ESLint**.

6. **Images & SVG**  
   Use **Gutter Preview** for image previews and **SVG** extension for SVG files.

---

## Useful Shortcuts (default)

- **Ctrl+Shift+P** – Command Palette (search any command).
- **Ctrl+`** – Toggle terminal.
- **Ctrl+Shift+X** – Extensions panel (install more if needed).
- **Right-click HTML → Open with Live Server** – Start live preview.

---

## Adding More Extensions

1. **Ctrl+Shift+X** to open Extensions.
2. Search (e.g. "React", "Vue", "Bootstrap", "REST client").
3. Install and reload if asked.

Or from terminal (Cursor in PATH):

```bash
cursor --install-extension publisher.extension-name
```

Example: `cursor --install-extension dsznajder.es7-react-js-snippets`

---

You’re set up to build and edit websites quickly in Cursor. For the Maddy 2025 clone, open the **Maddy live** folder and use Live Server or `npx serve` for full behavior.
