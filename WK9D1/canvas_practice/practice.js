document.addEventListener("DOMContentLoaded", function(){
    let canV = document.getElementById("mycanvas");
    canV.height = 500;
    canV.width = 500;

    context = canV.getContext("2d");
    context.fillStyle = "purple";
    context.fillRect(0, 0, 500, 500);

    context.beginPath();
    context.arc(100, 100, 20, 0, 4 * Math.PI, true);
    context.strokeStyle = "green";
    context.lineWidth = 5;
    context.stroke();
    context.fillStyle = "blue";
    context.fill();
});
