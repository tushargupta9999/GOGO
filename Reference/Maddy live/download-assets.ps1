# Download all assets for Maddy 2025 clone
$base = "https://maddys2025.ripplear.live"
$cdn = "https://cdn.deepsense.space/static"
$out = $PSScriptRoot

function Get-File {
    param($url, $localPath)
    $dir = Split-Path $localPath -Parent
    if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Path $dir -Force | Out-Null }
    try {
        Invoke-WebRequest -Uri $url -UseBasicParsing -OutFile $localPath -ErrorAction Stop
        Write-Host "OK: $localPath"
    } catch {
        Write-Host "FAIL: $url - $_"
    }
}

# _next/static/css
@(
    "d039a2d72a260987.css",
    "9ee25f56fbec86c5.css"
) | ForEach-Object {
    Get-File "$base/_next/static/css/$_" "$out/_next/static/css/$_"
}

# _next/static/chunks
@(
    "webpack-e02891a9538c1959.js",
    "fd9d1056-f9fc913f68f0b278.js",
    "7023-970e8ca5d8469fa6.js",
    "main-app-e0cdf371c7224527.js",
    "c15bf2b0-f4063180ec2a9095.js",
    "6648-353fd758fb36e410.js",
    "8995-d4a5bad60353799d.js",
    "619-e3a3415239c1aa2d.js",
    "6143-650112a0fecd2931.js",
    "app/page-b973a514c0bd2cce.js",
    "2007-b53de02a1c7db0c7.js",
    "1914-8be0770d1ea979e0.js",
    "315-68e56f9a5c4ce5bc.js",
    "3962-092daa37f3bd766c.js",
    "app/layout-c4dce95ea6b79b7c.js",
    "polyfills-78c92fac7aa8fdd8.js"
) | ForEach-Object {
    $sub = if ($_ -match "^app/") { "" } else { "" }
    $local = if ($_ -match "^app/") { "$out/_next/static/chunks/$_" } else { "$out/_next/static/chunks/$_" }
    Get-File "$base/_next/static/chunks/$_" $local
}

# _next/static/media - fonts and images from HTML
@(
    "38474cdf3d3c4b91-s.p.otf",
    "e4af272ccee01ff0-s.p.woff2",
    "text.be782ae2.svg",
    "new_bluelogo.2655b288.svg",
    "newEye.81f3ba1f.svg",
    "yellowDot.ae50c9c6.svg",
    "insideeye.dd15a715.png",
    "new_text.e5f5fcef.svg",
    "topHinge.58283ccc.png",
    "bottomHinge.eb6d1245.png",
    "add.7bde1822.svg",
    "group_eye.26c11690.svg",
    "deepsense-new-logo.915169d8.png",
    "facebook.25dd58a7.svg",
    "insta.7f4926bd.svg",
    "link.1ea33f4b.svg"
) | ForEach-Object {
    Get-File "$base/_next/static/media/$_" "$out/_next/static/media/$_"
}

# Unique highlight filenames from the HTML
$highlightFiles = @(
    "highlight1.7d7321b9.jpeg","highlight2.46d1d971.jpeg","highlight3.8de8235e.jpeg","highlight4.6a5c86c5.jpeg","highlight5.5758d5bc.jpeg","highlight6.0c33c3ee.jpeg","highlight7.b75664a6.jpeg","highlight8.b13e1536.jpeg","highlight9.612f7dfe.jpeg","highlight10.cd96e2f6.jpeg","highlight11.11e6835b.jpeg","highlight12.f581ad3c.jpeg","highlight13.b2dafb42.jpeg","highlight14.95d7f9eb.jpeg","highlight15.7c335041.jpeg","highlight16.37c2c26d.jpeg","highlight17.402e7d23.jpeg","highlight18.78d10586.jpeg","highlight19.a8d1a325.jpeg","highlight20.41cb1740.jpeg","highlight21.8a630a35.jpeg","highlight22.1266019c.jpeg","highlight23.ff073ec4.jpeg","highlight24.02a5086e.jpeg","highlight25.1dc6cac6.jpeg","highlight26.6ffedb20.jpeg","highlight27.c8d0edad.jpeg","highlight28.bfb183af.jpeg","highlight29.8fd54e20.jpeg","highlight30.4db2173d.jpeg"
)
foreach ($f in $highlightFiles) {
    Get-File "$base/_next/static/media/$f" "$out/_next/static/media/$f"
}

# assets (eye-icon.png)
if (-not (Test-Path "$out/assets")) { New-Item -ItemType Directory -Path "$out/assets" -Force | Out-Null }
Get-File "$base/_next/image?url=%2Fassets%2Feye-icon.png&w=750&q=75" "$out/assets/eye-icon.png"
# Try direct asset
Get-File "$base/assets/eye-icon.png" "$out/assets/eye-icon.png"

# CDN assets
$cdnFiles = @(
    "terms-button.png","jury-img1.png","jury-img2.png","jury-img3.png","jury-img06.png","jury-img5.png","jury-img4.png","jury-img007.png","jury-img8.png","support-img1.png","new_pencil.svg","herosection-halfeye.svg","support-img3.png","support-img6.png","support-img7.png","support-img8.png","support-img012.png","support-img13.png","support-img14.png","support-img15.png","support-img0016.png","support-img17.png","support-img0018.png","support-img19.png","support-img20.png","support-img021.png","support-img24.png","support-img23.png","support-img25.png","support-img27.png","support-img28.png","support-img29.png","support-img30.png","support-img31.png","support-img32.png","support-img33.png","support-img34.png","support-img35.png"
)
foreach ($f in $cdnFiles) {
    Get-File "$cdn/$f" "$out/cdn/$f"
}

Write-Host "Download complete."
