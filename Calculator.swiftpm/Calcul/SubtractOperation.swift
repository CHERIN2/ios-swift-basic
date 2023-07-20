import Foundation

extension Calculator { // extension 확장자로 전에 있던 context 안에 있던 계산식에 접근 가능하게 해줌
    func subtract() -> Double {
        return firstNumber - secondNumber
    } // 뺄셈 정의
}
