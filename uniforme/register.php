
<?php
include_once('config.php');

// Checkar conexão
if ($conexao->connect_error) {
    die("Erro de conexão com o banco de dados: " . $conexao->connect_error);
}

// Receber dados do formulário
if (isset($_POST['nome'])  && isset($_POST['email']) && isset($_POST['senha'])) {
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $senha = $_POST['senha'];
} else {
    echo "Erro: Dados do formulário não enviados corretamente.";
}

// Verificar se o e-mail já existe
$sql_verifica_email = "SELECT COUNT(*) FROM usuarios WHERE email = '$email'";
$resultado_verifica = $conexao->query($sql_verifica_email);

if ($resultado_verifica->fetch_row()[0] > 0) {
    echo "Erro: E-mail já cadastrado. Tente outro e-mail.";
} else {
    // Se o e-mail não existir, prosseguir com a inserção
    $sql = "INSERT INTO usuarios (nome, email, senha) VALUES ('$nome', '$email', '$senha')";

    if ($conexao->query($sql) === TRUE) {
        echo "Usuário cadastrado com sucesso!";
    } else {
        echo "Erro ao cadastrar o usuário: " . $conexao->error;
    }
}
$conexao->close();

    
?>




<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Criar Conta - UniForme</title>
    <link rel="stylesheet" href="style3.css">
</head>
<body>
    <header>
        <h1>Criar Conta</h1>
    </header>
    <main>
        <div class="container">
            <div class="auth-box">
                <h2>Preencha seus dados</h2>
                <form action="uniforme3.php" method="post">
                    <div class="form-group">
                        <label for="nome">Nome:</label>
                        <input type="text" id="nome" name="nome" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="senha">Senha:</label>
                        <input type="password" id="senha" name="senha" required>
                    </div>
                    <button type="submit">Registrar</button>
                    <a href="uniforme3.php"> <button onclick="window.location.href='uniforme5.php'">Criar Conta</button>
                    
                </form>
            </div>
        </div>
    </main>
</body>
</html>

