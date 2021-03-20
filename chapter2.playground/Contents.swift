import UIKit

// MARK: - 기본 명명 규칙 예외 1번
//class let {}
//let self: let = let()
//func var() {}

// MARK: - 기본 명명 규칙 예외 2번
//let hyejin: String = "hyejin"
//let hyejin: String = "test"

// MARK: - 기본 명명 규칙 예외 3번
//let test+: String = "test"
//let -test: String = "test"
//let te*st: String = "test"
//let tes/t: String = "test"

// MARK: - 기본 명명 규칙 예외 4번
//let 123test: Int = 100

// MARK: - 기본 명명 규칙 예외 5번
//let te st: String = "test"

// MARK: - 코드 2-1 문자열 보간법
let name: String = "hyejin"
print("My name is \(name)")
print("test")

// MARK: - 코드 2-2 한 줄 주석
// 한 줄 주석은 이렇게 표현

// MARK: - 코드 2-3 여러 줄 주석
/*
 여러 줄 주석을 시작할 때는 슬래시와 별표를 사용합니다.
 이 줄의 앞에는 별다른 표기가 없지만 이 줄도 주석으로 인식합니다.
 주석을 끝내고 싶을 때는 별표를 먼저 쓰면 됩니다.
 */
/*
 한 줄만 주석을 달아도 무방합니다.
 */

// MARK: - 코드 2-4 중첩 주석
// [TIP] 대부분의 프로그래밍 언어는 중첩 주석을 지원하지 않습니다.
/*
 여러 줄 주석 안쪽에
 /*
 추가로 여러 줄 주석을 포함할 수 있으며
 // 그 안에 한 줄 주석을 추가하여도 무방합니다.
 */
 이 부분도 주석처리 됩니다.
 */

// MARK: - 코드 2-5 퀵헬프를 위한 마크업
/// 오류 타입의 열거형
/// - noName: 이름을 전달받지 못했을 때 발생하는 오류
/// - incorrectAge(age: Int) : 나이가 0세 미만, 150세 초과인 경우 잘못된 나이로 인식하여 오류로 처리
/// - unknown : 알 수 없는 오류
enum HelloError: Error {
    case noName
    case incorrectAge(age: Int)
    case unknown
}

/**
 여기에 작성되는 텍스트는 Description 부분에 표기됩니다.
 
 텍스트 간에 한 줄을 비워놓으면 줄바꿈이 됩니다.
 
 '-', '+', '*'를 사용하여 원형 글머리 기호를 사용할 수 있습니다.
 
 - 이렇게 말이죠
 + 이렇게도 되고요
 * 이렇게도 됩니다
 
 아니면 번호로 글머리 기호를 매겨줄 수도 있습니다.
 
 1. 1번
 2. 2번
 6. 3번
 
 눈치채셨겠지만 앞에 붙는 번호는 크게 중요하지 않습니다. 자동으로 번호를 매겨주죠.
 
 ---
 문단 바꿈
 
 바를 세 개 이상 사용하면 긴 줄로 문단을 나눠줍니다.
 
 ---
 
 언더바 또는 별표를 사용하여 텍스트를 강조할 수 있습니다.
 
 텍스트를 기울이고 싶으면 *A pair of marks*를 사용하여
 
 텍스트를 굵게 표기하고 싶으면 **Two pair of marks**를 사용하면 됩니다.
 
 관련 링크도 넣어줄 수 있습니다.
 [Swift Blog](https://swif.org/blog/)
 
 ---
 등호를 사용하면 바로 위 텍스트를 큰 제목으로 표시해줍니다. 텍스트 앞에 #을 하나 붙여줘도 동일한 효과를 냅니다.
 
큰 제목 표시(등호)
 ==
 
# 큰 제목 표시(#)
 
 바를 사용하면 바로 위 텍스트를 중간 크기 제목으로 표시해줍니다. 텍스트 앞에 #을 두 개 붙여줘도 동일한 효과를 냅니다.
 
 사용 예(바)
 ---
 ## 사용 예(##)
 
 다른 텍스트보다 네 칸 이상 들여쓰기 하면 코드 블록을 만들어줍니다. 또한 강세표(backquote, `)를 세 개 이상 한 쌍으로 묶어도 코드 블록을 만들어 줍니다.
 
     // 코멘트도 넣어줄 수 있다.
     let myName: String = "yagom"
     try helloSwift(myName, yourAge: 100)
 
 ````
 let myName; String = "yagom"
 try helloSwift(myName, yourAge: 100)
 ````
 
 Precondition, Postcondition, Requires, Invariant, Complexity, Important, Warning, Author, Authors, Copyright, Date, SeeAslo, Since, Version, Attention, Bug, Experiment, Note, Remark, ToDo 등의 키워드를 통해 적절한 정보를 제공해보세요.
 - note : 강조하고픈 메모를 노트로 남겨둘 수 있습니다.
 - author : 작성자를 남길 수 있습니다.
 - warning: 주의해야 할 점을 남길 수도 있습니다. *주의: 하등 쓸모없는 함수임.
 
 ---
 > 매개변수와 반환 값 등도 적절히 표기해줄 수 있습니다.
 - parameters:
    - yourName: 당신의 이름.
    - yourAge: 당신의 나이. 0 미만 또는 150을 초과하면 오류 발생
 - Throws: 오류가 발생하면 HelloError의 한 케이스를 throw
 - returns: Hello string
 */
