<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="img/favicon.ico">

    <title>People list</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-8 offset-2">
            <div class="panel panel-default user_panel">
                <div class="panel-heading">
                    <h3 class="panel-title">User List</h3>
                </div>
                <div class="panel-body">
                    <div class="table-container">
                        <table class="table-users table" border="0">
                            <tbody>
                            <#list likedUsers as likedUser>
                                <tr>
                                    <td width="10">
                                        <div class="avatar-img">
                                            <img class="img-circle" src="${likedUser.photo}" />  
                                        </div>

                                    </td>
                                    <td class="align-middle">
                                        ${likedUser.name}
                                    </td>
                                    <td class="align-middle">
                                        You liked this user!
                                    </td>
                                    <td  class="align-middle">
                                        Last Login:  6/10/2017<br><small class="text-muted">5 days ago</small>
                                    </td>
                                </tr>
<#--                                <tr>-->
<#--                                    <td width="10">-->
<#--                                        <div class="avatar-img">-->
<#--                                            <img class="img-circle" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxhcCYW4QDWMOjOuUTxOd50KcJvK-rop9qE9zRltSbVS_bO-cfWA" />  -->
<#--                                        </div>-->

<#--                                    </td>-->
<#--                                    <td class="align-middle">-->
<#--                                        Herbert Hoover-->
<#--                                    </td>-->
<#--                                    <td class="align-middle">-->
<#--                                        Builder Sales Agent-->
<#--                                    </td>-->
<#--                                    <td  class="align-middle">-->
<#--                                        Last Login:  6/10/2017<br><small class="text-muted">5 days ago</small>-->
<#--                                    </td>-->
<#--                                </tr>-->
<#--                                <tr>-->
<#--                                    <td width="10">-->
<#--                                        <div class="avatar-img">-->
<#--                                            <img class="img-circle" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxhcCYW4QDWMOjOuUTxOd50KcJvK-rop9qE9zRltSbVS_bO-cfWA" />  -->
<#--                                        </div>-->

<#--                                    </td>-->
<#--                                    <td class="align-middle">-->
<#--                                        Herbert Hoover-->
<#--                                    </td>-->
<#--                                    <td class="align-middle">-->
<#--                                        Builder Sales Agent-->
<#--                                    </td>-->
<#--                                    <td  class="align-middle">-->
<#--                                        Last Login:  6/10/2017<br><small class="text-muted">5 days ago</small>-->
<#--                                    </td>-->
<#--                                </tr>-->
<#--                                <tr>-->
<#--                                    <td width="10">-->
<#--                                        <div class="avatar-img">-->
<#--                                            <img class="img-circle" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxhcCYW4QDWMOjOuUTxOd50KcJvK-rop9qE9zRltSbVS_bO-cfWA" />  -->
<#--                                        </div>-->

<#--                                    </td>-->
<#--                                    <td class="align-middle">-->
<#--                                        Herbert Hoover-->
<#--                                    </td>-->
<#--                                    <td class="align-middle">-->
<#--                                        Builder Sales Agent-->
<#--                                    </td>-->
<#--                                    <td  class="align-middle">-->
<#--                                        Last Login:  6/10/2017<br><small class="text-muted">5 days ago</small>-->
<#--                                    </td>-->
<#--                                </tr>-->
                            </#list>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>