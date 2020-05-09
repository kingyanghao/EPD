<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!-- xlsx.js (C) 2013-present  SheetJS http://sheetjs.com -->
<!-- vim: set ts=2: -->
<html>
  <head>
    <title>SheetJS Live Grid Demo</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" type="image/png" href="assets/img/logo.png" />
    <link rel="stylesheet" href="assets/css/sheetjs.css">
  </head>
  <body>
    <script src="/EPD/jss/alertify.js"></script>
    <script src="/EPD/jss/canvas-datagrid.js"></script>
      <div id="drop">Drop a file here</div>
      <input type="file" id="file" value=""/>
      <div id="buttons" style="display: none;"></div>
      <div style="display: none;" id="grid"></div>
      <div id="footnote"></div>
    <script data-cfasync="false" src="/EPD/jss/email-decode.min.js"></script>
    <script src="/EPD/jss/xlsx.full.min.js"></script>
    <script src="/EPD/jss/dropsheet.js"></script>
    <script src="/EPD/jss/main.js"></script>
    <script src="/EPD/jss/spin.js"></script>

    <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-36810333-1']);
      _gaq.push(['_setDomainName', 'sheetjs.com']);
      _gaq.push(['_setAllowLinker', true]);
      _gaq.push(['_trackPageview']);

      (function() {
      var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
    </script>
  </body>
</html>