# 🎮 A Vibrant and Colorful Gaming Experience

एक शानदार और रंगों से भरपूर गेमिंग अनुभव, जिसे वेब के लिए डिज़ाइन किया गया है। यह प्रोजेक्ट सादगी और विज़ुअल्स का एक बेहतरीन मिश्रण है।

## ✨ मुख्य विशेषताएँ (Features)
* **Vibrant Visuals:** आंखों को लुभाने वाले रंगों और एनिमेशन का उपयोग।
* **Responsive Design:** मोबाइल और डेस्कटॉप दोनों पर आसानी से चलता है।
* **Lightweight:** कोई भारी लाइब्रेरी नहीं, केवल शुद्ध कोड।
* **Interactive Gameplay:** आसान कंट्रोल्स और मजेदार यूजर इंटरफेस।

## 🛠️ तकनीक (Technologies Used)
* **HTML5:** स्ट्रक्चर और गेम कैनवास के लिए।
* **CSS3:** स्टाइलिंग और वाइब्रेंट कलर्स के लिए।
* **JavaScript:** गेम लॉजिक और इंटरएक्टिविटी के लिए।

## 🚀 कैसे चलाएं (How to Run)
1. इस रिपॉजिटरी को क्लोन करें:
   ```bash
   git clone [https://github.com/ravikumarjaviya-cyber/repository-name.git](https://github.com/ravikumarjaviya-cyber/repository-name.git)
<div id="shapes-container" style="display:flex; justify-content:center; gap:20px; margin-top:20px; height:100px;"></div>

<script>
    const grid = document.querySelector('.grid');
    const shapesContainer = document.getElementById('shapes-container');
    const scoreDisplay = document.getElementById('score');
    let score = 0;

    // 1. खेलने के लिए 3 नए ब्लॉक्स (Shapes) बनाना
    const shapeTemplates = [
        [[1, 1], [1, 1]], // Square
        [[1, 1, 1]],      // Line
        [[1, 1], [1, 0]]  // L-Shape
    ];

    function createNewShapes() {
        shapesContainer.innerHTML = '';
        for (let i = 0; i < 3; i++) {
            const shape = document.createElement('div');
            shape.style.display = 'grid';
            shape.style.gap = '2px';
            shape.draggable = true;
            
            const template = shapeTemplates[Math.floor(Math.random() * shapeTemplates.length)];
            shape.style.gridTemplateColumns = `repeat(${template[0].length}, 25px)`;

            template.forEach(row => {
                row.forEach(cell => {
                    const block = document.createElement('div');
                    block.style.width = '25px';
                    block.style.height = '25px';
                    block.style.backgroundColor = cell ? '#ff5722' : 'transparent';
                    block.style.borderRadius = '4px';
                    shape.appendChild(block);
                });
            });

            // ड्रैग शुरू करने का लॉजिक
            shape.addEventListener('dragstart', (e) => {
                window.draggedTemplate = template;
                window.draggedElement = shape;
            });

            shapesContainer.appendChild(shape);
        }
    }

    // 2. ग्रिड में ब्लॉक छोड़ने (Drop) का लॉजिक
    grid.addEventListener('dragover', (e) => e.preventDefault());

    grid.addEventListener('drop', (e) => {
        const cell = e.target;
        if (cell.classList.contains('cell')) {
            // यहाँ ब्लॉक को ग्रिड में सेट करने का कोड
            cell.style.backgroundColor = '#2196f3';
            score += 10;
            scoreDisplay.innerText = score;
            window.draggedElement.remove();
            
            if (shapesContainer.children.length === 0) {
                createNewShapes();
            }
        }
    });

    // गेम शुरू करें
    createNewShapes();
</script>
