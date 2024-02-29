﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Flexify_App._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
<style>
    .glowing-circle {
        -webkit-box-shadow: 0px 0px 287px 105px rgba(121,113,227,0.9);
        -moz-box-shadow: 0px 0px 287px 105px rgba(121,113,227,0.9);
        box-shadow: 0px 0px 287px 105px rgba(121,113,227,0.9);
    }
</style>
<main class="relative bg-gray-950 overflow-hidden ">
        <nav class="z-10 sticky inset-0 top-4 w-[95%] sm:w-[90%] mx-auto bg-gray-700 bg-opacity-20 backdrop-blur-lg font-medium text-white flex justify-between gap-4  max-w-7xl items-center rounded-full text-lg  h-14 p-10 overflow-hidden">
            <div>
                <a href="/">Flexify</a>
            </div>
            <ul class="flex items-center gap-4">
                <li><a href="/home">Home</a></li>
                <li><a href="/home">Contact</a></li>
                <li><a href="/home">About</a></li>
                <li><a href="/login">Login</a></li>
            </ul>
        </nav>
    <section id="mainSection" class=" bg-fixed bg-gray-950 h-screen p-10 relative overflow-hidden">
        <div class="container mx-auto text-white flex flex-col h-full p-20 pt-32 relative">
           
            <div id="moveableDiv" style=" transition: transform 0.2s ease-out;" class="glowing-circle absolute bg-opacity-[0.2] opacity-0   h-20  rounded-full transition-all ease-out"></div>
            <div class="flex flex-col gap-4">
                <h1 class="text-4xl font-bold">Craft Your Digital Identity</h1>
                <p>Craft your unique profile page that truly reflects you.</p>
               <div>
                    <a href="" class="bg-[#39B200] p-2 rounded-lg">Get Started</a>
               </div>
            </div>
        </div>
    </section>
    <section id="section2" class="bg-[#F5F5F5] h-screen flex  justify-center p-10 pt-20">
        <div class="container text-black text-center items-center mt-28 leading-2 flex flex-col gap-4">
            <h3 class="font-bold text-5xl ">Turn your Link In Bio into your own mini-website</h3>
            <p class="max-w-2xl text-center text-gray-800 text-xl leading-2">
                It takes seconds to turn your bio into a mini website, allowing your followers to engage with your content,
                discover you on other platforms or purchase and support you with just one simple link.
            </p>

           
        </div>

        <div id="tilt-image" style=" transition: transform 0.2s ease-out;" class="mt-10 flex justify-center h-[580px] w-[580px]  relative " >
            <img style=" transition: transform 0.2s ease-out;" src="Images/tilt1/main.png" class="transition-all  h-[540px]  absolute z-10" />
            <img style=" transition: transform 0.2s ease-out;" src="Images/tilt1/email_subs.png" class="transition-all h-60 left-[-120px] bottom-56  absolute z-20" />
            <img style=" transition: transform 0.2s ease-out;" src="Images/tilt1/picture.png" class="transition-all h-72  bottom-0 right-[-100px]  absolute z-20" />
        </div>
       
    </section>
    <section class="bg-[#3C153B] h-screen flex justify-between items-center">
        <div class="container text-white w-1/2">
            <h3>   images </h3>
        </div>
        <div class="container text-white w-1/2">
            <h5 class="font-bold text-5xl text-end px-10 m-10">
                Control how your content 
                <br />is consumed with 
                <br />link types & buttons
            </h5>
            <p class="text-end text-gray-400 px-10 m-10">
                Schedule your links to go live in the future, use animations to highlight what’s important,
                create QR codes to take your offline customers online, add social icons to grow your following,
                embed video and even collect email and SMS subscribers.
            </p>
        </div>
    </section>
    <section class="bg-[#DB4C40] h-screen flex justify-between items-center">
        <div class="container text-white w-1/2">

        </div>
    </section>

    <footer class="bg-gray-740 text-[#F5F5F5] text-center py-10">
        <p class="text-xl">&copy; 2024 G.L. All rights reserved.</p>
    </footer>
    
</main>





<script>
    $(document).ready(function () {
        $('body').mousemove(function (e) {
            var mouseX = e.pageX;
            var mouseY = e.pageY;

            // Adjust position of moveable div
            $('#moveableDiv').removeClass('opacity-0')
            $('#moveableDiv').css({
                'left': mouseX,
                'top': mouseY
            });
            const container = $('#tilt-image');
            const containerOffset = container.offset();
            const containerWidth = container.width();
            const containerHeight = container.height();

            const xOffset = (e.pageX - containerOffset.left) / containerWidth - 0.5;
            const yOffset = (e.pageY - containerOffset.top) / containerHeight - 0.5;
            const tiltAmount = 20; // adjust this value for desired tilt intensity

            const tiltX = ((yOffset * tiltAmount).toFixed(2)) * -1 + 10;
            const tiltY = ((-xOffset * tiltAmount).toFixed(2)) * -1 + 10;

            container.css('transform', `perspective(1000px) rotateX(${tiltX}deg) rotateY(${tiltY}deg)`);
            container.find('img').css('transform', `perspective(1000px) rotateX(${tiltX}deg) rotateY(${tiltY}deg)`);


            image.css('transform', `perspective(1000px) rotateX(${tiltX}deg) rotateY(${tiltY}deg)`);
        });

        // Reset the tilt effect when the mouse leaves the image

    });
</script>

</asp:Content>