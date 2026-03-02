# Google Antigravity – Installed Extensions Guide

These extensions are now installed in **Google Antigravity IDE** so you can use it as a web and general development powerhouse.

---

## How they were installed

Using the Antigravity CLI (Open VSX registry):

```
"C:\Users\ROG STRIX\AppData\Local\Programs\Antigravity\bin\antigravity.cmd" --install-extension publisher.extension-name
```

To install more later: open **Terminal** in Antigravity (or PowerShell), run the same command with the extension ID from [Open VSX](https://open-vsx.org/) or [VS Code Marketplace](https://marketplace.visualstudio.com/).

---

## Installed extensions (by category)

### Core web dev
| Extension | Purpose |
|-----------|--------|
| **Live Server** | Right‑click HTML → "Open with Live Server" for local URL + live reload. |
| **Prettier** | Format HTML, CSS, JS, JSON (set as default formatter in settings). |
| **ESLint** | Lint JavaScript/TypeScript. |
| **Tailwind CSS IntelliSense** | Autocomplete and hover for Tailwind classes. |

### HTML & CSS
| Extension | Purpose |
|-----------|--------|
| **HTML CSS Support** | CSS class/id completion and go‑to‑definition from HTML. |
| **HTML CSS Class Completion** | Suggests CSS class names from your styles in HTML. |
| **Auto Close Tag** | Auto‑close HTML tags. |
| **Auto Rename Tag** | Rename matching open/close tag together. |
| **CSS Peek** | Jump to CSS from class/id in HTML (e.g. Ctrl+Click). |
| **HTML Snippets** | HTML block snippets. |
| **JavaScript (ES6) Snippets** | JS snippets (`cl`, `fn`, etc.). |
| **Highlight Matching Tag** | Highlight matching HTML/JSX tag. |
| **SCSS IntelliSense** | SCSS syntax and IntelliSense. |

### Styling & assets
| Extension | Purpose |
|-----------|--------|
| **Color Highlight** | Color swatch next to hex/rgb in code. |
| **Image preview (Gutter Preview)** | Preview images in gutter/hover. |
| **SVG** | Preview and edit SVG files. |

### Productivity & quality
| Extension | Purpose |
|-----------|--------|
| **GitLens** | Git blame, history, and info in editor and sidebar. |
| **Error Lens** | Inline errors and warnings. |
| **Path Intellisense** | Path autocomplete in `src`, `href`, `import`. |
| **TODO Highlight** | Highlight TODO/FIXME in code. |
| **TODO Tree** | Sidebar list of all TODOs. |
| **Bookmarks** | Bookmark lines (e.g. Ctrl+Alt+K), jump between them. |
| **Project Manager** | Save and switch project folders. |
| **Peacock** | Color‑code workspaces (title bar, etc.). |
| **Code Spell Checker** | Spell‑check in code and comments. |
| **Code Runner** | Run code (JS, Python, etc.) with button/shortcut. |
| **Better Comments** | Color‑coded comments (TODO, FIXME, !, ?). |
| **Indent Rainbow** | Color indentation levels. |

### API & data
| Extension | Purpose |
|-----------|--------|
| **Thunder Client** | REST API client inside the IDE. |
| **REST Client** | Send HTTP requests from `.http` files. |
| **DotENV** | Syntax highlight for `.env` files. |

### React & frontend
| Extension | Purpose |
|-----------|--------|
| **ES7+ React/Redux/React-Native snippets** | Snippets like `rfc`, `use`, `clg`. |
| **Import Cost** | Show bundle size next to imports. |
| **npm IntelliSense** | Autocomplete npm package names. |

### UI & docs
| Extension | Purpose |
|-----------|--------|
| **Material Icon Theme** | File/folder icons. Enable: File → Preferences → File Icon Theme. |
| **Markdown All in One** | Markdown shortcuts, TOC, preview. |

---

## Optional: Antigravity browser extension

For agent‑driven web testing and browser automation:

1. In Antigravity, open **Playground** and start a conversation.
2. When prompted, click **Setup** and install the **Chrome extension** from the store.
3. Confirm the status bar shows a green “connected” indicator.

---

## Optional: Use VS Code Marketplace in Antigravity

Antigravity uses **Open VSX** by default. To also use extensions from the **VS Code Marketplace**:

1. **Antigravity** → **Settings** (or **File** → **Preferences** → **Settings**).
2. Search for **marketplace** or open **Antigravity Settings** → **Editor**.
3. Set:
   - **Marketplace Item URL:** `https://marketplace.visualstudio.com/items`
   - **Marketplace Gallery URL:** `https://marketplace.visualstudio.com/_apis/public/gallery`
4. Restart Antigravity, then search and install from the Extensions view as in VS Code.

---

## Quick tips

- **Live Server:** Right‑click `index.html` → **Open with Live Server**.
- **Material Icons:** **Ctrl+Shift+P** → “File Icon Theme” → **Material Icon Theme**.
- **Thunder Client:** Open the Thunder Client icon in the sidebar to send API requests.
- **Bookmarks:** **Ctrl+Alt+K** to toggle bookmark, **Ctrl+Alt+J** / **Ctrl+Alt+L** to move between bookmarks.
- **Project Manager:** **Ctrl+Alt+P** → “Project Manager: Open” to switch projects.

Restart Antigravity once so all extensions load correctly.
