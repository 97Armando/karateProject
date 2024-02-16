Feature: Test on regress.in

Background:
    * url baseURL
    * def createUserRequestFilePath = "jsonpayload/createUser.json"
    * def createUserResponseFilePath = "jsonpayload/createUserResponse.json"
    * def getUserResponseFilePath = "jsonpayload/getUser.json"
    * def updateUserRequestFilePath = "jsonpayload/updateUser.json"
    * def updateUserResponseFilePath = "jsonpayload/updateUserResponse.json"
    * def testUser = 'arm997'
    * def testFirstName = 'Armando'
    * def testLastName = 'Maldonado'
    * def testEmail = 'testbrumi@gmail.com'
    * def testPassword = 'test'
    * def testPhone = '0989849189'
    * def testId = 1789452603
    * def testFirstNameUpdate = 'Update'
    * def testEmailUpdate = 'update@gmail.com'


Scenario: CREAR UN USUARIO
  Given path '/user'
  And def reqBody = read(createUserRequestFilePath)
  And def resBody = read(createUserResponseFilePath)
  And set reqBody
#  Examples:

    | path       | value         |
    | username   | testUser      |
    | firstName  | testFirstName |
    | lastName   | testLastName  |
    | email      | testEmail     |
    | phone      | testPhone     |
    | password   | testPassword  |
    | id         | testId        |
    | userStatus | 1             |
  And request reqBody
  When method POST
  Then status 200
  And match response == resBody
  And print response

Scenario: OBTENER EL USUARIO CREADO
  Given path '/user/'+testUser
  And def resBody = read(getUserResponseFilePath)
  When method GET
  Then status 200
  And match response == resBody
  And match $.username == testUser
  And match $.firstName == testFirstName
  And match $.lastName == testLastName
  And match $.phone == testPhone
  And match $.email == testEmail
  And match $.id == testId
  And print response
#
Scenario: ACTUALIZAR USUARIO
  Given path '/user/'+testUser
  And def reqBody = read(updateUserRequestFilePath)
  And def resBody = read(updateUserResponseFilePath)
  And set reqBody
    | path       | value               |
    | username   | testUser            |
    | firstName  | testFirstNameUpdate |
    | lastName   | testLastName        |
    | email      | testEmailUpdate     |
    | phone      | testPhone           |
    | password   | testPassword        |
    | id         | testId              |
    | userStatus | 1                   |
  And request reqBody
  When method PUT
  Then status 200
  And match response == resBody
  And print response

Scenario: OBTENER EL USUARIO ACTUALIZADO
    Given path '/user/'+testUser
    And def resBody = read(getUserResponseFilePath)
    When method GET
    Then status 200

Scenario: ELIMINAR USUARIO
    Given path '/user/'+testUser
    And def resBody = read(getUserResponseFilePath)
    When method DELETE
    Then status 200
