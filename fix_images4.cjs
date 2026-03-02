const fs = require('fs');
const filePath = 'C:/Users/ROG STRIX/Desktop/DPS AMROHA Website Project/main.html';
let html = fs.readFileSync(filePath, 'utf8');

// The cheerio script skipped these possibly because they have multiple query params or different encodings, or were in srcset instead. Let's do a hard replace on these known ones.

html = html.replace(/_next\/image\?url=%2F_next%2Fstatic%2Fmedia%2Finsideeye\.dd15a715\.png[^"'\s]*/g, 'assets/insideeye.dd15a715.png');
html = html.replace(/_next\/image\?url=%2F_next%2Fstatic%2Fmedia%2FtopHinge\.58283ccc\.png[^"'\s]*/g, 'assets/topHinge.58283ccc.png');
html = html.replace(/_next\/image\?url=%2F_next%2Fstatic%2Fmedia%2FbottomHinge\.eb6d1245\.png[^"'\s]*/g, 'assets/bottomHinge.eb6d1245.png');

// And remove any remaining _next/image srcset completely to force it to use src
html = html.replace(/srcSet="_next\/image[^"]*"/g, '');

fs.writeFileSync(filePath, html);
console.log('Targeted hard-replace executed.');
