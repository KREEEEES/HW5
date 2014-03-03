<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       <h1>Chris&#39;s Mortgage Calculator </h1>
     
        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a number. *" ControlToValidate="tbLoanAmt" ForeColor="Red"></asp:RequiredFieldValidator>
                  
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter a number. *" ControlToValidate="tbAnnualInterest" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter a number. *" ControlToValidate="tbLoanTerm" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        
        &nbsp;<asp:Button ID="Clearbtn" runat="server" Text="Clear" />
        
        <br /><br />
                
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server"   EditRowStyle-BorderStyle="Groove" EditRowStyle-BackColor="#FF3300"  >
            <AlternatingRowStyle BackColor="White" BorderStyle="Groove" BorderWidth="2px" />
            <EditRowStyle BackColor="White"  BorderStyle="Groove" BorderWidth="2px" />
            <HeaderStyle  Font-Names="Arial Black" ForeColor="#66FF33" />
           
        </asp:GridView>
            
        </div>
    </form>
</body>
</html>
