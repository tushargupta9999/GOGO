const fs = require('fs');
let html = fs.readFileSync('C:\Users\ROG STRIX\Desktop\DPS AMROHA Website Project\main.html', 'utf8');

// Replace /_next/image proxy paths
html = html.replace(/\/_next\/image\?url=([^&]+)(?:&[^"']*)?/g, (match, p1) => {
    return decodeURIComponent(p1);
});

fs.writeFileSync('C:\Users\ROG STRIX\Desktop\DPS AMROHA Website Project\main.html', html);
