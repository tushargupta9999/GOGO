const fs = require('fs');
const cheerio = require('cheerio');

const filePath = 'C:/Users/ROG STRIX/Desktop/DPS AMROHA Website Project/main.html';
const html = fs.readFileSync(filePath, 'utf8');
const $ = cheerio.load(html);

// Find all images
img.each((i, el) => {
    const src = .attr('src');
    if (src && src.includes('/_next/image?url=')) {
        try {
            const urlMatch = src.match(/url=([^&]+)/);
            if (urlMatch && urlMatch[1]) {
                const decoded = decodeURIComponent(urlMatch[1]);
                // if it starts with /_next/static/media/, we already moved those to /assets/
                const finalSrc = decoded.replace(/^\/_next\/static\/media\//, 'assets/');
                .attr('src', finalSrc);
            }
        } catch(e){}
    }
    
    const srcset = .attr('srcset');
    if (srcset && srcset.includes('/_next/image?url=')) {
        // Just remove srcset for now and let it fall back to src to simplify
        .removeAttr('srcset');
    }
});

fs.writeFileSync(filePath, $.html());
console.log('Images fixed.');
