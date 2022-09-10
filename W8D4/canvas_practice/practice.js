document.addEventListener("DOMContentLoaded", function () {
    const canvasEl = document.getElementById('mycanvas');
    canvasEl.width = 500;
    canvasEl.height = 500;

    const ctx = canvasEl.getContext('2d');
    ctx.fillStyle = "red";
    ctx.fillRect(0,0,500,500);

    ctx.beginPath();
    ctx.arc(100,400, 50 , 0, 2*Math.PI, true);
    ctx.strokeStyle = "green";
    ctx.lineWidth = 5;
    ctx.stroke();
    ctx.fillStyle = "yellow";
    ctx.fill();

});


// document.addEventListener("DOMContentLoaded", function () {
//     const canvasEl = document.getElementById('mycanvas');
//     canvasEl.width = 500;
//     canvasEl.height = 500;

//     const ctx = canvasEl.getContext('2d');
//     ctx.fillStyle = "blue";
//     ctx.fillRect(0, 0, 500, 500);

//     ctx.beginPath();
//     ctx.arc(300, 300, 50, 0, 20, true);
//     ctx.strokeStyle = "red";
//     ctx.lineWidth = 20;
//     ctx.stroke()

//     ctx.fillStyle = "yellow";
//     ctx.fill()


// });