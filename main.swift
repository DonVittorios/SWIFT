//
//  main.swift
//  1l_Denisov_Victor.playground
//
//  Created by Виктор on 19.11.2021.
//

import Foundation

/* Задание 1
 1. Решить квадратное уравнение.
 Само квадратное уравнение: ax^2 + bx + c = 0
 */

print("Решение Задания 1:")

// Присваиваю значения константам
let a: Double = 1 // для проверки результатов можно присвоить еще значения для D==0: 1 и для D < 0: 3
let b: Double = 8 // для проверки результатов можно присвоить еще значения для D==0: 2 и для D < 0: 2
let c: Double = 1 // для проверки результатов можно присвоить еще значения для D==0: 1 и для D < 0: 1

// Присваиваю значения переменным
var x1: Double = 0
var x2: Double = 0
var D: Double = pow(b, 2) - 4 * a * c

/* В зависимости от значения D уравнение может иметь по 2 действительных корня или не иметь действительных корней */

if D > 0 {
    x1 = (-b + sqrt(D)) / (2 * a)
    x2 = (-b - sqrt(D)) / (2 * a)
    print("x1 = \(x1) ; x2 = \(x2)")
} else if D == 0 {
    x1 = (-b + sqrt(D)) / (2 * a)
    print("x1 = x2 = \(x1)")
} else if D < 0 {
    print("Нет действительных корней")
}


/* Задание 2
 2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
 */
print("Решение Задания 2:")

// Присваиваем значения констант катетам
let cathetFirst: Double = 3
let cathetSecond: Double = 5 // кактет выступающий высотой

// Найдем площадь прямоугольно треугольника по формуле S = (катет * высоту) / 2
let square = (cathetFirst * cathetSecond) / 2
print("Площадь треугольника равна: \(square)")

// Найдем гипотенузу по формуле Гипотенуза = корень квадратный из суммы квадратов катетов
let squareOfCathetFirst = cathetFirst * cathetFirst
let squareOfCathetSecond = cathetSecond * cathetSecond
let hypotenuse = sqrt(squareOfCathetFirst + squareOfCathetSecond)
print("Длинна гипотенузы: \(hypotenuse)")

// Найдем периметр треугольника по формуле Р = катет + катет + гипотенуза
let perimeter = cathetFirst + cathetSecond + hypotenuse
print("Периметр треугольника равен: \(perimeter)")

/* Задание 3
 3. * Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
 */
print("Решение Задания 3*:")

// Запрашиваем сумму вклада
print("Введите сумму вклада (числами) в рублях:")
let summa: String? = readLine()
var realSumma: String = ""
    if let correctSumma = summa {
        realSumma = correctSumma
        print("Ваша сумма вклада: \(realSumma) руб.")
        } else {
            print("ОШИБКА!! Введите числовое значение суммы вклада!")
        }

// Запрашиваем процент по вкладу

print("Введите размер годового процента (числами):")

let percent: String? = readLine()
var realPercent: String = ""
    if let correctPercent = percent {
        realPercent = correctPercent
        print("Годовой процент: \(realPercent)%")
        } else {
            print("ОШИБКА !! Введите числовое значение процента!")
        }

// Преобразую строки в число
var realSummaInt: Int = 0
    if let realSummaIn = Int(realSumma) {
    realSummaInt = realSummaIn
    }

var realPercentInt: Int = 0
    if let realPercentIn = Int(realPercent) {
    realPercentInt = realPercentIn
    }

// Считаем сумму вклада через 5 лет
let years = 5
let totalAmount = realSummaInt + (realSummaInt * realPercentInt * years / 100)
print("Сумма вклада за 5 лет: \(totalAmount) руб.")
