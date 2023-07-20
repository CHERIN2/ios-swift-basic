import Foundation

extension Calculator { // extension 확장자로 전에 있던 context 안에 있던 계산식에 접근 가능하게 해줌
    func divide() -> Double {
        guard secondNumber != 0 else {
            print("0으로는 계산할 수 없어요.")
            return 0
        } // 나누기로 나눌때 0이 되면 수학적으로 계산이 불가능하므로, 0이 되면 계산 불가능하게 하고 문자를 출력하게 함
        return firstNumber / secondNumber
    } // 나눗셈 정의
}
