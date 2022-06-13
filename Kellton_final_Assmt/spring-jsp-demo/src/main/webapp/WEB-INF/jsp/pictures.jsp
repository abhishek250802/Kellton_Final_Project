<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Photo Gallery</title>
    <script>
    var gallery = document.querySelector('#gallery');
    var getVal = function (elem, style) { return parseInt(window.getComputedStyle(elem).getPropertyValue(style)); };
    var getHeight = function (item) { return item.querySelector('.content').getBoundingClientRect().height; };
    var resizeAll = function () {
        var altura = getVal(gallery, 'grid-auto-rows');
        var gap = getVal(gallery, 'grid-row-gap');
        gallery.querySelectorAll('.gallery-item').forEach(function (item) {
            var el = item;
            el.style.gridRowEnd = "span " + Math.ceil((getHeight(item) + gap) / (altura + gap));
        });
    };
    gallery.querySelectorAll('img').forEach(function (item) {
        item.classList.add('byebye');
        if (item.complete) {
            console.log(item.src);
        }
        else {
            item.addEventListener('load', function () {
                var altura = getVal(gallery, 'grid-auto-rows');
                var gap = getVal(gallery, 'grid-row-gap');
                var gitem = item.parentElement.parentElement;
                gitem.style.gridRowEnd = "span " + Math.ceil((getHeight(gitem) + gap) / (altura + gap));
                item.classList.remove('byebye');
            });
        }
    });
    window.addEventListener('resize', resizeAll);
    gallery.querySelectorAll('.gallery-item').forEach(function (item) {
        item.addEventListener('click', function () {        
            item.classList.toggle('full');        
        });
    });
    </script>
    <style>
    body {
  background-color: #eee;
}
.hello {
  opacity: 1 !important;
}
.full {
  position: fixed;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  z-index: 1;
}
.full .content {
  background-color: rgba(0,0,0,0.75) !important;
  height: 100%;
  width: 100%;
  display: grid;
}
.full .content img {
  left: 50%;
  transform: translate3d(0, 0, 0);
  animation: zoomin 1s ease;
  max-width: 100%;
  max-height: 100%;
  margin: auto;
}
.byebye {
  opacity: 0;
}
.byebye:hover {
  transform: scale(0.2) !important;
}
.gallery {
  display: grid;
  grid-column-gap: 8px;
  grid-row-gap: 8px;
  grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
  grid-auto-rows: 8px;
}
.gallery img {
  max-width: 100%;
  border-radius: 8px;
  box-shadow: 0 0 16px #333;
  transition: all 1.5s ease;
}
.gallery img:hover {
  box-shadow: 0 0 32px #333;
}
.gallery .content {
  padding: 4px;
}
.gallery .gallery-item {
  transition: grid-row-start 300ms linear;
  transition: transform 300ms ease;
  transition: all 0.5s ease;
  cursor: pointer;
}
.gallery .gallery-item:hover {
  transform: scale(1.025);
}
@media (max-width: 600px) {
  .gallery {
    grid-template-columns: repeat(auto-fill, minmax(30%, 1fr));
  }
}
@media (max-width: 400px) {
  .gallery {
    grid-template-columns: repeat(auto-fill, minmax(50%, 1fr));
  }
}
@-moz-keyframes zoomin {
  0% {
    max-width: 50%;
    transform: rotate(-30deg);
    filter: blur(4px);
  }
  30% {
    filter: blur(4px);
    transform: rotate(-80deg);
  }
  70% {
    max-width: 50%;
    transform: rotate(45deg);
  }
  100% {
    max-width: 100%;
    transform: rotate(0deg);
  }
}
@-webkit-keyframes zoomin {
  0% {
    max-width: 50%;
    transform: rotate(-30deg);
    filter: blur(4px);
  }
  30% {
    filter: blur(4px);
    transform: rotate(-80deg);
  }
  70% {
    max-width: 50%;
    transform: rotate(45deg);
  }
  100% {
    max-width: 100%;
    transform: rotate(0deg);
  }
}
@-o-keyframes zoomin {
  0% {
    max-width: 50%;
    transform: rotate(-30deg);
    filter: blur(4px);
  }
  30% {
    filter: blur(4px);
    transform: rotate(-80deg);
  }
  70% {
    max-width: 50%;
    transform: rotate(45deg);
  }
  100% {
    max-width: 100%;
    transform: rotate(0deg);
  }
}
@keyframes zoomin {
  0% {
    max-width: 50%;
    transform: rotate(-30deg);
    filter: blur(4px);
  }
  30% {
    filter: blur(4px);
    transform: rotate(-80deg);
  }
  70% {
    max-width: 50%;
    transform: rotate(45deg);
  }
  100% {
    max-width: 100%;
    transform: rotate(0deg);
  }
}
    </style>
</head>
<body>
    <h1>Photo Gallery</h1>

    <div class="gallery" id="gallery">
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,care" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,studied" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,substance" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,choose" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,past" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,lamp" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,yet" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,eight" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,crew" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,event" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,instrument" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,practical" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,pass" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,bigger" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,number" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,feature" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,line" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,railroad" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,pride" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,too" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,bottle" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,base" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,cell" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,bag" alt=""></div>
        </div>
        <div class="gallery-item">
            <div class="content"><img src="https://source.unsplash.com/random/?tech,card" alt=""></div>
        </div>
    </div>
     
</body>
</html>