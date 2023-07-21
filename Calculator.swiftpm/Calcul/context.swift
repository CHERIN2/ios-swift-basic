class Calculator {
    var firstNumber: Double
    var secondNumber: Double // 각 숫자 정의
    
    init(firstNumber: Double, secondNumber: Double) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    } // 초기화
    
    func remainder() -> Double {
        guard secondNumber != 0 else {
            print("0으로는 나눌 수 없어요.")
            return 0
        } // 나머지 계산도 마찬가지로 0이 되면 몫을 계산할 수 없으므로 같은 방식으로 정의함
        return firstNumber.truncatingRemainder(dividingBy: secondNumber) // truncatingReminder(dividingBy: _)는 더블로 연산이 불가한 % 수식을 나눌 수 있게 도와주는 프로퍼티임
    } // 나머지 계산 정의
    
    func printResults() {
        print("덧셈 결과: \(addOperation())") // 덧셈 결과 프린트문 정의
        print("뺄셈 결과: \(subtractOperation())") // 뻴셈 결과 프린트문 정의
        print("곱셈 결과: \(multiplyOperation())") // 곱셈 결과 프린트문 정의
        print("나눗셈 결과: \(divideOperation())") // 나눗셈 결과 프린트문 정의
        print("나머지 연산 결과: \(remainder())") // 나머지 계산 결과 프린트문 정의
    }
}

let firstNum: Double = 9
let calculator = Calculator(firstNumber: firstNum, secondNumber: 3) // 게산 전용 데이터 정의

let addResult = addOperation() // 덧셈 결과 정의
let subtractResult = subtractOperation() // 뻴셈 결과 정의
let multiplyResult = multiplyOperation() // 곱셈 결과 정의
let divideResult = divideOperation() // 나눗셈 결과 정의
let remainderResult = String(calculator.remainder()) // 나머지 계산 결과 정의
