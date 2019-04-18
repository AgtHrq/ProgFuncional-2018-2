#lang racket

;; questao 1

(define a 42)
a

;;questao 2

(define b 14)
b

;; questao 3

(+ a b)

(- a b)

(+
 a (* 3 b) 7)

(/
 (+ a b) 2)

(sqrt
 (* a b))

(/
 2 (+
    (/ 1 a) (/ 1 b)))

;; questao 4

(define soma-medias (+ (/ (+ a b) 2) (/ 2 (+ (/ 1 a) (/ 1 b)))))
soma-medias

;; questao 5

(if (= soma-medias 49) "teste 1 ok" "teste 1 falhou")

;; questao 6

(define (quadrado a) (* a a))

(quadrado 2)

;; questao 7

(define (delta a b c) (-
                       (* b b) (* 4 a c)))

(define (raiz-positiva a b c) (/
                               (+
                                (- b) (sqrt (delta a b c)))(* 2 a)))

(raiz-positiva 1 (- 5) 6) ;; resposta: 3

;; questao 8

(define (potencia x y) (if (< y 0) (/ (- y) x)(if (= y 0) 1 (* x (potencia x (- y 1))))))

(potencia 2 3)
(potencia 2 2)
(potencia 3 3)
(potencia 3 (- 1))
(potencia 4 (- 2))
