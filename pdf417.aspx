<%@ Page Language="C#" %>
<%@ Import Namespace="BarcodeLib.Barcode.PDF417" %>
<%
    PDF417WebStream.drawBarcode(Request, Response);
%>
