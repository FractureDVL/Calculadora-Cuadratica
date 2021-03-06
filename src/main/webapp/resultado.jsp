<%@page import="Modelo.Operacion" %>
    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <% double a=Double.valueOf(request.getParameter("a_field")); double
            b=Double.valueOf(request.getParameter("b_field")); double c=Double.valueOf(request.getParameter("c_field"));
            Operacion op=new Operacion(a, b, c); %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Calculadora | Ecuación cuadrática</title>
                <!--Google fonts free to play-->
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link href="https://fonts.googleapis.com/css2?family=Rhodium+Libre&display=swap" rel="stylesheet">
                <!-- Normalize -->
                <link rel="stylesheet" href="assets/css/normalize.css">
                <!--- Mi css -->
                <link rel="stylesheet" href="assets/css/MyStyle.css">
                <link rel="shortcut icon" href="assets/img/taco-emote.png" type="image/x-icon">
            </head>

            <body class="form-page">

                <div class="primary--ctn background background--grey-dark">

                    <div class="nav__bar">

                        <a class="nav__link link--text-dec" href="index.html">
                            <h1 class="hero__text">Taco<span class="hero--yellow">Calculator</span><img class="taco"
                                    src="assets/img/taco-emote.png" alt="taco emote windows"></span>
                            </h1>
                        </a>

                        <div class="nav__option">

                            <div class="option__link"><a class="link__text" href="">awuebo</a></div>
                            <div class="option__link"><a class="link__text" href="">awuebo</a></div>

                            <div class="option__link"><a class="link__text" href="">awuebo</a></div>
                            <div class="option__link"><a class="link__text" href="">awuebo</a></div>

                            <div class="option__link"><a class="link__text" href="">awuebo</a></div>
                            <div class="option__link"><a class="link__text" href="">awuebo</a></div>

                            <div class="option__link"><a class="link__text" href="">awuebo</a></div>
                            <div class="option__link"><a class="link__text" href="">awuebo</a></div>
                        </div>

                    </div>



                    <div class="main__ctn">
                        <div class="main__content">
                            <h2 class="main__h2">Calculadora cuadrática</h2>
                            <p class="main__p"><span class="p--yellow">0</span> = ax<sup>2</sup> + bx + c</p>
                        </div>

                        <div class="main__ctn-form">
                            <form class="main__form" action="resultado.jsp" method="POST">
                                <div class="form__inputs">
                                    <label for="a_field"></label>
                                    <input class="form__input" type="number" step="any" name="a_field" id="a_field"
                                        placeholder="a" required>
                                    <p class="input__paragram"> x<sup>2</sup> + </p>
                                    <label for="b_field"></label>
                                    <input class="form__input" type="number" step="any" name="b_field" id="b_field"
                                        placeholder="b" required>
                                    <p class="input__paragram"> x </p>
                                    <label for="c_field"></label>
                                    <input class="form__input" type="number" step="any" name="c_field" id="c_field"
                                        placeholder="c" required>
                                </div>


                                <button class="form__submit submit--white text--weight-light"
                                    type="submit">Calcular</button>

                            </form>
                            <div class="main__solution">
                                <% if ((op.cuadratica1()==0) && (op.cuadratica1()==0)) {%>

                                    <p class="p--white">No se encontraron valores</p>

                                    <%} else {%>

                                        <p class="solution__p p--yellow">X<sub>1</sub> = <span class="p--white">
                                                <%= op.cuadratica1()%>
                                            </span></p>
                                        <p class="solution__p p--yellow">X<sub>2</sub> = <span class="p--white">
                                                <%= op.cuadratica2()%>
                                            </span></p>
                                        <%} %>

                            </div>
                            <div class="main__graph">

                                <canvas id="myChart"></canvas>






                            </div>
                        </div>



                    </div>





                </div>


            </body>

            </html>