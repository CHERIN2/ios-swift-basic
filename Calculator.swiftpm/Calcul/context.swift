class Calculator {
    var firstNumber: Double
    var secondNumber: Double // 각 숫자 정의
    
    init(firstNumber: Double, secondNumber: Double) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    } // 초기화
    
    func add() -> Double {
        return firstNumber + secondNumber
    } // 덧셈 정의
    
    func subtract() -> Double {
        return firstNumber - secondNumber
    } // 뺄셈 정의
    
    func multiply() -> Double {
        return firstNumber * secondNumber
    } // 곱셈 정의
    
    func divide() -> Double {
        guard secondNumber != 0 else {
            print("0으로는 계산할 수 없어요.")
            return 0
        } // 나누기로 나눌때 0이 되면 수학적으로 계산이 불가능하므로, 0이 되면 계산 불가능하게 하고 문자를 출력하게 함
        return firstNumber / secondNumber
    } // 나눗셈 정의
    
    func remainder() -> Double {
        guard secondNumber != 0 else {
            print("0으로는 나눌 수 없어요.")
            return 0
        } // 나머지 계산도 마찬가지로 0이 되면 몫을 계산할 수 없으므로 같은 방식으로 정의함
        return firstNumber.truncatingRemainder(dividingBy: secondNumber) // truncatingReminder(dividingBy: _)는 뭔지 모름
    } // 나머지 계산 정의
    
    func printResults() {
        print("덧셈 결과: \(add())") // 덧셈 결과 프린트문 정의
        print("뺄셈 결과: \(subtract())") // 뻴셈 결과 프린트문 정의
        print("곱셈 결과: \(multiply())") // 곱셈 결과 프린트문 정의
        print("나눗셈 결과: \(divide())") // 나눗셈 결과 프린트문 정의
        print("나머지 연산 결과: \(remainder())") // 나머지 계산 결과 프린트문 정의
    }
}
    
   let firstNum: Double = 9
   let calculator = Calculator(firstNumber: firstNum, secondNumber: 3) // 게산 전용 데이터 정의
//   calculator.printResults()


let addResult = String(calculator.add()) // 덧셈 결과 정의
let subtractResult = String(calculator.subtract()) // 뻴셈 결과 정의
let multiplyResult = String(calculator.multiply()) // 곱셈 결과 정의
let divideResult = String(calculator.divide()) // 나눗셈 결과 정의
let remainderResult = String(calculator.remainder()) // 나머지 계산 결과 정의
