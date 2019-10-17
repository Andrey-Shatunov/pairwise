<!DOCTYPE html>
<html>
<meta charset="utf-8">
<link href="StyleSheet.css" rel="stylesheet" type="text/css">
    <head>
        <title>be1.ru</title>
    </head>
    <body>
        <div>
            <center><h2>Pairwise for testing</h2></center>
        </div>
        <div class="content">
            <div class="one">
                <form action="/" method="post" id="form1">
                    <textarea class="one" name="pairwise">{{result['pairwise']}}</textarea>
                    
                </form>
                <center><button type="submit" form="form1" value="Submit">Submit</button></center>
                <hr>
            </div>
            
            %if not len(result['result']):
                <h3>Pairwise Testing</h3>
                <h4>Онлайн-инструмент для генерации вывода Pairwise</h4>
                <p>Pairwise testing (попарное тестирование) – это техника формирования наборов тестовых данных из полного набора входных данных в системе, которая позволяет существенно сократить количество тест-кейсов.</p>
                <h4>Пример ввода</h4>
                <div>
                    Chrome, Firefox, Opera, Safari
                    <br>
                    Windows, Linux, MacOS
                    <br>
                    RU, EN
                </div>
                <h4>Пример вывода</h4>
                <div>
                     0: ['Chrome', 'Windows', 'RU']
                     <br>
                     1: [' Firefox', ' Linux', 'RU']
                     <br>
                     2: [' Opera', ' MacOS', 'RU']
                     <br>
                     3: [' Safari', ' MacOS', ' EN']
                     <br>
                     4: [' Safari', ' Linux', 'RU']
                     <br>
                     .....
            %else:
                <textarea readonly class="two" name="">
                    %for res in result['result']:
{{!res}}
                    %end

                </textarea>
            %end

        </div>
    </body>
</html>
