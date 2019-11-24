# EZ Pizza
Backend do site de pedidos de pizza para a matéria optativa de desenvolvimento web.

## Instalação

### Docker
`docker-compose build` `docker-compose up` `docker-compose run app rake db:setup`
Interface: http://localhost:3000/graphiql

## Estrutura do banco

![Diagrama banco de dados](https://i.imgur.com/8DfMqgt.png)

## Exemplo de query

```
query {
  pedidos {
    id
    email
    endereco
    sabores {
      nome
      ingredientes
    }
    tamanho {
      nome
    }
    borda {
      nome
    }
  }
}
```

## Exemplo de mutação
```
mutation {
  createPedido(
    email: "comprador@exemplo.com",
    endereco: "R: Beira Rio, nº 2000",
    tamanho: 1,
    sabores: [1, 2],
    borda: 1
  ) {
    id
    email
    endereco
    sabores {
      nome
      ingredientes
    }
    tamanho {
      nome
    }
    borda {
      nome
    }
  }
}
```
