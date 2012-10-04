{AttributeSetter} = require('./attribute_setter')

class CreditCard extends AttributeSetter
  @CardType =
    AmEx : "American Express"
    CarteBlanche : "Carte Blanche"
    ChinaUnionPay : "China UnionPay"
    DinersClubInternational : "Diners Club"
    Discover : "Discover"
    JCB : "JCB"
    Laser : "Laser"
    Maestro : "Maestro"
    MasterCard : "MasterCard"
    Solo : "Solo"
    Switch : "Switch"
    Visa : "Visa"
    Unknown : "Unknown"
    All : ->
      all = []
      for key, value of @
        all.push value if key isnt 'All'
      all
  @CustomerLocation =
    International : 'international'
    US : 'us'

  @Prepaid =
    Yes : "Yes"
    No : "No"
    Unknown : "Unknown"

  @Commercial =
    Yes : "Yes"
    No : "No"
    Unknown : "Unknown"

  @Payroll =
    Yes : "Yes"
    No : "No"
    Unknown : "Unknown"

  @Healthcare =
    Yes : "Yes"
    No : "No"
    Unknown : "Unknown"

  @DurbinRegulated =
    Yes : "Yes"
    No : "No"
    Unknown : "Unknown"

  @Debit =
    Yes : "Yes"
    No : "No"
    Unknown : "Unknown"

  constructor: (attributes) ->
    super attributes
    @maskedNumber = "#{@bin}******#{@last4}"
    @expirationDate = "#{@expirationMonth}/#{@expirationYear}"

exports.CreditCard = CreditCard
