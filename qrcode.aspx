<%@ Page Language="C#" %>
<%@ Import Namespace="BarcodeLib.Barcode.QRCode" %>
<%
    QRCodeWebStream.drawBarcode(Request, Response);
%>
