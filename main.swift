
func TestTask() {
//Итоговый массив
var a = [Int]()
//Вспомогательный массив для проверки, что все массивы имеют разную длину. Его элементы длины массивов.
var b = [Int]()
print("Кол-во массивов - натуральное число, ( n > 0 )")
print("Введите число n:")
let num = readLine()
let n = Int(num!)
if Int(n!) > 0 {
for i in 1...Int(n!) {
let k = Int.random(in: 1..<10)
var mas = (1...k).map( {_ in Int.random(in: 1...100)} )
    let len = mas.count
    b.append(len)
    for i in 0..<b.count-1{
        for j in i+1..<b.count{
            if b[i] == b[j] {
            print("Длины массивов совпадают - завершение программы")
			// прерывание работы программы, если длина следующего массива совпадает с длиной уже существующего массива
            fatalError()
            }
        }
    }
    if i % 2 == 0 {
        print("Массив: ", mas)
        mas.sort(by: <)
        print("Отсортированный массив: ", mas)
        a.append(contentsOf: mas)
    }
    else {
        print("Массив: ", mas)
        mas.sort(by: >)
        print("Отсортированный массив: ", mas)
        a.append(contentsOf: mas)
    }
}
    print("Массив с отсортированными массивами: ",a)
}
}

TestTask()


