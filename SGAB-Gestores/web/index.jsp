<!doctype html>
<html class="no-js" lang="">

<head>
  <meta charset="utf-8">
  <title>SGAB | PÃ¡gina do Gerente</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta property="og:title" content="">
  <meta property="og:type" content="">
  <meta property="og:url" content="">
  <meta property="og:image" content="">

  <link rel="manifest" href="site.webmanifest">
  <link rel="apple-touch-icon" href="icon.png">


  <link rel="stylesheet" href="../css/normalize.css">
  <link rel="stylesheet" href="../css/main.css">
  <link rel="stylesheet" href="../css/styles.css">

  <meta name="theme-color" content="#fafafa">
</head>

<body>
  <header>
    <div id="pagina-inicial">
      <a href="" title="PÃ¡gina Inicial">SGAB</a>
    </div>
    <div id="logo-topo">
      <a href="https://www.cefetmg.br/" target="_blank" title="Centro Federal de EducaÃ§Ã£o TecnolÃ³gica de Minas Gerais">
        <img src="../img/logo_topo.png" alt="Centro Federal de EducaÃ§Ã£o TecnolÃ³gica de Minas Gerais">
      </a>
    </div>
  </header>

  <main>
    <section id="nome-form">
      <h1>PÃ¡gina do Gerente</h1>
    </section>

    <section>
      <div class="caixa-gestao">
        <h2>OperaÃ§Ãµes de BibliotecÃ¡rios</h2>
        <button class="button-gestao" onclick="abreFormCadastro()">Cadastrar bibliotecÃ¡rio</button>
        <button class="button-gestao" onclick="abreFormHabilitacao()">Habilitar bibliotecÃ¡rio</button>
        <button class="button-gestao" onclick="abreFormEditar()">Editar bibliotecÃ¡rio</button>
        <button class="button-gestao" onclick="abreFormDesativar()">Desativar bibliotecÃ¡rio</button>
      </div>
      <br>
      <div class="caixa-gestao">
        <h2>OperaÃ§Ãµes de Gerenciamento</h2>
        <button class="button-gestao" onclick="abreFormCadastro()">Cadastrar gerente</button>
        <button class="button-gestao" onclick="abreFormHabilitacao()">Habilitar gerente</button>
        <button class="button-gestao" onclick="abreFormEditar()">Editar gerente</button>
        <button class="button-gestao" onclick="abreFormDesativar()">Desativar gerente</button>
      </div>
      <br>
      <div class="caixa-gestao">
        <h2>OperaÃ§Ãµes de RestauraÃ§Ã£o</h2>
        <button class="button-gestao" onclick="abreFormRestauracao()">Enviar para RestauraÃ§Ã£o</button>
      </div>
    </section>

    <!-- FormulÃ¡rios Pop-up -->

    <!-- Form de cadastro -->
    <div class="form-popup" id="formCadastro">
      <div class="close-btn" onclick="fechaFormCadastro()">&times;</div>
      <form class="form-container" action="ServletBibliotecarios" method="POST">
        <h2> Cadastrar BibliotecÃ¡rios</h2>
        <div>
          <label>Nome do BibliotecÃ¡rio: <input type="text" placeholder="Nome do bibliotecÃ¡rio:" name="inputNomeBibliotecarioCadastrar" required></label>

          <label>Email do BibliotecÃ¡rio: <input type="email" placeholder="Email do bibliotecÃ¡rio:" name="inputEmailBibliotecarioCadastrar" required></label>

          <label>Senha do BibliotecÃ¡rio: <input type="password" placeholder="Senha do bibliotecÃ¡rio:" name="inputSenhaBibliotecarioCadastrar" required></label>

          <label>ConfirmaÃ§Ã£o: <input type="password" placeholder="Senha do gerente" name="adminpsw" required></label>

          <button type="submit" class="button-form">Enviar</button>
        </div>
      </form>
    </div>

    <!-- Form de habilitar bibliotecÃ¡rio -->
    <div class="form-popup" id="formHabilitacao">
      <div class="close-btn" onclick="fechaFormHabilitacao()">&times;</div>
      <form class="form-container" action="ServletBibliotecarios" method="POST">
        <h2> Habilitar bibliotecÃ¡rio:</h2>
        <div>
          <label>IdentificaÃ§Ã£o do BibliotecÃ¡rio: <input type="number" placeholder="IdentificaÃ§Ã£o do BibliotecÃ¡rio" name="inputIdentBibliotecarioHabilitar" required></label>

          <label>Email: <input type="email" placeholder="Email do bibliotecÃ¡rio:" name="inputEmailBibliotecarioHabilitar" required></label>

          <label>ConfirmaÃ§Ã£o: <input type="password" placeholder="Senha do gerente" name="adminpsw" required></label>

          <button type="submit" class="button-form">Enviar</button>
        </div>
      </form>
    </div>

    <!-- Form de editar bibliotecÃ¡rio -->
    <div class="form-popup" id="formEdicao">
      <div class="close-btn" onclick="fechaFormEditar()">&times;</div>
      <form class="form-container" action="ServletBibliotecarios" method="POST">
        <h2> Editar bibliotecÃ¡rio:</h2>
        <div>
          <label>IdentificaÃ§Ã£o do BibliotecÃ¡rio:  <input type="number" placeholder="IdentificaÃ§Ã£o do BibliotecÃ¡rio" name="inputIdentBibliotecarioEditar" required></label>

          <label>Email: <input type="email" placeholder="Email do bibliotecÃ¡rio" name="inputEmailBibliotecarioEditar" required></label>

          <label>ConfirmaÃ§Ã£o: <input type="password" placeholder="Senha do gerente" name="adminpsw" required></label>

          <button type="submit" class="button-form">Enviar</button>
        </div>
      </form>
    </div>

    <div class="form-popup" id="formEdicaoConfirmada">
      <div class="close-btn" onclick="fechaFormEdicaoConfirmada()">&times;</div>
      <form class="form-container" action="ServletBibliotecarios" method="POST">
        <h2> Editar bibliotecÃ¡rio</h2>
        <div>
          <label>IdentificaÃ§Ã£o do BibliotecÃ¡rio: <input type="number" placeholder="IdentificaÃ§Ã£o do BibliotecÃ¡rio" name="inputIdentBibliotecarioEditConfir"></label>

          <label>Email:  <input type="email" placeholder="Email do bibliotecÃ¡rio" name="inputEmailBibliotecarioEditConfir"></label>

          <label>Nascimento: <input type="date" name="inputNascBibliotecarioEditConfir"></label>

          <label> AfiliaÃ§Ã£o: <input type="text" placeholder="Local de afiliaÃ§Ã£o" name="inputAfiliBibliotecarioEditConfir"></label>

          <label>ConfirmaÃ§Ã£o: <input type="password" placeholder="Senha do gerente" name="adminpsw"></label>

          <button type="submit" class="button-form">Enviar</button>
        </div>
      </form>
    </div>

    <!-- Form de desativar bibliotecÃ¡rio -->
    <div class="form-popup" id="formDesativacao">
      <div class="close-btn" onclick="fechaFormDesativar()">&times;</div>
      <form class="form-container" action="ServletBibliotecarios" method="POST">
        <h2> Desativar BibliotecÃ¡rio</h2>
        <div>
          <label>IdentificaÃ§Ã£o do BibliotecÃ¡rio: <input type="number" placeholder="IdentificaÃ§Ã£o do BibliotecÃ¡rio" name="inputIdentBibliotecarioDesativar" required></label>

          <label>Email: <input type="email" placeholder="Email do bibliotecÃ¡rio:" name="inputEmailBibliotecarioDesativar" required></label>

          <label>ConfirmaÃ§Ã£o: <input type="password" placeholder="Senha do gerente" name="adminpsw" required></label>

          <button type="submit" class="button-form">Enviar</button>
        </div>
      </form>
    </div>

    <!-- FormulÃ¡rios Pop-up -->

    <!-- Form de cadastro -->
    <div class="form-popup" id="formCadastro">
      <div class="close-btn" onclick="fechaFormCadastro()">&times;</div>
      <form class="form-container" action="ServletAtendentes" method="POST">
        <h2> Cadastrar Gerente</h2>
        <div>
          <label>Nome do Gerente: <input type="text" placeholder="Nome do gerente" name="inputNomeGerenteCadastrar" required></label>

          <label>Email do Gerente: <input type="email" placeholder="Email do gerente" name="inputEmailGerenteCadastrar" required></label>

          <label>Senha do Gerente: <input type="password" placeholder="Senha do gerente" name="inputSenhaGerenteCadastrar" required></label>

          <label>ConfirmaÃ§Ã£o: <input type="password" placeholder="Senha do gerente" name="adminpsw" required></label>

          <button type="submit" class="button-form">Enviar</button>
        </div>
      </form>
    </div>

    <!-- Form de habilitar gerente -->
    <div class="form-popup" id="formHabilitacao">
      <div class="close-btn" onclick="fechaFormHabilitacao()">&times;</div>
      <form class="form-container" action="ServletAtendentes" method="POST">
        <h2> Habilitar Gerente</h2>
        <div>
          <label>IdentificaÃ§Ã£o do Gerente: <input type="number" placeholder="IdentificaÃ§Ã£o do gerente" name="inputIdentGerenteHabilitar" required></label>

          <label>Email: <input type="email" placeholder="Email do gerente" name="inputEmailGerenteHabilitar" required></label>

          <label>ConfirmaÃ§Ã£o: <input type="password" placeholder="Senha do gerente" name="adminpsw" required></label>

          <button type="submit" class="button-form">Enviar</button>
        </div>
      </form>
    </div>

    <!-- Form de editar atendente -->
    <div class="form-popup" id="formEdicao">
      <div class="close-btn" onclick="fechaFormEditar()">&times;</div>
      <form class="form-container" action="ServletAtendentes" method="POST">
        <h2> Editar Gerente</h2>
        <div>
          <label>IdentificaÃ§Ã£o do Gerente:  <input type="number" placeholder="IdentificaÃ§Ã£o do atendente" name="inputIdentGerenteEditar" required></label>

          <label>Email: <input type="email" placeholder="Email do gerente" name="inputEmailGerenteEditar" required></label>

          <label>ConfirmaÃ§Ã£o: <input type="password" placeholder="Senha do gerente" name="adminpsw" required></label>

          <button type="submit" class="button-form">Enviar</button>
        </div>
      </form>
    </div>

    <div class="form-popup" id="formEdicaoConfirmada">
      <div class="close-btn" onclick="fechaFormEdicaoConfirmada()">&times;</div>
      <form class="form-container" action="ServletAtendentes" method="POST">
        <h2> Editar Gerente</h2>
        <div>
          <label>IdentificaÃ§Ã£o do Gerente: <input type="number" placeholder="IdentificaÃ§Ã£o do atendente" name="inputIdentGerenteEditConfir"></label>

          <label>Email:  <input type="email" placeholder="Email do gerente" name="inputEmailGerenteEditConfir"></label>

          <label>Nascimento: <input type="date" name="inputNascGerenteEditConfir"></label>

          <label> AfiliaÃ§Ã£o: <input type="text" placeholder="Local de afiliaÃ§Ã£o" name="inputAfiliGerenteEditConfir"></label>

          <label>ConfirmaÃ§Ã£o: <input type="password" placeholder="Senha do gerente" name="adminpsw"></label>

          <button type="submit" class="button-form">Enviar</button>
        </div>
      </form>
    </div>

    <!-- Form de desativar atendente -->
    <div class="form-popup" id="formDesativacao">
      <div class="close-btn" onclick="fechaFormDesativar()">&times;</div>
      <form class="form-container" action="ServletAtendentes" method="POST">
        <h2> Desativar Gerente</h2>
        <div>
          <label>IdentificaÃ§Ã£o do Gerente <input type="number" placeholder="IdentificaÃ§Ã£o do atendente" name="inputIdentGerenteDesativar" required></label>

          <label>Email: <input type="email" placeholder="Email do gerente" name="inputEmailGerenteDesativar" required></label>

          <label>ConfirmaÃ§Ã£o: <input type="password" placeholder="Senha do gerente" name="adminpsw" required></label>

          <button type="submit" class="button-form">Enviar</button>
        </div>
      </form>
    </div>

    <!-- Form de envio para restauraÃ§Ã£o -->
    <div class="form-popup" id="formRestauracao">
      <div class="close-btn" onclick="fechaFormRestauracao()">&times;</div>
      <form class="form-container">
        <h2> RestauraÃ§Ã£o de Livros</h2>
        <div>
          <label>IdentificaÃ§Ã£o do Livro: <input type="number" placeholder="IdentificaÃ§Ã£o do Livro" name="ID" required></label>

          <label> Data de Envio: <input type="date"></label>

          <label>ConfirmaÃ§Ã£o:  <input type="password" placeholder="Senha do Gerente" name="adminpsw" required></label>

          <button type="submit" class="button-form">Enviar</button>
        </div>
      </form>
    </div>
    
    <!-- Form do botÃ£o de biblioteca -->
    <form>
        <div> 
        <button onclick=" ">Biblioteca</button>
        </div>
    </form>
    
    <!-- Form do botÃ£o de Unidades Organizacionais -->
    <form>
        <div> 
        <button onclick=" ">Unidades Organizacionais</button>
        </div>
    </form>
    
  </main>

  <footer>
    <p>SGAB - Sistema de GestÃ£o de Acervo BibliogrÃ¡fico</p>
  </footer>

  <!-- JS -->
  <script src="../js/vendor/modernizr-3.11.2.min.js"></script>
  <script src="../js/plugins.js"></script>
  <script src="../js/script.js"></script>

</body>

</html>



