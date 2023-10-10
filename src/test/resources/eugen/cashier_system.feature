Feature: Cashier function that adds products to a cart and display the total price test change named

  Scenario: As a client user I want to add products to my cart and see the total price added test change
    Given a client user on the dashboard page of the application
    When a client adds a product to the cart
    Then the product is added to his card
    And the special rules at the given moment are applied
    And the total price show the right amount of money, taking in consideration the discounts from the special rules


    Scenario Outline: As a client user I want to see that the special "FreeRule" rule is applied to my order
      Given a client user on the dashboard page of the application
      When client user adds to cart the "<quantity>" units of "<product>" having the code "<code>"
      Then the client see that in his cart there are twice the "<quantity>" of product
      And total price is computed as "<quantity>" times "<price>"

      Examples: Products
        | quantity |code | product     | price |
        |2         |GR1  |Green Tea    | £3.11 |
        |3         |SR1  |Strawberries | £5.00 |
        |5         |CF1  |Coffee       |£11.23 |

    Scenario Outline: As a client user I want to see that the special "ReducedPriceRule" rule is applied to my order
      Given a client user on the dashboard page of the application
      When client adds to cart a number of "<M>" units of "<product>", more or equal than "<N>" units
      Then the client sees in his cart that instead of the original price "<original_price>" per unit of "<product>" he has to pay a new price "<X>" per unit
      And total price is computed as "<M>" times "<X>"

      Examples: Products
      | N | product   | original_price | X    | M |
      | 3 | Green Tea | £3.11          |£2.55 |6  |
      |100| Green Tea | £3.11          |£30   |101|
      |1  | Coffee    |£11.23          |£100  |1  |

    Scenario Outline: As a client user I want to see that the special "FractionPriceRule" rule is applied to my order
      Given a client user on the dashboard page of the application
      When client adds to cart a number of "<M>" units of "<product>", more or equal than "<N>" units
      Then the client sees in his cart that instead of the original price "<original_price>" per unit of "<product>" he has to pay a new price which is "<X>" percentage of the original price "<original_price>"
      And total price is computed as "<M>" times "<X>"

      Examples: Products
        | N | product   | original_price | X    | M |
        | 3 | Green Tea | £3.11          | 75   |6  |
        |100| Green Tea | £3.11          | 50   |101|
        |1  | Coffee    |£11.23          | 120  |1  |

  Scenario Outline: As an admin user I want to change the location of the files where the products and the rules can be found
    Given an admin user is on the configuration page
    When the admin user changes the original file path "<original_file_path>" for "<entity>"
    Then the application is reloaded and use the "<entity>" that can be found at the new location "<new_file_path>"

    Examples: Configurations
    | entity   | original_file_path       | new_file_path                         |
    | rules    | priv/assets/rules.yml    | priv/assets/new_rules/rules.yml       |
    | products | priv/assets/products.yml | priv/assets/new_products/products.yml |
    | products | priv/assets/products.yml | /                                     |
    | products | priv/assets/products.yml | sss                                   |
    | products | priv/assets/products.yml | priv/assets/aaaaaaaaaaaaaaaa/veeeeeeeeeeeeeeeeeeerrryyyyyyyyyyy/looooooooooooooooooooooooooonggggggggggg/paaaaaaaaaaaaaaaaaaattttttttttttttttttttttttttttttttthhhhhhhhhhhhhhhhhhhhhhh/products.yml|