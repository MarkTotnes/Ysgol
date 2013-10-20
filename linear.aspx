<%@ Page Language="C#" %>
<%@ Import Namespace="BarcodeLib.Barcode.Linear" %>
<%
	LinearWebStream.drawBarcode(Request, Response);
%>
