<p align="right">
  <a href="README.pt.md">BR</a> - <a href="README.md">US</a>
</p>

# Flutter Fundos Imobiliários

Este é um aplicativo Flutter simples que busca e exibe dados em tempo real de fundos imobiliários brasileiros. O aplicativo utiliza a API do mfinance.com.br para obter informações atualizadas sobre os fundos imobiliários e exibi-las em uma lista. 

## Como usar

1. Clone este repositório.
2. Abra o projeto no seu editor de código preferido.
3. Certifique-se de ter o Flutter SDK instalado e configurado corretamente em seu ambiente de desenvolvimento.
4. Execute o aplicativo em um emulador ou dispositivo físico.

## Estrutura do Código

O código é organizado da seguinte maneira:

- **main.dart**: Este é o ponto de entrada do aplicativo Flutter. Ele define a classe `MyApp`, que é um widget StatelessWidget que define o MaterialApp e define FiisListPage como a página inicial.
  
- **fiis_list_page.dart**: Este arquivo contém a definição da classe `FiisListPage`, que é um StatefulWidget responsável por buscar e exibir dados em tempo real de fundos imobiliários.

- **fetch_fiis.dart**: Este arquivo contém a função `fetchFiis`, que é responsável por fazer a requisição HTTP para a API do mfinance.com.br e retornar os dados dos fundos imobiliários em formato JSON.

## Recursos

- Exibição de dados em tempo real de fundos imobiliários brasileiros.
- Interface simples e intuitiva.
- Atualização automática dos dados.

Sinta-se à vontade para contribuir com melhorias, correções de bugs ou novos recursos para este aplicativo!
