import UIKit

// MARK: - 코드 3-1 Int와 UInt
var integer: Int = -100
let unsignedInteger: UInt = 50 // UInt 타입에는 음수값을 할당할 수 없다.
print("integer 값 : \(integer), unsignedInteger 값: \(unsignedInteger)") // 출력 : integer 값 : -100, unsignedInteger 값: 50
print("Int 최댓값: \(Int.max), Int 최솟값: \(Int.min)") // 출력 : Int 최댓값: 9223372036854775807, Int 최솟값: -9223372036854775808
print("UInt 최댓값: \(Int.max), UInt 최댓값: \(UInt.min)") // 출력 : UInt 최댓값: 9223372036854775807, UInt 최댓값: 0

let largeInteger: Int64 = Int64.max
let smallUnsignedInteger: UInt8 = UInt8.max
print("Int64 최댓값: \(largeInteger), UInt8 최댓값: \(smallUnsignedInteger)") // 출력 : Int64 최댓값: 9223372036854775807, UInt8 최댓값: 255

//let tooLarge: Int = Int.max + 1 // Int 표현 범위 초과로 오류 -> 스위프트에서는 오버플로우가 일어나지 않고 오류가 뜸
//let cannotBeNegetive: UInt = -5 // UInt는 음수가 될 수 없으므로 오류

//integer = unsignedInteger // Int와 UInt는 다른 타입이므로 오류
integer = Int(unsignedInteger) // Int 타입의 값으로 할당해줘야됨

// MARK: - 코드 3-2 진수별 정수 표현
let decimalInteger: Int = 28
let binaryInteger: Int = 0b11100 // 2진수로 10진수 28을 표현
let octalInteger: Int = 0o34 // 8진수로 10진수 28을 표현
let hexadecimalInter: Int = 0x1C // 16진수로 10진수 28을 표현

// MARK: - 코드 3-3 Bool
var boolean: Bool = true
boolean.toggle() // true → false로 반전됨
print(boolean) // 출력 : false
let iLoveYou: Bool = true
let isTimeUnlimited: Bool = false
print("시간은 무한합니까?: \(isTimeUnlimited)") // 출력 : 시간은 무한합니까?: false

// MARK: - 코드 3-4 Float과 Double
var floatValue: Float = 1234567890.1
/*
 float은 6자리 숫자까지만 표현 가능하다.
 그래서 위 코드는 표현 범위를 벗어났으므로, float이 감당할 수 있는 만큼만 남겨서 정확도가 떨어진다.
*/
let doubleValue: Double = 1234567890.1 // double은 15자리 숫자까지 표현 가능해서 충분히 수용할 수 있다.
print("floatValue: \(floatValue), doubleValue: \(doubleValue)") // 출력 : floatValue: 1.234568e+09, doubleValue: 1234567890.1

floatValue = 123456.1 // 수용할 수 있는 범위로 변경
print(floatValue) // 출력 : 123456.1
// 변수 또는 상수의 값을 보려면, print 함수의 전달인자로 변수 또는 상수를 전달하면 된다.

// MARK: - 코드 3-5 Character
let alphabetA: Character = "A"
print(alphabetA) // 출력 : A

let commandCharacter: Character = "♥︎" // Character 값에 유니코드 문자도 사용 가능
print(commandCharacter) // 출력 : ♥︎

let 한글변수: Character = "ㄱ" // 한글도 유니코드 문자이므로 변수 이름으로 사용 가능
print("한글의 첫 자음: \(한글변수)") // 출력 : 한글의 첫 자음: ㄱ

// MARK: - 코드 3-6 String
let name: String = "hyejin"
var introduce: String = String() // 이니셜라이저를 사용하여 빈 문자열 생성

// 문자열 이어 붙이기 - 1
introduce.append("제 이름은")

// 문자열 이어 붙이기 - 2
introduce = introduce + " " + name + "입니다."
print(introduce) // 출력 : 제 이름은 hyejin입니다.

// 문자의 수 세기
print("name의 글자수: \(name.count)") // 출력 : name의 글자수: 6

// 빈 문자열인지 확인
print("introduce가 비어있습니까? \(introduce.isEmpty)") // 출력 : introduce가 비어있습니까? false

// 유니코드 스칼라 값을 사용하면, 값에 해당하는 표현이 출력됨
let unicodeScalarValue: String = "\u{2665}"
print(unicodeScalarValue) // 출력 : ♥

// MARK: - 코드 3-7 String 타입의 다양한 기능
// 연산자를 통한 문자열 결합
let hello: String = "Hello"
let hyejin: String = "hyejin"
var greeting: String = hello + " " + hyejin + "!"
print(greeting) // 출력 : Hello hyejin!

