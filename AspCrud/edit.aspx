<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false"  CodeBehind="edit.aspx.cs" Inherits="AspCrud.edit" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
        <asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
   <form runat="server">

  <div class="col-md-6">
    <label for="exampleInputEmail1" class="form-label">First Name</label>
      <asp:TextBox ID="Fname" runat="server" Text='<%# Eval("firstname") %>'></asp:TextBox>
  </div>

 <div class="col-md-6">
    <label for="exampleInputEmail1" class="form-label">Last Name</label>
     <asp:TextBox ID="Lname" runat="server" Text='<%# Eval("lastname") %>'></asp:TextBox>
  </div>

   <div class="col-md-6">
    <label for="exampleInputEmail1" class="form-label">Mobile No</label>
       <asp:TextBox ID="Mobno" runat="server" Text='<%# Eval("mobileno") %>'></asp:TextBox>
  </div>
       <asp:Button ID="Button1" runat="server" Text="Button" OnClick="editdata" />


        
</form>
        </ItemTemplate>
     
    </asp:Repeater>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
  </body>
</html>