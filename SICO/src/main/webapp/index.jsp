<%@ page import="mx.com.utez.sico2.Servlet" %>
<%@ page import="mx.com.utez.sico2.encuestas.DaoEncuesta" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SICO</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

    <script type="text/javascript">
        let lastFuncionalidad = 0;
        let lastConfiabilidad = 0;
        let lastUsabilidad = 0;
        let lastRendimiento = 0;
        let lastMantenimiento = 0;
        let lastPortabilidad = 0;
        let lastSeguridad = 0;
        let lastCompatibilidad = 0;

        let contadorMalas = 0;
        let contadorRegulares = 0;
        let contadorBuenas = 0;
        let contadorMuyBuenas = 0;
        let contadorExcelentes = 0;
        let contadorGeneral = 0;

        function calcularFuncionalidad (){
            if (document.getElementById('F1').checked){
                if (lastFuncionalidad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastFuncionalidad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastFuncionalidad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastFuncionalidad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastFuncionalidad = 1;
                contadorMalas = contadorMalas + lastFuncionalidad;
                console.log(contadorMalas);
                document.getElementById('mala').innerHTML = contadorMalas;
                calcularPorcentaje();
            } else if (document.getElementById('F2').checked){
                if (lastFuncionalidad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastFuncionalidad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastFuncionalidad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastFuncionalidad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastFuncionalidad = 2;
                contadorRegulares = contadorRegulares + lastFuncionalidad;
                console.log(contadorRegulares);
                document.getElementById('regular').innerHTML = contadorRegulares;
                calcularPorcentaje();
            } else if (document.getElementById('F3').checked){
                if (lastFuncionalidad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastFuncionalidad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastFuncionalidad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastFuncionalidad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastFuncionalidad = 3;
                contadorBuenas = contadorBuenas + lastFuncionalidad;
                console.log(contadorBuenas);
                document.getElementById('buena').innerHTML = contadorBuenas;
                calcularPorcentaje();
            } else if (document.getElementById('F4').checked){
                if (lastFuncionalidad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastFuncionalidad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastFuncionalidad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastFuncionalidad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastFuncionalidad = 4;
                contadorMuyBuenas = contadorMuyBuenas + lastFuncionalidad;
                console.log(contadorMuyBuenas);
                document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                calcularPorcentaje();
            } else if (document.getElementById('F5').checked){
                if (lastFuncionalidad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastFuncionalidad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastFuncionalidad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastFuncionalidad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                }

                lastFuncionalidad = 5;
                contadorExcelentes = contadorExcelentes + lastFuncionalidad;
                console.log(contadorExcelentes);
                document.getElementById('excelente').innerHTML = contadorExcelentes;
                calcularPorcentaje();
            }
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        function calcularConfiabilidad (){
            if (document.getElementById('C1').checked){
                if (lastConfiabilidad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastConfiabilidad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastConfiabilidad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastConfiabilidad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastConfiabilidad = 1;
                contadorMalas = contadorMalas + lastConfiabilidad;
                console.log(contadorMalas);
                document.getElementById('mala').innerHTML = contadorMalas;
                calcularPorcentaje();
            } else if (document.getElementById('C2').checked){
                if (lastConfiabilidad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastConfiabilidad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastConfiabilidad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastConfiabilidad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastConfiabilidad = 2;
                contadorRegulares = contadorRegulares + lastConfiabilidad;
                console.log(contadorRegulares);
                document.getElementById('regular').innerHTML = contadorRegulares;
                calcularPorcentaje();
            } else if (document.getElementById('C3').checked){
                if (lastConfiabilidad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastConfiabilidad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastConfiabilidad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastConfiabilidad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastConfiabilidad = 3;
                contadorBuenas = contadorBuenas + lastConfiabilidad;
                console.log(contadorBuenas);
                document.getElementById('buena').innerHTML = contadorBuenas;
                calcularPorcentaje();
            } else if (document.getElementById('C4').checked){
                if (lastConfiabilidad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastConfiabilidad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastConfiabilidad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastConfiabilidad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastConfiabilidad = 4;
                contadorMuyBuenas = contadorMuyBuenas + lastConfiabilidad;
                console.log(contadorMuyBuenas);
                document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                calcularPorcentaje();
            } else if (document.getElementById('C5').checked){
                if (lastConfiabilidad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastConfiabilidad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastConfiabilidad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastConfiabilidad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                }

                lastConfiabilidad = 5;
                contadorExcelentes = contadorExcelentes + lastConfiabilidad;
                console.log(contadorExcelentes);
                document.getElementById('excelente').innerHTML = contadorExcelentes;
                calcularPorcentaje();
            }
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        function calcularUsabilidad() {
            if (document.getElementById('U1').checked) {
                if (lastUsabilidad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastUsabilidad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastUsabilidad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastUsabilidad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastUsabilidad = 1;
                contadorMalas = contadorMalas + lastUsabilidad;
                console.log(contadorMalas);
                document.getElementById('mala').innerHTML = contadorMalas;
                calcularPorcentaje();
            } else if (document.getElementById('U2').checked) {
                if (lastUsabilidad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastUsabilidad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastUsabilidad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastUsabilidad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastUsabilidad = 2;
                contadorRegulares = contadorRegulares + lastUsabilidad;
                console.log(contadorBuenas);
                document.getElementById('regular').innerHTML = contadorRegulares;
                calcularPorcentaje();
            } else if (document.getElementById('U3').checked) {
                if (lastUsabilidad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastUsabilidad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastUsabilidad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastUsabilidad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastUsabilidad = 3;
                contadorBuenas = contadorBuenas + lastUsabilidad;
                console.log(contadorBuenas);
                document.getElementById('buena').innerHTML = contadorBuenas;
                calcularPorcentaje();
            } else if (document.getElementById('U4').checked) {
                if (lastUsabilidad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastUsabilidad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastUsabilidad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastUsabilidad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastUsabilidad = 4;
                contadorMuyBuenas = contadorMuyBuenas + lastUsabilidad;
                console.log(contadorMuyBuenas);
                document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                calcularPorcentaje();
            } else if (document.getElementById('U5').checked) {
                if (lastUsabilidad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastUsabilidad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastUsabilidad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastUsabilidad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                }

                lastUsabilidad = 5;
                contadorExcelentes = contadorExcelentes + lastUsabilidad;
                console.log(contadorExcelentes);
                document.getElementById('excelente').innerHTML = contadorExcelentes;
                calcularPorcentaje();
            }
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        function calcularRendimiento(){
            if (document.getElementById('R1').checked){
                if (lastRendimiento === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastRendimiento === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastRendimiento === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastRendimiento === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastRendimiento = 1;
                contadorMalas = contadorMalas + lastRendimiento;
                console.log(contadorMalas);
                document.getElementById('mala').innerHTML = contadorMalas;
                calcularPorcentaje();
            } else if (document.getElementById('R2').checked){
                if (lastRendimiento === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastRendimiento === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastRendimiento === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastRendimiento === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastRendimiento = 2;
                contadorRegulares = contadorRegulares + lastRendimiento;
                console.log(contadorRegulares);
                document.getElementById('regular').innerHTML = contadorRegulares;
                calcularPorcentaje();
            } else if (document.getElementById('R3').checked){
                if (lastRendimiento === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastRendimiento === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastRendimiento === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastRendimiento === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastRendimiento = 3;
                contadorBuenas = contadorBuenas + lastRendimiento;
                console.log(contadorBuenas);
                document.getElementById('buena').innerHTML = contadorBuenas;
                calcularPorcentaje();
            } else if (document.getElementById('R4').checked){
                if (lastRendimiento === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastRendimiento === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastRendimiento === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastRendimiento === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastRendimiento = 4;
                contadorMuyBuenas = contadorMuyBuenas + lastRendimiento;
                console.log(contadorMuyBuenas);
                document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                calcularPorcentaje();
            } else if (document.getElementById('R5').checked){
                if (lastRendimiento === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastRendimiento === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastRendimiento === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastRendimiento === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                }

                lastRendimiento = 5;
                contadorExcelentes = contadorExcelentes + lastRendimiento;
                console.log(contadorExcelentes);
                document.getElementById('excelente').innerHTML = contadorExcelentes;
                calcularPorcentaje();
            }
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        function calcularMantenimiento(){
            if (document.getElementById('M1').checked){
                if (lastMantenimiento === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastMantenimiento === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastMantenimiento === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastMantenimiento === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastMantenimiento = 1;
                contadorMalas = contadorMalas + lastMantenimiento;
                console.log(contadorMalas);
                document.getElementById('mala').innerHTML = contadorMalas;
                calcularPorcentaje();
            } else if (document.getElementById('M2').checked){
                if (lastMantenimiento === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastMantenimiento === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastMantenimiento === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastMantenimiento === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastMantenimiento = 2;
                contadorRegulares = contadorRegulares + lastMantenimiento;
                console.log(contadorRegulares);
                document.getElementById('regular').innerHTML = contadorRegulares;
                calcularPorcentaje();
            } else if (document.getElementById('M3').checked){
                if (lastMantenimiento === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastMantenimiento === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastMantenimiento === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastMantenimiento === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastMantenimiento = 3;
                contadorBuenas = contadorBuenas + lastMantenimiento;
                console.log(contadorBuenas);
                document.getElementById('buena').innerHTML = contadorBuenas;
                calcularPorcentaje();
            } else if (document.getElementById('M4').checked){
                if (lastMantenimiento === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastMantenimiento === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastMantenimiento === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastMantenimiento === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastMantenimiento = 4;
                contadorMuyBuenas = contadorMuyBuenas + lastMantenimiento;
                console.log(contadorMuyBuenas);
                document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                calcularPorcentaje();
            } else if (document.getElementById('M5').checked){
                if (lastMantenimiento === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastMantenimiento === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastMantenimiento === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastMantenimiento === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                }

                lastMantenimiento = 5;
                contadorExcelentes = contadorExcelentes + lastMantenimiento;
                console.log(contadorExcelentes);
                document.getElementById('excelente').innerHTML = contadorExcelentes;
                calcularPorcentaje();
            }
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        function calcularPortabilidad(){
            if (document.getElementById('P1').checked){
                if (lastPortabilidad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastPortabilidad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastPortabilidad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastPortabilidad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastPortabilidad = 1;
                contadorMalas = contadorMalas + lastPortabilidad;
                console.log(contadorMalas);
                document.getElementById('mala').innerHTML = contadorMalas;
                calcularPorcentaje();
            } else if (document.getElementById('P2').checked){
                if (lastPortabilidad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastPortabilidad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastPortabilidad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastPortabilidad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastPortabilidad = 2;
                contadorRegulares = contadorRegulares + lastPortabilidad;
                console.log(contadorRegulares);
                document.getElementById('regular').innerHTML = contadorRegulares;
                calcularPorcentaje();
            } else if (document.getElementById('P3').checked){
                if (lastPortabilidad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastPortabilidad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastPortabilidad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastPortabilidad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastPortabilidad = 3;
                contadorBuenas = contadorBuenas + lastPortabilidad;
                console.log(contadorBuenas);
                document.getElementById('buena').innerHTML = contadorBuenas;
                calcularPorcentaje();
            } else if (document.getElementById('P4').checked){
                if (lastPortabilidad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastPortabilidad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastPortabilidad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastPortabilidad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastPortabilidad = 4;
                contadorMuyBuenas = contadorMuyBuenas + lastPortabilidad;
                console.log(contadorMuyBuenas);
                document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                calcularPorcentaje();
            } else if (document.getElementById('P5').checked){
                if (lastPortabilidad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastPortabilidad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastPortabilidad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastPortabilidad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                }

                lastPortabilidad = 5;
                contadorExcelentes = contadorExcelentes + lastPortabilidad;
                console.log(contadorExcelentes);
                document.getElementById('excelente').innerHTML = contadorExcelentes;
                calcularPorcentaje();
            }
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        function calcularSeguridad(){
            if (document.getElementById('S1').checked){
                if (lastSeguridad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastSeguridad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastSeguridad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastSeguridad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastSeguridad = 1;
                contadorMalas = contadorMalas + lastSeguridad;
                console.log(contadorMalas);
                document.getElementById('mala').innerHTML = contadorMalas;
                calcularPorcentaje();
            } else if (document.getElementById('S2').checked){
                if (lastSeguridad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastSeguridad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastSeguridad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastSeguridad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastSeguridad = 2;
                contadorRegulares = contadorRegulares + lastSeguridad;
                console.log(contadorRegulares);
                document.getElementById('regular').innerHTML = contadorRegulares;
                calcularPorcentaje();
            } else if (document.getElementById('S3').checked){
                if (lastSeguridad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastSeguridad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastSeguridad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastSeguridad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastSeguridad = 3;
                contadorBuenas = contadorBuenas + lastSeguridad;
                console.log(contadorBuenas);
                document.getElementById('buena').innerHTML = contadorBuenas;
                calcularPorcentaje();
            } else if (document.getElementById('S4').checked){
                if (lastSeguridad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastSeguridad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastSeguridad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastSeguridad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastSeguridad = 4;
                contadorMuyBuenas = contadorMuyBuenas + lastSeguridad;
                console.log(contadorMuyBuenas);
                document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                calcularPorcentaje();
            } else if (document.getElementById('S5').checked){
                if (lastSeguridad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastSeguridad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastSeguridad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastSeguridad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                }

                lastSeguridad = 5;
                contadorExcelentes = contadorExcelentes + lastSeguridad;
                console.log(contadorExcelentes);
                document.getElementById('excelente').innerHTML = contadorExcelentes;
                calcularPorcentaje();
            }
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        function calcularCompatibilidad(){
            if (document.getElementById('CO1').checked){
                if (lastCompatibilidad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastCompatibilidad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastCompatibilidad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastCompatibilidad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastCompatibilidad = 1;
                contadorMalas = contadorMalas + lastCompatibilidad;
                console.log(contadorMalas);
                document.getElementById('mala').innerHTML = contadorMalas;
                calcularPorcentaje();
            } else if (document.getElementById('CO2').checked){
                if (lastCompatibilidad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastCompatibilidad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastCompatibilidad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastCompatibilidad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastCompatibilidad = 2;
                contadorRegulares = contadorRegulares + lastCompatibilidad;
                console.log(contadorRegulares);
                document.getElementById('regular').innerHTML = contadorRegulares;
                calcularPorcentaje();
            } else if (document.getElementById('CO3').checked){
                if (lastCompatibilidad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastCompatibilidad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastCompatibilidad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                } else if (lastCompatibilidad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastCompatibilidad = 3;
                contadorBuenas = contadorBuenas + lastCompatibilidad;
                console.log(contadorBuenas);
                document.getElementById('buena').innerHTML = contadorBuenas;
                calcularPorcentaje();
            } else if (document.getElementById('CO4').checked){
                if (lastCompatibilidad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastCompatibilidad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastCompatibilidad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastCompatibilidad === 5){
                    contadorExcelentes = contadorExcelentes - 5;
                    document.getElementById('excelente').innerHTML = contadorExcelentes;
                    calcularPorcentaje();
                }

                lastCompatibilidad = 4;
                contadorMuyBuenas = contadorMuyBuenas + lastCompatibilidad;
                console.log(contadorMuyBuenas);
                document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                calcularPorcentaje();
            } else if (document.getElementById('CO5').checked){
                if (lastCompatibilidad === 1){
                    contadorMalas = contadorMalas - 1;
                    document.getElementById('mala').innerHTML = contadorMalas;
                    calcularPorcentaje();
                } else if (lastCompatibilidad === 2){
                    contadorRegulares = contadorRegulares - 2;
                    document.getElementById('regular').innerHTML = contadorRegulares;
                    calcularPorcentaje();
                } else if (lastCompatibilidad === 3){
                    contadorBuenas = contadorBuenas - 3;
                    document.getElementById('buena').innerHTML = contadorBuenas;
                    calcularPorcentaje();
                } else if (lastCompatibilidad === 4){
                    contadorMuyBuenas = contadorMuyBuenas - 4;
                    document.getElementById('muyBuena').innerHTML = contadorMuyBuenas;
                    calcularPorcentaje();
                }

                lastCompatibilidad = 5;
                contadorExcelentes = contadorExcelentes + lastCompatibilidad;
                console.log(contadorExcelentes);
                document.getElementById('excelente').innerHTML = contadorExcelentes;
                calcularPorcentaje();
            }

        }

        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        function calcularPorcentaje(){
            contadorGeneral = contadorExcelentes + contadorMuyBuenas + contadorBuenas + contadorRegulares + contadorMalas;
            console.log("contador general " + contadorGeneral);
            if (contadorGeneral > 0){
                let porcentaje = (contadorGeneral * 100) / 40;
                document.getElementById('porcentajeEncuesta').innerHTML = "" + porcentaje;
                calcularPorcentajeGeneral(porcentaje);
            }

        }

        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        function calcularPorcentajeGeneral(porcentaje){
            let porcentajeGeneral = parseFloat(document.getElementById('porcentajeGeneral').value);
            let porcentajeGeneralActualizado = (porcentaje + porcentajeGeneral) / 2;
            console.log('porcentaje general = ' + porcentajeGeneralActualizado);
            document.getElementById('porcentajeGeneral').value = porcentajeGeneralActualizado;
        }
    </script>
</head>

<body>

<script type="text/javascript">
    function validar(){
        let nombreEncuesta = document.getElementById('nombreEncuesta');
        if (nombreEncuesta == null){
            document.encuesta.submit();
        } else{
            window.alert('seleccione una encuesta');
        }
    }
</script>

<div class="all">
    <div>
        <div>
            <center>
                <label class="title">
                    SICO - Sistema de Control de Calidad
                </label>
            </center>
        </div><br>
        <center>
            <form name="formulario" action="guardar" method="post">
            <select class="inputs" name="encuestas" onChange='location.replace(document.formulario.encuestas.value);'>
                <option selected disabled>Selecciona una encuesta</option>
                <c:forEach var="encuesta1" items="${encuestas}" varStatus="status">
                    <option value="http://localhost:8080/SICO2_0_war_exploded/obtener-encuesta?id=${encuesta1.id}">
                        <c:out value="${encuesta1.nombreEncuesta}"></c:out>
                    </option>
                </c:forEach>
            </select>
            </form>
        </center>
    </div><br>

    <form method="post" action="guardar-encuesta" name="encuesta">
    <div>
        <center>
            <label class="text">Encuesta</label>
            <input class="inputs" disabled type="text" value="${encuesta.nombreEncuesta}" name="nombreEncuesta" id="nombreEncuesta" placeholder="Nombre de la encuesta">
        </center>
    </div><br>

    <div>
        <center>
            <label class="text">Clientes</label>
            <input class="inputs" value="${encuesta.cliente}" name="cliente" maxlength="50" type="text" placeholder="Ingrese nombre del cliente">
            <input type="hidden" value="${encuesta.id}" name="id" id="id">
        </center>
    </div><br>


    <div>
        <center>
            <label class="text">Institución</label>
            <input class="inputs" value="${encuesta.institucion}" name="institucion" maxlength="50" type= "text" placeholder="Ingrese nombre de la institución">
        </center>
    </div><br>

    <div>
        <center>
            <table class="table" style="text-align: center; vertical-align: middle;">
                <tr>
                    <td style="color: white; background-color: #4B6EAF; width: 120px;">Características</td>
                    <td style="color: red; background-color: #3C3F41; width: 120px;">MALA</td>
                    <td style="color: #ED7D31; background-color: #3C3F41; width: 120px;">REGULAR</td>
                    <td style="color: #FFC000; background-color: #3C3F41; width: 120px;">BUENA</td>
                    <td style="color: #00B050; background-color: #3C3F41; width: 120px;">MUY BUENA</td>
                    <td style="color: #0070C0; background-color: #3C3F41; width: 120px;">EXCELENTE</td>
                </tr>
                <tr>
                    <td style="color: black; background-color: #B3C3DF;">Funcionalidad</td>
                    <td style="background-color: red;" onchange="calcularFuncionalidad()"><input type="radio" value="1" id="F1" name="FU" required class="botones"></td>
                    <td style="background-color: #ED7D31;" onchange="calcularFuncionalidad()"><input type="radio" value="2" id="F2" name="FU" required class="botones"></td>
                    <td style="background-color: #FFC000;" onchange="calcularFuncionalidad()"><input type="radio" value="3" id="F3" name="FU" required class="botones"></td>
                    <td style="background-color: #00B050;" onchange="calcularFuncionalidad()"><input type="radio" value="4" id="F4" name="FU" required class="botones"></td>
                    <td style="background-color: #0070C0;" onchange="calcularFuncionalidad()"><input type="radio" value="5" id="F5" name="FU" required class="botones"></td>
                </tr>
                <tr>
                    <td style="color: black; background-color: #B3C3DF;">Confiabilidad</td>
                    <td style="background-color: red;" onchange="calcularConfiabilidad()"><input type="radio" value="1" id="C1" name="CA" required class="botones"></td>
                    <td style="background-color: #ED7D31;" onchange="calcularConfiabilidad()"><input type="radio" value="2" id="C2" name="CA" required class="botones"></td>
                    <td style="background-color: #FFC000;" onchange="calcularConfiabilidad()"><input type="radio" value="3" id="C3" name="CA" required class="botones"></td>
                    <td style="background-color: #00B050;" onchange="calcularConfiabilidad()"><input type="radio" value="4" id="C4" name="CA" required class="botones"></td>
                    <td style="background-color: #0070C0;" onchange="calcularConfiabilidad()"><input type="radio" value="5" id="C5" name="CA" required class="botones"></td>
                </tr>
                <tr>
                    <td style="color: black; background-color: #B3C3DF;">Usabilidad</td>
                    <td style="background-color: red;" onchange="calcularUsabilidad()"><input type="radio" value="1" id="U1" name="USA" required class="botones"></td>
                    <td style="background-color: #ED7D31;"onchange="calcularUsabilidad()"><input type="radio" value="2" id="U2" name="USA" required class="botones"></td>
                    <td style="background-color: #FFC000;"onchange="calcularUsabilidad()"><input type="radio" value="3" id="U3" name="USA" required class="botones"></td>
                    <td style="background-color: #00B050;"onchange="calcularUsabilidad()"><input type="radio" value="4" id="U4" name="USA" required class="botones"></td>
                    <td style="background-color: #0070C0;"onchange="calcularUsabilidad()"><input type="radio" value="5" id="U5" name="USA" required class="botones"></td>
                </tr>
                <tr>
                    <td style="color: black; background-color: #B3C3DF;">Rendimiento</td>
                    <td style="background-color: red;" onchange="calcularRendimiento()"><input type="radio" value="1" id="R1" name="RE" required class="botones"></td>
                    <td style="background-color: #ED7D31;" onchange="calcularRendimiento()"><input type="radio" value="2" id="R2" name="RE" required class="botones"></td>
                    <td style="background-color: #FFC000;" onchange="calcularRendimiento()"><input type="radio" value="3" id="R3" name="RE" required class="botones"></td>
                    <td style="background-color: #00B050;" onchange="calcularRendimiento()"><input type="radio" value="4" id="R4" name="RE" required class="botones"></td>
                    <td style="background-color: #0070C0;" onchange="calcularRendimiento()"><input type="radio" value="5" id="R5" name="RE" required class="botones"></td>
                </tr>
                <tr>
                    <td style="color: black; background-color: #B3C3DF;">Mantenimiento</td>
                    <td style="background-color: red;" onchange="calcularMantenimiento()"><input type="radio" value="1" id="M1" name="MA" required class="botones"></td>
                    <td style="background-color: #ED7D31;" onchange="calcularMantenimiento()"><input type="radio" value="2" id="M2" name="MA" required class="botones"></td>
                    <td style="background-color: #FFC000;" onchange="calcularMantenimiento()"><input type="radio" value="3" id="M3" name="MA" required class="botones"></td>
                    <td style="background-color: #00B050;" onchange="calcularMantenimiento()"><input type="radio" value="4" id="M4" name="MA" required class="botones"></td>
                    <td style="background-color: #0070C0;" onchange="calcularMantenimiento()"><input type="radio" value="5" id="M5" name="MA" required class="botones"></td>
                </tr>
                <tr>
                    <td style="color: black; background-color: #B3C3DF;">Portabilidad</td>
                    <td style="background-color: red;" onchange="calcularPortabilidad()"><input type="radio" value="1" id="P1" name="PA" required class="botones"></td>
                    <td style="background-color: #ED7D31;" onchange="calcularPortabilidad()"><input type="radio" value="2" id="P2" name="PA" required class="botones"></td>
                    <td style="background-color: #FFC000;" onchange="calcularPortabilidad()"><input type="radio" value="3" id="P3" name="PA" required class="botones"></td>
                    <td style="background-color: #00B050;" onchange="calcularPortabilidad()"><input type="radio" value="4" id="P4" name="PA" required class="botones"></td>
                    <td style="background-color: #0070C0;" onchange="calcularPortabilidad()"><input type="radio" value="5" id="P5" name="PA" required class="botones"></td>
                </tr>
                <tr>
                    <td style="color: black; background-color: #B3C3DF;">Seguridad</td>
                    <td style="background-color: red;" onchange="calcularSeguridad()"><input type="radio" value="1" id="S1" name="SE" required class="botones"></td>
                    <td style="background-color: #ED7D31;" onchange="calcularSeguridad()"><input type="radio" value="2" id="S2" name="SE" required class="botones"></td>
                    <td style="background-color: #FFC000;" onchange="calcularSeguridad()"><input type="radio" value="3" id="S3" name="SE" required class="botones"></td>
                    <td style="background-color: #00B050;" onchange="calcularSeguridad()"><input type="radio" value="4" id="S4" name="SE" required class="botones"></td>
                    <td style="background-color: #0070C0;" onchange="calcularSeguridad()"><input type="radio" value="5" id="S5" name="SE" required class="botones"></td>
                </tr>
                <tr>
                    <td style="color: black; background-color: #B3C3DF;">Compatibilidad</td>
                    <td style="background-color: red;" onchange="calcularCompatibilidad()"><input type="radio" value="1" id="CO1" name="CO" required class="botones"></td>
                    <td style="background-color: #ED7D31;" onchange="calcularCompatibilidad()"><input type="radio" value="2" id="CO2" name="CO" required class="botones"></td>
                    <td style="background-color: #FFC000;" onchange="calcularCompatibilidad()"><input type="radio" value="3" id="CO3" name="CO" required class="botones"></td>
                    <td style="background-color: #00B050;" onchange="calcularCompatibilidad()"><input type="radio" value="4" id="CO4" name="CO" required class="botones"></td>
                    <td style="background-color: #0070C0;" onchange="calcularCompatibilidad()"><input type="radio" value="5" id="CO5" name="CO" required class="botones"></td>
                </tr>
                <tr>
                    <td style="background-color: #2B2B2B; border-bottom-color: transparent ;"></td>
                    <td style="background-color: #2B2B2B; border-bottom-color: transparent ;"></td>
                    <td style="background-color: #2B2B2B; border-bottom-color: transparent ;"></td>
                    <td style="background-color: #2B2B2B; border-bottom-color: transparent ;"></td>
                    <td style="background-color: #2B2B2B; border-bottom-color: transparent ;"></td>
                    <td style="background-color: #2B2B2B; border-bottom-color: transparent ;"></td>

                </tr>
                <tr>
                    <td style="color: black; background-color: #B3C3DF;"><b id="porcentajeEncuesta">0</b><b>%</b></td>
                    <td style="background-color: red;"><b id="mala">0</b></td>
                    <td style="background-color: #ED7D31;"><b id="regular">0</b></td>
                    <td style="background-color: #FFC000;"><b id="buena">0</b></td>
                    <td style="background-color: #00B050;"><b id="muyBuena">0</b></td>
                    <td style="background-color: #0070C0;"><b id="excelente">0</b></td>
                </tr>

            </table>
        </center>
    </div>

    <div class="results">
        <table>
            <tr>
                <th colspan="2" style="background-color: #4B6EAF;">RESUMEN GENERAL</th>
            </tr>
            <tr>
                <th style="background-color: #B3C3DF;">Cantidad de encuestas</th>
                <th style="background-color: #DAE3F3;"><%= Servlet.numeroEncuestas%></th>
            </tr>
            <tr>
                <th style="background-color: #B3C3DF;">Porcentaje General</th>
                <th style="background-color: #DAE3F3;"><%= DaoEncuesta.porcentajeGeneral%>%</th>
                <input type="hidden" id="porcentajeGeneral" name="porcentaje" value="${DaoEncuesta.porcentajeGeneral}">
            </tr>

        </table>
    </div>
    <div class="buttons">
        <button type="submit" class="btn btn-primary">GUARDAR</button><br><br>
        <a href="javascript:validar()" class="btn btn-primary">CANCELAR</a>
    </div>

    <div>
        <label class="porcent" style="position: relative;left: 600px;bottom: 100px;color: black;height: 35px;"></label>
    </div>
    </form>
</div>
<style>

    body{
        background-color: #2B2B2B;
        overflow-x: hidden;
        margin: 0px;
    }

    .all{
        position: relative;
        top: 40px;
    }

    .title{
        color: white;
        font-size: larger;
    }


    .table{
        width: 900px;
        border-collapse: separate;
    }

    .porcent{
        position: relative;
        left: 600px;
        bottom: 100px;
        color: black;
        height: 35px;

    }

    .botones{
        width: 100%;
        height: 35px;
        border-color: transparent;
        background-color: transparent;
    }

    .suma{
        font-size: 20px;
        font-weight: bolder;
    }

    .inputs{
        width: 600px;
        left: 50px;
        position: relative;
    }

    .text{
        color: white;
        background-color: #4B6EAF;
        font-size: 18px;
        width: 120px;
        display: inline-block;
    }

    .buttons{
        position: relative;
        top: 5px;
        left: 50px;
    }

    .results{
        position: relative;
        top: 50px;
        left: 65.3%;
    }

    .btn-primary{
        background-color: #4B6EAF;
        border: solid #4B6EAF;
        width: 120px;
    }
</style>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"
        integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk"
        crossorigin="anonymous"></script>
</body>

</html>