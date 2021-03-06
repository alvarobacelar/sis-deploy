<div class="panel panel-primary">
    <div class="panel-heading">
        <h2 class="panel-title">Usuários de Servidores Cadastrados <a href="cadastrarUserServidor.php" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span> Cadastrar Novo</a></h2>
    </div>
    <br>
    {$erroCadastro}
    <div class="table-responsive table-bordered">
        <table class="table">


            {if isset($userR)}                
                <th><center>Usuário</center></th>             
                <th><center>Path tomcat</center></th>
                <th><center>Servidor</center></th>
                <th><center>IP servidor</center></th>
                <th><center>Data cadastro</center></th>
                <th><center>Opção</center></th>
                    {foreach $userR as $u}
                        {if $u->status_usuario_servidor == "1"}
                        <tr class="text-center">                       
                            <td class="active">{$u->nome_usuarios_servidor}</td>                        
                            <td class="active">{$u->path_usuarios_servidor}</td>
                            <td class="info"> {$u->nome_servidor} </td>
                            <td class="active"> {$u->ip_servidor} </td>
                            <td class="active"> {$u->data_usuarios_servidor|date_format:"%d/%m/%Y"} </td>
                            <td class="active">
                                <a href="editarUserServidor.php?idUserServer={$u->id_usuarios_servidor}" class="btn btn-warning btn-xs"> <span class="glyphicon glyphicon-edit"></span> Editar</a>
                                <button type="button" onclick="excluirServidor({$u->id_usuarios_servidor})" class="btn btn-danger btn-xs"> <span class="glyphicon glyphicon-warning-sign"></span> Desativar</button>
                            </td>
                        </tr>
                    {else if $u->status_usuario_servidor != "1"}
                        <tr class="text-center alert-warning disabled" style="color: #ccc;">                       
                            <td class="active">{$u->nome_usuarios_servidor}</td>                        
                            <td class="active">{$u->path_usuarios_servidor}</td>
                            <td class="info"> {$u->nome_servidor} </td>
                            <td class="active"> {$u->ip_servidor} </td>
                            <td class="active"> {$u->data_usuarios_servidor|date_format:"%d/%m/%Y"} </td>
                            <td class="active">
                                <a href="editarUserServidor.php?idUserServer={$u->id_usuarios_servidor}" class="btn btn-warning btn-xs"> <span class="glyphicon glyphicon-edit"></span> Editar</a>
                                <button type="button" onclick="excluirServidor({$u->id_usuarios_servidor})" class="btn btn-danger btn-xs disabled"> <span class="glyphicon glyphicon-warning-sign"></span> Desativar</button>
                            </td>
                        </tr>
                    {/if}
                {/foreach}
            {else}
                <tr class="text-center"><td><h3>Nenhum serrvidor cadastrado</h3></td></tr>
                        {/if}
        </table>
    </div>
    <br />
</div>
<center><a class="btn btn-default" href="javascript:history.back()"><span class="glyphicon glyphicon-circle-arrow-left"></span> Voltar</a></center> 