func helloSwift(yourName: String?, yourAge age: Int = 0) throws -> String {
    guard let name: String = yourName else {
        throw HelloError.noName
    }
    if age > 150 {
        throw HelloError.incorrectAge(age: age)
    }
    
    return "Hello Swift! My name is \(name)." + (age > 0 ? " I'm \(age) years old." : "")
}


print(try helloSwift(yourName: "김혜진", yourAge: 23))
print(try helloSwift(yourName: "김혜진", yourAge: 0))
/*
print(try helloSwift(yourName: "김혜진", yourAge: 151)) // incorrectAge error
print(try helloSwift(yourName: nil, yourAge: 23)) // noName error
 */

// MARK: - 코드 2-6 변수의 선언 및 사용
var name_2: String = "hyejin"
var age: Int = 20
var job = "student" // 타입 추론이 사용됨
var height = 157.5 // 변수의 실수 타입에서 타입 추론으로
print(type(of: height)) // Double타입이 지정된다.
age = 23 // 변수이므로 값 변경이 가능
job = "iOS Programmer" // 값 변경 시 같은 타입의 값을 할당해야된다.
print("저의 이름은 \(name_2)이고, 나이는 \(age)세이며, 직업은 \(job)입니다. 또한 키는 \(height)cm입니다.")

// MARK: - 코드 2-7 상수의 선언 및 사용
let name_3: String = "hyejin"
var age_2: Int = 0
var job_2 = "iOS Programmer"
let height_2 = 157.5 // 상수의 실수 타입에서 타입 추론으로
print(type(of: height_2)) // Double타입이 지정된다.
age_2 = 23
job_2 = "student"
print("저의 이름은 \(name_3)이고, 나이는 \(age_2)세이며, 직업은 \(job_2)입니다. 또한 키는 \(height_2)cm입니다.")


// MARK: - 퀵헬프 사용해보기

/// 오류 타입의 열거형이다.
/// - noName : 이름이 없을 경우 발생하는 오류
/// - incorrectNameOfMember(name: String) : 멤버의 이름이 지수, 제니, 로제, 리사가 아니면 오류로 처리
/// - incorrectNumberOfMember(count: Int) : 멤버의 수가 4명이 아니면 오류로 처리
enum customError: Error {
    case noName
    case incorrectNameOfMember(name: String)
    case incorrectNumberOfMember(count: Int)
}

/**
 BLACKPINK
 ==
 ---
 
 **BLACKPINK** 는 2016년 8월 8일에 데뷔한 YG엔터테인먼트 소속 걸그룹이다.
 
 멤버 구성은 지수, 제니, 로제, 리사로 총 4명이다.
 
 ---
 
 - 멤버 소개
 1. 지수
 2. 제니
 3. 로제
 4. 리사
 
 + 역대 타이틀곡
 1. 휘파람
 2. 붐바야
 3. 불장난
 4. STAY
 5. 마지막처럼
 6. 뚜두뚜두 (DDU-DU DDU-DU)
 7. Kill This Love
 8. How You Like That
 9. Ice Cream (with Selena Gomez)
 10. Lovesick Girls
 
 * 수록곡 추천
 1. 휘파람(Acoustic Ver.)
 2. Forever Young
 3. Really
 4. See U Later
 5. Don't Know What To Do
 6. Kick it
 7. 아니길(Hope Not)
 8. Pretty Savage
 9. Bet you Wanna (Feat. Cardi B)
 10. Crazy over you
 11. Love To Hate Me
 12. You Never Know
 
 ---
 
 - Note: I love BLACKPINK
 - author : 김혜진(참새)
 - Since : 2021/03/15
 - parameters:
    - memberName: 블랙핑크 멤버의 이름
    - numberOfMember: 블랙핑크 멤버의 수
 - throws: 오류가 발생하면 customError의 한 케이스를 throw
 - returns: "\\(name)는 ~" String
 
 */
func blackpink(memberName: String?, numberOfMember count: Int = 0) throws -> String {
    guard let name: String = memberName else {
        throw customError.noName
    }
    if name != "지수" && name != "제니" && name != "로제" && name != "리사" {
        throw customError.incorrectNameOfMember(name: name)
    }
    
    if count != 4 {
        throw customError.incorrectNumberOfMember(count: count)
    }
    
    return "\(name)는 BLACKPINK 멤버이며, BLACKPINK는 총 \(count)명이다."
}

print(try blackpink(memberName: "리사", numberOfMember: 4))
print(try blackpink(memberName: "제니", numberOfMember: 4))
print(try blackpink(memberName: "로제", numberOfMember: 4))
print(try blackpink(memberName: "지수", numberOfMember: 4))
/*
print(try blackpink(memberName: "유리", numberOfMember: 4)) // incorrectNameOfMember error
print(try blackpink(memberName: "리사", numberOfMember: 2)) // incorrectNumberOfMember error
print(try blackpink(memberName: nil, numberOfMember: 4)) // noName error
 */
