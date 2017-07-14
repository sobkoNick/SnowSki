<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 14.07.2017
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/css/info.css" type="text/css">
    <title>INFO</title>
</head>
<body>
<section class="ac-container">
    <div>
        <input id="ac-1" name="accordion-1" type="radio" checked="">
        <label for="ac-1">About us</label>
        <article class="ac-small">
            <p>We are small ski shop that takes care of our customers.
                In 1981, Wolf and Julie Uhl took over ownership of The Ski Shop and was joined by ski enthusiasts Kevin and Carolyn Kinney.
                Son, Rick, joined The Ski Shop crew after graduation from Western State College in 1993. After Wolf and Julie’s retirement in 2002, it was Rick’s turn to lead The Ski Shop Team.
                A year later, Brother Scott rejoined the family business and Rick’s wife Debbie soon followed</p>
        </article>
    </div>
    <div>
        <input id="ac-2" name="accordion-1" type="radio">
        <label for="ac-2">Questions</label>
        <article class="ac-large">
            <p>
            <h4>Is ordering online secure?</h4>
                YES! All purchases in our website are guaranteed maximum security! Tradeinn takes internet payment security very seriously.
                When you order online, your bank details are encrypted and sent to our server using the SSL protocol (Secure Socket Layer).
                This payment protocol is standard and known for transmitting data securely by internet. They are never stored.
            <h4> How do I add items to my basket?</h4>
                To add an item to your basket, you just need to type the desired quantity and click on the ADD TO BASKET button.
                If you wish to change the quantity of any products in your basket, you can change the number by clicking on the -/+ buttons in the column for quantity. You should see the price updating accordingly
            <h4>How do I remove items of my basket?</h4>
                To remove an item from your basket, please click on the basket icon in the top right of our page.
                Then click on DELETE just below the -/+ buttons in the column for quantity. You should see the price updating accordingly.
            </p>
        </article>
    </div>
    <div>
        <input id="ac-3" name="accordion-1" type="radio">
        <label for="ac-3">References</label>
        <article class="ac-small">
            <p>The Ski Shop is the area’s only SPECIALTY Ski and Snowboard Shop because we only sell ski and snowboard gear.
                The relationships that we have built with our customers are the primary reason why The Ski Shop has stayed in
                business for over 60 years. Everyone who works at The Ski Shop is passionate about skiing and snowboarding.
                Most of us grew up skiing and snowboarding in Colorado. In fact, Wolf Uhl taught sons Rick and Scott how to ski
                at a place you may remember as Ski Broadmoor. Thank you for sharing our enthusiasm and thank you for making us
                your favorite specialty ski and snowboard shop for over 64 years and counting! </p>
        </article>
    </div>
    <div>
        <input id="ac-4" name="accordion-1" type="radio">
        <label for="ac-4">Contact us</label>
        <article class="ac-small">
            <p>Telephone: 093-000-00-00.</p>
            <p>Adress: Luchakivska Str 333, Lviv, Ukraine</p>
        </article>
    </div>
</section>
</body>
</html>
