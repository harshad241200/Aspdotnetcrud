<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="index.aspx.cs" Inherits="AspCrud.index" %>

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
   <form runat="server">

       <div class="container">
          
                  <div class="table-responsive">
                 <input type="hidden" id="hiddenid" />

                    <table id="usertable" border='1' >
               <asp:Repeater ID="Repeaters1" runat="server">
                   <HeaderTemplate>
                       <thead>
                           <tr>
                           <th>Fname</th>
                            <th>Lname</th>
                            <th>Mob</th>
                             <th>Action</th>
                       </tr>
                       </thead>
                   </HeaderTemplate>
                   <ItemTemplate>
                       <tbody>
                           <tr>
                           <td><%#Eval("firstname")%></td>
                           <td><%#Eval("lastname")%></td>
                           <td><%#Eval("mobileno")%></td>
                           <td><button class="btn btn-success "><a href="edit.aspx?id=<%#Eval("id")%>">edit</a></button>
                              <button class="btn btn-danger"  id="deleteuser" data-id="<%#Eval("id") %>">Delete</button>
                           </td>

               

                       </tr>
                       </tbody>
                   </ItemTemplate>
               </asp:Repeater>
                    </table>
          </div>

           </div>






  <div class="col-md-6">
    <label for="exampleInputEmail1" class="form-label">First Name</label>
      <asp:TextBox ID="Fname" CssClass="form-control" runat="server"></asp:TextBox>
  </div>

 <div class="col-md-6">
    <label for="exampleInputEmail1" class="form-label">Last Name</label>
     <asp:TextBox ID="Lname" CssClass="form-control" runat="server"></asp:TextBox>
  </div>

   <div class="col-md-6">
    <label for="exampleInputEmail1" class="form-label">Mobile No</label>
       <asp:TextBox ID="mobno" CssClass="form-control" runat="server"></asp:TextBox>
  </div>

       <asp:Button ID="Button1" runat="server" Text="Button" OnClick="submitdata" />
</form>

      

    <!-- Option 2: Separate Popper and Bootstrap JS -->
   
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
   
          <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/js/jquery.dataTables.min.js"></script>
                <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

      <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>




    <script>
 
          $(document).ready(function () {
              $('#usertable').DataTable();
              $("#usertable").on('click', '#deleteuser', function () {
                  let hiddenid = $(this).attr("data-id")
                  $.ajax({
                      method: "POST",
                      contentType: "application/json; charset=utf-8",
                      url: "WebService1.asmx/Delete",
                      data: "{'id':'" + hiddenid + "'}",
                      success: function (resp) {
                          console.log('Response=====>', resp)
                          swal("Deleted Successfully !", "Your data deleted", "success").then(function () {
                              location.reload()
                          });
                      },
                      dataType: "json"
                  });
              })
          })
    </script>
  </body>
</html>