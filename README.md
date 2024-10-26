# PATO MULTIVERSO API

Este projeto foi criado utilizando Ruby on Rails.

<table>
  <tr>
    <td>Ruby version</td>
    <td>
      3.0.6
    </td>
  </tr>
  <tr>
    <td>Rails version</td>
    <td>
      6.1.7
    </td>
  </tr>
  <tr>
    <td>Database</td>
    <td>
      SQLite
    </td>
  </tr>
</table>

## Instalações necessárias: Linux

```bash
# instalar rbenv para gerenciar diferentes versões do ruby
sudo apt update
sudo apt install -y rbenv

# instalar o plugin ruby-build
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

# instalar ruby na mesma versão do projeto
rbenv install 3.0.6

# definir a versão do ruby para o projeto
rbenv local 3.0.6

# verificar a versão atual do ruby
ruby -v
```

## Instalações necessárias: Windows

```bash
# baixar RubyInstaller 
Site Oficial: https://rubyinstaller.org/downloads/archives/

OBS: escolher a versão (Ruby+Devkit 3.0.6-1)

# vídeo explicando como instalar
Canal Code To Need: https://www.youtube.com/watch?v=ip-49zjoOcI&ab_channel=CodeToNeed

# verificar a versão atual do ruby
ruby -v
```

## Configurações iniciais para executar o projeto

```bash
# instalar Ruby on Rails dependencies
bundle install

# instalar Node dependencies
yarn install / npm install

# Criar os bancos de dados
rails db:create

# Criar as tabelas
rails db:migrate

# Execute o projeto
rails s
```

Abra o navegador no endereço `http://localhost:3001`
