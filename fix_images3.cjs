const fs = require('fs');
const cheerio = require('cheerio');
const filePath = 'C:/Users/ROG STRIX/Desktop/DPS AMROHA Website Project/main.html';
let html = fs.readFileSync(filePath, 'utf8');
const $ = cheerio.load(html);

$('img').each((i, el) => {
    let src = $(el).attr('src');
    if (src && src.includes('/_next/image?url=')) {
        let match = src.match(/url=([^&]+)/);
        if (match && match[1]) {
            let decoded = decodeURIComponent(match[1]);
            decoded = decoded.replace(/^\/_next\/static\/media\//, 'assets/');
            decoded = decoded.replace(/^\/cdn\//, 'cdn/');
            $(el).attr('src', decoded);
        }
    }
    let srcset = $(el).attr('srcset');
    if (srcset && srcset.includes('/_next/image?url=')) {
        $(el).removeAttr('srcset');
    }
});

fs.writeFileSync(filePath, $.html());
console.log('Fixed Next.js Image tags.');
