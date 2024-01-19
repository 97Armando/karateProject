Feature: Test on regress.in

Background:
* url 'https://petstore.swagger.io/'

Scenario: CREAR UN USUARIO NUEVO
* def user =
"""
      {
          "id": 0,
          "username": "arm997",
          "firstName": "Armando",
          "lastName": "Maldonado",
          "email": "testbrumi@gmail.com",
          "password": "test",
          "phone": "0989849189",
          "userStatus": 1

      }
      """

Given url 'https://petstore.swagger.io/v2/user'
And request user
When method post
Then status 200


Scenario: OBTENER EL USUARIO CREADO MEDIANTE ID
Given url 'https://petstore.swagger.io/v2/user/666'
When method get
Then status 200


Scenario: ACTUALIZAR USUARIO
* def user =
"""
      {
          "id": 666,
          "username": "arm997",
          "firstName": "TEST",
          "lastName": "UPDATE",
          "email": "testUpdate@gmail.com",
          "password": "test",
          "phone": "0989849189",
          "userStatus": 0
      }
      """

Given url 'https://petstore.swagger.io/v2/user/666'
And request user
When method put
Then status 200


Scenario: OBTENER USUARIO ACTUALIZADO POR ID
      Given url 'https://petstore.swagger.io/v2/user/666'
      When method get
      Then status 200

Scenario: ELIMINAR USUARIO CREADO CON ID
Given url 'https://petstore.swagger.io/v2/user/666'
When method delete
Then status 200
When method get
Then status 200