<a href="https://imgflip.com/gif/2kdkml"><img src="https://i.imgflip.com/2kdkml.gif" title=""/></a>

# SBCardValidity
🦑 Swifty Card Validator.


## Installation

### CocoaPods

In your Podfile:

```
pod 'SBCardValidity'
```
Then run `pod install`.

Don't forget to import the framework with `import SBCardValidy`.

## Usage

```
let cardNumber = "4929804463622139"
```

``` Chack validity
let isValid = cardNumber.isValidCardNumber()
```

``` Card type by regular expresion
let cardType = Card.cardType(for: cardNumber)
```

``` Card type by range
let cardTypeByRange = Card.cardTypeByRange(for: cardNumber)
```