greeting = hello
greeting += " "
greeting += hyejin
greeting += "!"
print(greeting) // 출력 : Hello hyejin!

// 연산자를 통한 문자열 비교
var isSameString: Bool = false
isSameString = hello == "Hello"
print(isSameString) // 출력 : true
isSameString = hello == "hello"
print(isSameString) // 출력 : false
isSameString = hyejin == "hyejin"
print(isSameString) // 출력 : true
isSameString = hyejin == hello
print(isSameString) // 출력 : false

// 메서드를 통한 접두어, 접미어 확인
var hasPrefix: Bool = false
hasPrefix = hello.hasPrefix("He")
print(hasPrefix) // 출력 : true
hasPrefix = hello.hasPrefix("HE")
print(hasPrefix) // 출력 : false
hasPrefix = greeting.hasPrefix("Hello ")
print(hasPrefix) // 출력 : true
hasPrefix = hyejin.hasPrefix("jin")
print(hasPrefix) // 출력 : false
hasPrefix = hello.hasPrefix("Hello")
print(hasPrefix) // 출력 : true

var hasSuffix: Bool = false
hasSuffix = hello.hasSuffix("He")
print(hasSuffix) // 출력 : false
hasSuffix = hello.hasSuffix("llo")
print(hasSuffix) // 출력 : true
hasSuffix = hello.hasSuffix("He")
print(hasSuffix) // 출력 : false
hasSuffix = greeting.hasSuffix("hyejin")
print(hasSuffix) // 출력 : false
hasSuffix = greeting.hasSuffix("hyejin!")
print(hasSuffix) // 출력 : true
hasSuffix = hyejin.hasSuffix("jin")
print(hasSuffix) // 출력 : true

// 메서드를 통한 대소문자 변환
var convertedString: String = ""
convertedString = hello.uppercased() // 소문자 → 대문자로 변경
print(convertedString) // 출력 : HELLO

convertedString = hello.lowercased() // 대문자 → 소문자로 변경
print(convertedString) // 출력 : hello

convertedString = hyejin.uppercased()
print(convertedString) // 출력 : HYEJIN

convertedString = greeting.uppercased()
print(convertedString) // 출력 : HELLO HYEJIN!

convertedString = greeting.lowercased()
print(convertedString) // 출력 : hello hyejin!

// 프로퍼티를 통한 빈 문자열 확인
var isEmptyString: Bool = false
isEmptyString = greeting.isEmpty
print(isEmptyString) // 출력 : false

greeting = "안녕"
isEmptyString = greeting.isEmpty
print(isEmptyString) // 출력 : false

greeting = ""
isEmptyString = greeting.isEmpty
print(isEmptyString) // 출력 : true

// 프로퍼티를 이용해 문자열 길이 확인
print(greeting.count) // 출력 : 0

greeting = "안녕하세요"
print(greeting.count) // 출력 : 5

greeting = "안녕!"
print(greeting.count) // 출력 : 3

// 여러 줄 문자열 쓰기
/*
 코드상에서 여러 줄의 문자열을 직접 쓰고 싶다면 큰따옴표 세 개를 사용하면 된다.
 큰따옴표 세 개를 써주고 한 줄을 내려써야한다.
 마지막 줄도 큰따옴표 세 개는 한 줄 내려써야한다.
 */
greeting = """
    안녕하세요 저는 김혜진입니다.
    스위프트 열심히 할게요!
    잘 부탁드려요!
    """

// MARK: - 코드 3-8 문자열 내 특수문자 사용
print("문자열 내부에\n 이런 \"특수문자\"를\t사용하면 \\이런 놀라운 결과를 볼 수 있습니다")
/*
 출력 :
 문자열 내부에
 이런 "특수문자"를    사용하면 \이런 놀라운 결과를 볼 수 있습니다.
 */
print(#"문자열 내부에서 특수문자를 사용하기 싫다면 문자열 앞, 뒤에 #을 붙여주세요"#)
// 출력 : 문자열 내부에서 특수문자를 사용하기 싫다면 문자열 앞, 뒤에 #을 붙여주세요
let number: Int = 100
print(#"특수문자를 사용하지 않을 때도 문자열 보간법을 사용하고 싶다면 이렇게 \#(number) 해보세요"#)
// 출력 : 특수문자를 사용하지 않을 때도 문자열 보간법을 사용하고 싶다면 이렇게 100 해보세요

// MARK: - 코드 3-9 Any
var someVar: Any = "hyejin"
print(someVar) // 출력 : hyejin
someVar = 23
print(someVar) // 출력 : 23
someVar = 23.23
print(someVar) // 출력 : 23.23
