%%% -*- Mode: Scheme -*-
%%%)
#(begin
;;; **********************************************************************
;;; 
;;; Copyright (C) 2002 Heinrich Taube (taube@uiuc.edu) 
;;; 
;;; This program is free software; you can redistribute it and/or
;;; modify it under the terms of the GNU General Public License
;;; as published by the Free Software Foundation; either version 2
;;; of the License, or (at your option) any later version.
;;; 
;;; This program is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;; 
;;; **********************************************************************

;;; $Name:  $
;;; $Revision: 1.6 $
;;; $Date: 2005/11/17 13:29:37 $

;;;
;;; Implementation of the CLTL2 loop macro. The following 
;;; non Rev 5 definitions need to be in effect before the file
;;; is loaded:
;;;
;;; (define-macro (name . args) ...)
;;; (error string)
;;; (gensym string)
;;;

(define-macro (when test . body)
  `(if ,test
       (begin ,@body)))

(define-macro (loop . args)
  (scheme-loop args))

(define-macro (push val sym)
  `(begin (set! ,sym (cons ,val ,sym)) ,sym))

(define-macro (pop sym)
  (let ((v (gensym "v")))
    `(let ((,v (car ,sym)))
       (set! ,sym (cdr ,sym))
       ,v)))

;;; this next one is a no-op but i need it as a marker for my cltl2
;;; translator.

(define-macro (function sym) sym)     

;;; getters and setters for the loop-clause "struct"

(define (loop-operator c)          (vector-ref  c 0))
(define (loop-operator-set! c x)   (vector-set! c 0 x))
(define (loop-bindings c)          (vector-ref  c 1))
(define (loop-bindings-set! c x)   (vector-set! c 1 x))
(define (loop-collectors c)        (vector-ref  c 2))
(define (loop-collectors-set! c x) (vector-set! c 2 x))
(define (loop-initially c)         (vector-ref  c 3))
(define (loop-initially-set! c x)  (vector-set! c 3 x))
(define (loop-end-tests c)         (vector-ref  c 4))
(define (loop-end-tests-set! c x)  (vector-set! c 4 x))
(define (loop-looping c)           (vector-ref  c 5))
(define (loop-looping-set! c x)    (vector-set! c 5 x))
(define (loop-stepping c)          (vector-ref  c 6))
(define (loop-stepping-set! c x)   (vector-set! c 6 x))
(define (loop-finally c)           (vector-ref  c 7))
(define (loop-finally-set! c x)    (vector-set! c 7 x))
(define (loop-returning c)         (vector-ref  c 8))
(define (loop-returning-set! c x)  (vector-set! c 8 x))

(define (make-loop-clause . args)
  (let ((v (vector #f '() '() '() '() '() '() '() '())))
    (if (null? args) v
	(do ((a args (cddr a)))
	    ((null? a) v)
	  (case (car a)
	    ((operator) (loop-operator-set! v (cadr a)))
	    ((bindings) (loop-bindings-set! v (cadr a)))
	    ((collectors) (loop-collectors-set! v (cadr a)))
	    ((initially) (loop-initially-set! v (cadr a)))
	    ((end-tests) (loop-end-tests-set! v (cadr a)))
	    ((looping) (loop-looping-set! v (cadr a)))
	    ((stepping) (loop-stepping-set! v (cadr a)))
	    ((finally) (loop-finally-set! v (cadr a)))
	    ((returning) (loop-returning-set! v (cadr a))))))))

(define (gather-clauses caller clauses)
  ;; nconc all clausal expressions into one structure
  (let ((gather-clause 
	 (lambda (clauses accessor)
	   ;; append data from clauses
	   (do ((l '()))
	       ((null? clauses) l)
	     (set! l (append l (accessor (car clauses))))
	     (set! clauses (cdr clauses))))))
    (make-loop-clause 'operator caller
		      'bindings
                      (gather-clause clauses 
                                     (function loop-bindings))
		      'collectors
                      (gather-clause clauses 
                                     (function loop-collectors))
		      'initially 
                      (gather-clause clauses 
                                     (function loop-initially))
		      'end-tests 
                      (gather-clause clauses 
                                     (function loop-end-tests))
		      'looping 
                      (gather-clause clauses 
                                     (function loop-looping))
		      'stepping 
                      (gather-clause clauses 
                                     (function loop-stepping))
		      'finally 
                      (gather-clause clauses
                                     (function loop-finally))
		      'returning 
                      (gather-clause clauses
                                     (function loop-returning)))))

(define (loop-op? x ops)
  (assoc x ops))

(define (loop-variable? x)
  (symbol? x))

(define (make-binding var val)
  (list var val))

(define (loop-error ops forms . args)
  ;; all error messages include error context.
  (let ((loop-context
	 (lambda (lst ops)
	   ;; return tail of expr up to next op in cdr of tail
	   (do ((h lst)
		(l '()))
	       ((or (null? lst)
		    ;; ignore op if in front.
		    (and (not (eq? h lst))
			 (loop-op? (car lst) ops)))
		(reverse l))
	     (set! l (cons (car lst) l))
	     (set! lst (cdr lst))))))
    (let ((forms (loop-context forms ops)))
      (newline)
      (display "LOOP ERROR: ")
      (do ((tail args (cdr tail)))
	  ((null? tail) #f)
	(display (car tail)))
      (newline)
      (display "clause context: ")
      (if (null? forms) 
	(display "()")
	(do ((tail forms (cdr tail)))
	    ((null? tail) #f)
	  (if (eq? tail forms) (display "'"))
	  (display (car tail))
	  (display (if (null? (cdr tail)) "'" " "))))
      (newline)
      (error "illegal loop syntax"))))

(define (parse-for forms clauses ops)
  ;; forms is (FOR ...)
  (let ((op (loop-op? (car forms) ops)))
    (if (null? (cdr forms))
      (loop-error ops forms "Variable expected but source code ran out." )
      (let ((var (cadr forms)))
        (if (loop-variable? var)
          (if (null? (cddr forms))
            (loop-error ops forms
                     "'for' clause expected but source code ran out.")
            ;; find the iteration path in the op
            (let ((path (assoc (caddr forms) (cdddr op))))
              ;; path is (<pathop> <parser>)
              (if (not path)
                (loop-error ops forms "'" (caddr forms) "'"
			    " is not valid with 'for'.")
                ( (cadr path) forms clauses ops))))
          (loop-error ops forms "Found '" (cadr forms)
		      "' where a variable expected."))))))

(define (parse-numerical-for forms clauses ops)
  ;; forms is (FOR <var> <OP> ...)
  ;; where <OP> is guaranteed to be one of: FROM TO BELOW ABOVE DOWNTO
  clauses
  (let ((var (cadr forms))
        (tail (cddr forms))
        (bind '())
        (from #f)
        (head #f)
        (last #f)
        (stop #f)
        (step #f)
        (test #f)
        (incr #f))
    
    (do ((next #f))
        ((or (null? tail) (loop-op? (car tail) ops)))
      (set! next (pop tail))
      (if (null? tail)
        (loop-error ops forms
		    "Expected expression but source code ran out."))
      (case next
        ((from downfrom)
         (if head (loop-error ops forms "Found '" next "' when '"
			      head "' in effect."))
         (set! head next)
         (set! from (pop tail)))
        ((below)
         (if last (loop-error ops forms "Found '" next "' when '"
			      last "' in effect."))
         (set! stop (pop tail))
         (set! last next))
        ((to)
         (if last (loop-error ops forms "Found '" next "' when '"
			      last "' in effect."))
         (set! stop (pop tail) )
         (set! last next))
        ((above )
         (if last (loop-error ops forms "Found '" next "' when '"
			      last "' in effect."))
         (set! stop (pop tail))
         (set! last next))
        ((downto )
         (if last (loop-error ops forms "Found '" next "' when '"
			      last "' in effect."))
         (set! stop (pop tail))
         (set! last next))
        ((by)
         (if step (loop-error ops forms "Found duplicate 'by'."))
         (set! step (pop tail)))
        (else
         (loop-error ops forms 
		     "'" next "' is not valid with 'for'."))))
    (if (not head)
      (set! head 'from))
    (if (or (eq? head 'downfrom)
            (eq? last 'downto)
            (eq? last 'above))
      (begin
       (set! incr '-)
       (if (eq? last 'above)
         (set! test '<=)
         (set! test '<)))   ; allow to for downto
      (begin
       (set! incr '+)
       (if (eq? last 'below)
         (set! test '>=)
         (set! test '>))))
    
    ;; add binding for initial value
    (push (make-binding var (or from 0)) bind)
    ;; add binding for non-constant stepping values.
    (if (not step)
      (set! step 1)
      (if (not (number? step))
        (let ((var (gensym "v")))
          (push (make-binding var step) bind)
          (set! step var))))
    (set! step `(set! ,var (,incr ,var ,step)))
    (if stop
      (let ((end (gensym "v")))
        (push (make-binding end stop) bind)
        (set! stop (list test var end))))
    (values (make-loop-clause 'operator 'for
			      'bindings (reverse bind)
			      'stepping (list step)
			      'end-tests (if (not stop)
					   '() (list stop)))
            tail)))

(define (parse-repeat forms clauses ops)
  ;; forms is (REPEAT <FORM> ...)
  (if (null? (cdr forms))
    (loop-error ops forms 
		"'repeat' clause expected but source code ran out." )
    (call-with-values (lambda ()
			(parse-numerical-for 
			 (list 'for (gensym "v") 'below (cadr forms))
			 clauses ops))
		      (lambda (clause ignore)
                        ignore
			(values clause (cddr forms))))))

(define (parse-sequence-iteration forms clauses ops)
  ;; tail is (FOR <var> <OP> ...)
  ;; <OP> is guaranteed to be one of: IN ON ACROSS
  clauses
  (let ((head forms)
        (var (cadr forms))
        (seq (gensym "v"))
        (tail (cddr forms))
        (bind '())
        (data #f) 
        (init '()) 
        (loop '()) 
        (incr #f)
        (stop '()) 
        (step '()) 
        (type #f))
    
    (do ((next #f))
        ((or (null? tail) (loop-op? (car tail) ops)))
      (set! next (pop tail))
      (when (null? tail)
        (loop-error ops head
		    "Expression expected but source code ran out." ))
      (case next
        ((in on across)
         (if type (loop-error ops head 
			      "Extraneous '" next "' when '"
			      type "' in effect."))
         (set! type next)
         (set! data (pop tail)))
        ((by )
         (if incr 
           (loop-error ops head "Duplicate 'by'." )
           (if (eq? type 'across)
             (loop-error ops head "'by' is invalid with 'across'." )
             (set! incr (pop tail)))))
        (else
         (loop-error ops head "'" next "' is not valid with 'for'."))))
    ; add bindings for stepping var and source
    (push (make-binding var #f) bind)
    (push (make-binding seq data) bind)
    (if (eq? type 'across)
      (let ((pos (gensym "v"))
            (max (gensym "v")))
        (push (make-binding pos 0) bind)
        (push (make-binding max #f) bind)
        (push `(set! ,max (vector-length ,seq)) init)
        (push `(set! ,pos (+ 1 ,pos)) step)
        (push `(set! ,var (vector-ref ,seq ,pos)) loop)
        (push `(>= ,pos ,max) stop))
      (begin
       (if incr
         (if (and (list? incr) (eq? (car incr) 'quote))
           (push `(set! ,seq (,(cadr incr) ,seq)) step)
           (push `(set! ,seq (,incr ,seq)) step))
         (push `(set! ,seq (cdr ,seq)) step))
       (push (if (eq? type 'in)
                `(set! ,var (car ,seq))
                `(set! ,var ,seq))
              loop)
       (push `(null? ,seq) stop)))
    
    (values (make-loop-clause 'operator 'for
			      'bindings (reverse bind)
			      'end-tests stop
			      'initially init
			      'looping loop
			      'stepping step)
            tail)))

(define (parse-general-iteration forms clauses ops)
  ;; forms is (FOR <var> = ...)
  clauses
  (let ((head forms)
        (var (cadr forms))
        (tail (cddr forms))
        (init #f)
        (type #f)
        (loop #f)
        (step #f))
    (do ((next #f))
        ((or (null? tail) (loop-op? (car tail) ops)))
      (set! next (pop tail))
      (if (null? tail)
        (loop-error ops head 
		    "Expression expected but source code ran out."))
      (case next
        ((= )
         (if type (loop-error ops head "Duplicate '='."))
         (set! loop `(set! ,var ,(pop tail)))
         (set! type next))
        ((then )
         (if init (loop-error ops head "Duplicate 'then'."))
         (set! init loop)
         (set! loop #f)
         (set! step `(set! ,var ,(pop tail)))
         (set! type next))
        (else
         (loop-error ops head "'" next "' is not valid with 'for'."))))
    
    (values (make-loop-clause 'operator 'for
			      'bindings (list (make-binding var #f))
			      'initially (if init (list init) '())
			      'looping (if loop (list loop) '())
			      'stepping (if step (list step) '()))
            tail)))

(define (parse-with forms clauses ops)
  ;; forms is (WITH <var> = ...)
  clauses
  (let ((head forms)
        (tail (cdr forms))
        (var #f)
        (expr #f)
        (and? #f)
        (bind '())
        (init '()))
    (do ((need #t) 
         (next #f))
        ((or (null? tail) (loop-op? (car tail) ops)))
      (set! next (pop tail))
      (cond ((and (loop-variable? next) need)
             (if var
               (loop-error ops head
			   "Found '" next "' where 'and' expected."))
             (if expr
               (loop-error ops head
			   "Found '" next "' where 'and' expected."))
             (set! var next)
             (set! expr #f)
             (set! and? #f)
             (set! need #f))
            ((eq? next 'and)
             (if and?
               (loop-error ops head "Duplicate 'and'.")
               (if var 
                 (if expr
                   (begin
                    (push (make-binding var #f) bind)
                    (push `(set! ,var ,expr) init))
                   (push (make-binding var #f) bind))
                 (loop-error ops head "Extraneous 'and'.")))
             (set! var #f)
             (set! expr #f)
             (set! and? #t)
             (set! need #t))
            ((eq? next '=)
             (if expr
               (loop-error ops head 
			   "Found '=' where 'and' expected.")
               (set! expr (pop tail))))
            (else
             (if need
               (loop-error ops head
			   "Found '" next "' where variable expected.")
               (loop-error ops head "Found '" next
			   "' where '=' or 'and' expected.")))))
    (if and? 
      (loop-error ops head "Extraneous 'and'.")
      (if var 
        (if expr
          (begin (push (make-binding var #f) bind)
                 (push `(set! ,var ,expr) init))
          (push (make-binding var #f) bind))))
    
    (values (make-loop-clause 'operator 'with
			      'bindings (reverse bind)
			      'initially (reverse init))
            tail)))

(define (parse-do forms clauses ops)
  clauses
  (let ((head forms)
        (oper (pop forms))
        (body '()))
    (do ()
        ((or (null? forms)
             (loop-op? (car forms) ops))
         (if (null? body)
           (loop-error ops head "Missing '" oper "' expression.")
           (set! body (reverse body))))
      (push (car forms) body)
      (set! forms (cdr forms)))
    (values
     (make-loop-clause 'operator oper 'looping body)
     forms)))

(define (parse-finally forms clauses ops)
  clauses
  (let ((oper (pop forms))
        (expr #f))
    (if (null? forms)
      (loop-error ops forms "Missing '" oper "' expression."))
    (set! expr (pop forms))
    (values (make-loop-clause 'operator oper 'finally (list expr))
            forms)))

(define (parse-initially forms clauses ops)
  clauses
  (let ((oper (pop forms))
        (expr #f))
    (if (null? forms)
      (loop-error ops forms "Missing '" oper "' expression."))
    (set! expr (pop forms))
    (values (make-loop-clause 'operator oper 'initially (list expr))
            forms)))

(define (lookup-collector var clauses)
  ;; collector is list: (<var> <type> <acc> <head>)
  ;; returns the clause where the collect variable VAR is
  ;; actually bound or nil if var hasn't already been bound
  ;; if var is nil only the single system allocated collecter
  ;; is possibly returned.
  (let ((checkthem (lambda (var lis)
                     (do ((a #f)) 
                         ((or (null? lis) a) a)
                       (if (eq? var (car (car lis))) ;collector-var
                         (set! a (car lis)))
                       (set! lis (cdr lis))))))
    (do ((c #f))
        ((or (null? clauses) c) c)
      (set! c (checkthem var (loop-collectors (car clauses))))
      (set! clauses (cdr clauses)))))

(define (compatible-accumulation? typ1 typ2)
  (let ((l1 '(collect append nconc))
        (l2 '(never always))
        (l3 '(minimize maximize)))
    (or (eq? typ1 typ2)
        (and (member typ1 l1) (member typ2 l1))
        (and (member typ1 l2) (member typ2 l2))
        (and (member typ1 l3) (member typ2 l3)))))

(define (parse-accumulation forms clauses ops)
  ;; forms is (<op> form ...)
  ;; where <op> is collect append nconc
  (let ((save forms)
        (oper (pop forms))
	(make-collector (lambda (var type acc head)
			  (list var type acc head)))
        ;; removed because noop
	;;(collector-var (lambda (col) (car col)))
	(collector-type (lambda (col) (cadr col)))
	(collector-acc (lambda (col) (caddr col)))
	(collector-head (lambda (col) (cadddr col)))
        (expr #f)
        (coll #f)
        (new? #f)
        (into #f)
        (loop '())
        (bind '())
        (init '())
        (tests '())
        (return '()))
    
    (if (null? forms)
      (loop-error ops forms "Missing '" oper "' expression."))
    (set! expr (pop forms))
    (if (not (null? forms))
      (if (eq? (car forms) 'into)
        (begin
          (if (null? (cdr forms))
            (loop-error ops save "Missing 'into' variable."))
          (if (loop-variable? (cadr forms))
            (begin (set! into (cadr forms))
                   (set! forms (cddr forms)))
            (loop-error ops save "Found '" (car forms)
                 "' where 'into' variable expected.")))))
    
    ;; search for a clause that already binds either the user specified
    ;; accumulator (into) or a system allocated one if no into.
    ;; system collectors
    ;;   o only one  allowed, all accumuations must be compatible
    ;;   o returns value
    ;;   value collector: (nil <op> <#:acc>)
    ;;   list collector:  (nil <op> <#:tail> <#:head>)
    ;; into collectors
    ;;   o any number allowed
    ;;   o returns nothing.
    ;;   value collector: (<into> <op> <into> )
    ;;   list collector:  (<into> <op> <#:tail> <#:head>)
    (set! coll (lookup-collector into clauses))
    (if (not coll)
      (set! new? #t)
      ;; accumulator already established by earlier clause
      ;; check to make sure clauses are compatible.
      (if (not (compatible-accumulation? oper (collector-type coll)))
        (loop-error ops save "'" (collector-type coll)
		    "' and '" oper "' are incompatible accumulators.")))
    (case oper 
      ((sum count)
       (let ((acc #f))
         (if new?
           (begin 
            (set! acc (or into (gensym "v")))
            (push (make-binding acc 0) bind)
            ;; coll= (nil <op> <#:acc>) or (<into> <op> <into>)
            (set! coll (make-collector into oper acc #f))
            ;; only add a return value if new collector isnt into
            (if (not into) (push acc return)))
           (set! acc (collector-acc coll)))
         (if (eq? oper 'sum)
           (push `(set! ,acc (+ ,acc ,expr)) loop)
           (push `(if ,expr (set! ,acc (+ ,acc 1))) loop))))
      ((minimize maximize)
       (let ((var (gensym "v"))
             (opr (if (eq? oper 'minimize) '< '>))
             (acc #f))
         (if new?
           (begin
            (set! acc (or into (gensym "v")))
            (push (make-binding acc #f) bind)
            ;; coll= (nil <op> <#:acc>) or (<into> <op> <into>)
            (set! coll (make-collector into oper acc #f))
            ;; only add a return value if new collector isnt into
            (if (not into) (push `(or ,acc 0) return)))
           (set! acc (collector-acc coll)))
         (push (make-binding var #f) bind)
         (push `(begin (set! ,var ,expr)
                        (if (or (not ,acc) 
                                (,opr ,var ,acc))
                          (set! ,acc ,var)))
                loop)))
      ((append collect nconc)
       ;; for list accumulation a pointer to the tail of the list
       ;; is updated and the head of the list is returned. any
       ;; into variable is set to the head inside the loop.
       (let ((head #f)
             (tail #f))
         (if (not new?)
           (begin (set! tail (collector-acc coll))
                  (set! head (collector-head coll)))
           (begin
            (if into (push (make-binding into '(list)) bind))
            (set! tail (gensym "v"))
            ;; allocate a pointer to the head of list
            (set! head (gensym "v"))
            (push (make-binding head '(list #f)) bind)
            (push (make-binding tail #f) bind)
            ;; initialize tail to head
            (push `(set! ,tail ,head) init)
            (set! coll (make-collector into oper tail head))
            ;; only add a return value if new collector isnt into
            (if (not into)
              (push `(cdr ,head) return))))
         ;; add loop accumulation forms
         (if (eq? oper 'append)
           (begin
            (push `(set-cdr! ,tail (append ,expr (list))) loop)
            (push `(set! ,tail (last-pair ,tail)) loop))
           (if (eq? oper 'collect)
             (begin
              (push `(set-cdr! ,tail (list ,expr)) loop)
              (push `(set! ,tail (cdr ,tail)) loop))
             (begin 
              (push `(set-cdr! ,tail ,expr) loop)
              (push `(set! ,tail (last-pair ,tail)) loop))))
         ;; update user into variable inside the main loop
         ;; regardless of whether its a new collector or not
         (if into
           (push `(set! ,into (cdr ,head)) loop)))))
    
    (values (make-loop-clause 'operator oper
			      'bindings (reverse bind)
			      'initially (reverse init)
			      'looping (reverse loop)
			      'returning (reverse return)
			      'collectors (if new? (list coll) '())
			      'end-tests (reverse tests))
            forms)))

;(define (loop-stop expr)
;  `(%done% ,expr))

(define (loop-return expr)
  `(return ,expr))

(define (parse-while-until forms clauses ops)
  clauses
  (let ((head forms)
        (oper (pop forms))
        (test #f)
        (stop '(go #t))) ; :done
    (if (null? forms)
      (loop-error ops head "Missing '" oper "' expression."))
    
    (case oper
      ((until ) (set! test (pop forms)))
      ((while ) (set! test `(not ,(pop forms)))))
    ;; calls the DONE continuation.
    (values (make-loop-clause 'operator oper
			      'looping (list `(if ,test ,stop)))
            forms)))

(define (parse-thereis forms clauses ops)
  clauses
  (let ((oper (car forms))
        (expr #f)
        (bool #f)
        (func #f))
    (if (null? (cdr forms))
      (loop-error ops forms "Missing '" (car forms) "' expression." ))
    (set! expr (cadr forms))
    ;; fourth element of operator definition must be
    ;; a function that returns the stop expression.
    (set! func (cadddr (loop-op? oper ops) ))
    
    (case oper
      ((thereis ) 
       ;; return true as soon as expr is true or false at end
       (set! bool #f))
      ((always )
       ;; return false as soon as expr is false, or true at end
       (set! expr `(not ,expr))
       (set! bool #t))
      ((never )
       ;; return false as soon as expr is true, or true at end
       (set! bool #t)))
    (set! forms (cddr forms))
    ;; this calls the RETURN continuation
    (values (make-loop-clause 'operator 'thereis
			      'looping 
                              (list `(if ,expr ,(func (not bool))))
			      'returning 
                              (list bool))
            forms)))

(define (parse-return forms clauses ops)
  clauses
  (let ((oper (car forms))
        (expr #f)
        (func #f))
    (if (null? (cdr forms))
      (loop-error ops forms "Missing '" (car forms) "' expression."))
    (set! expr (cadr forms))
    (set! forms (cddr forms))
    ;; fourth element of operator definition must be
    ;; a function that returns the stop expression.
    (set! func (cadddr (loop-op? oper ops) ))
    ;; this calls the RETURN continuation
    (values (make-loop-clause 'operator 'return
			      'looping `(,(func expr)))
            forms)))

(define (legal-in-conditional? x ops)
  ;; FIXED (member (loop-operator...))
  (let ((op (loop-op? x ops)))
    (if (and op 
	     (not (null? (cddr op)))
	     (eq? (caddr op) 'task)
             (not (member (car op) '(thereis never always))))
      op #f)))

(define (parse-then-else-dependents forms clauses ops)
  (let ((previous forms)
        (stop? #f)
        (parsed '()))
    
    (do ((op #f)
         (clause #f)
         (remains #f))
        ((or (null? forms) stop?))
      (set! op (legal-in-conditional? (car forms) ops))
      (if (not op)
        (loop-error ops previous "'" (car forms)
		    "' is not conditional operator."))
      ;(multiple-value-setq 
      ; (clause remains)
      ; ( (cadr op) forms (append clauses parsed) ops))
      (call-with-values
       (lambda () ( (cadr op) forms (append clauses parsed) ops))
       (lambda (a b) (set! clause a) (set! remains b)))

  ;(format #t "~%after call clause=~s forms=~S" clause forms)      

      (set! parsed (append parsed (list clause)))
      (set! previous forms)
      (set! forms remains)

      (if (not (null? forms))
        (if (eq? (car forms) 'and)
          (begin
           (set! forms (cdr forms))
           (if (null? forms)
             (loop-error ops previous "Missing 'and' clause.")))
          (if (eq? (car forms) 'else)
            (set! stop? #t)
            (if (loop-op? (car forms) ops)
              (set! stop? #t))))))
    (values parsed forms)))

(define (parse-conditional forms clauses ops)
  (let ((ops (cons '(else ) ops))
	(save forms)
        (oper (car forms))
        (loop (list))  ; avoid '() because of acl bug
        (expr (list))
        (then (list))
        (else (list)))
    (if (null? (cdr forms))
      (loop-error ops save "Missing '" oper "' expression."))
    (set! forms (cdr forms))
    (set! expr (pop forms))
    (if (null? forms)
      (loop-error ops forms "Missing conditional clause."))
    (if (eq? oper 'unless)
      (set! expr (list 'not expr)))
    (call-with-values
     (lambda () (parse-then-else-dependents forms clauses ops))
     (lambda (a b)
       (set! then a)
       (set! forms b)))

    ;; combine dependant clauses if more than one
    (if (not (null? (cdr then)))
      (set! then (gather-clauses (list) then))
      (set! then (car then)))
    (loop-operator-set! then 'if)

    ;; this (if ...) is hacked so that it is a newly
    ;; allocated list. otherwise acl and clisp have a
    ;; nasty structure sharing problem.
    (set! loop (list 'if expr 
                     (append `(begin ,@(loop-looping then)) (list))
                     #f))
    (if (and (not (null? forms))
             (eq? (car forms) 'else))
      (begin
       (set! forms (cdr forms))
       (when (null? forms)
         (loop-error ops save "Missing 'else' clause."))
       (call-with-values 
        (lambda ()
          (parse-then-else-dependents 
           forms (append clauses (list then))
           ops))
        (lambda (a b) (set! else a) (set! forms b)))
       (if (not (null? (cdr else)))
         (set! else (gather-clauses '() else))
         (set! else (car else)))
       (set-car! (cdddr loop) `(begin ,@(loop-looping else)))
       ;; flush loop forms so we dont gather actions.
       (loop-looping-set! then '())
       (loop-looping-set! else '())
       (set! then (gather-clauses 'if (list then else)))))
    (loop-looping-set! then (list loop))
    (values then forms)))

(define (parse-clauses forms cond? ops)
  (if (or (null? forms)
	  (not (symbol? (car forms))))
    (list (make-loop-clause 'operator 'do 'looping forms))
    (let ((op-type? (lambda (op type)
                      (and (not (null? (cddr op)))
                           (eq? (caddr op) type)))))
      (let ((previous forms)
            (clauses '()))
        (do ((op #f)
             (clause #f)
             (remains '())
             (body '()) )
            ((null? forms))
          (if (and cond? (eq? (car forms) 'and))
            (pop forms))
          (set! op (loop-op? (car forms) ops))
          (if (not op)
            (loop-error ops previous "Found '" (car forms)
			"' where operator expected."))
          ;(multiple-value-setq (clause remains)
          ;                     ((cadr op) forms clauses ops))
	  (call-with-values
	   (lambda () ( (cadr op) forms clauses ops))
	   (lambda (a b)
	     (set! clause a)
	     (set! remains b)))
          (if (op-type? op 'task)
            (set! body op)
            (if (op-type? op 'iter)
              (if (not (null? body))
                (loop-error ops previous "'" (car op)
			    "' clause cannot follow '"
			    (car body) "'."))))
          (set! previous forms)
          (set! forms remains)
          (set! clauses (append clauses (list clause))))
        clauses))))

(define (parse-iteration caller forms ops)
  (gather-clauses caller (parse-clauses forms '() ops)))

;;;
;;; loop implementation
;;;

(define *loop-operators*
  ;; each clause is (<op> <parser> <tag> . <whatever>)
  (list (list 'with (function parse-with) #f)
        (list 'initially (function parse-initially) #f)
        (list 'repeat (function parse-repeat) 'iter)
        (list 'for (function parse-for) 'iter
              (list 'from (function parse-numerical-for))
              (list 'downfrom (function parse-numerical-for))
              (list 'below (function parse-numerical-for))
              (list 'to (function parse-numerical-for))
              (list 'above (function parse-numerical-for))
              (list 'downto (function parse-numerical-for))
              (list 'in (function parse-sequence-iteration))
              (list 'on (function parse-sequence-iteration))
              (list 'across (function parse-sequence-iteration))
              (list '= (function parse-general-iteration)))
        (list 'as (function parse-for) 'iter)
        (list 'do (function parse-do) 'task)
        (list 'collect (function parse-accumulation) 'task)
        (list 'append (function parse-accumulation) 'task)
        (list 'nconc (function parse-accumulation) 'task)
        (list 'sum (function parse-accumulation) 'task)
        (list 'count (function parse-accumulation) 'task)
        (list 'minimize (function parse-accumulation) 'task)
        (list 'maximize (function parse-accumulation) 'task)
        (list 'thereis (function parse-thereis) 'task
              (function loop-return))
        (list 'always (function parse-thereis) 'task
              (function loop-return))
        (list 'never (function parse-thereis) 'task 
              (function loop-return))
        (list 'return (function parse-return) 'task 
              (function loop-return))
        (list 'while (function parse-while-until) #f )
        (list 'until (function parse-while-until) #f )
        (list 'when (function parse-conditional) 'task)
        (list 'unless (function parse-conditional) 'task)
        (list 'if (function parse-conditional) 'task)
        (list 'finally (function parse-finally) #f)))

;;;
;;; loop expansions for scheme and cltl2
;;;

(define (scheme-loop forms)
  (let ((name (gensym "v"))
        (parsed (parse-iteration 'loop forms *loop-operators*))
        (end-test '())
        (done '(go #t))  ; :done
        (return #f))
    ;(write (list :parsed-> parsed))
    ;; cltl2's loop needs a way to stop iteration from with the run
    ;; block (the done form) and/or immediately return a value
    ;; (the return form).  scheme doesnt have a block return or a
    ;; go/tagbody mechanism these conditions are implemented using
    ;; continuations.  The forms that done and return expand to are
    ;; not hardwired into the code because this utility is also used
    ;; by CM's 'process' macro. Instead, the done and return forms
    ;; are returned by functions assocated with the relevant operator
    ;; data. For example, the function that returns the return form
    ;; is stored as the fourth element in the return operator data.
    ;; and the done function is stored in the while and until op data.
    
    ;; the cadddr of the RETURN operator is a function that
    ;; provides the form for immediately returning a value
    ;; from the iteration.

    (let ((returnfn (cadddr (assoc 'return *loop-operators*))))
      (set! return (returnfn
                    (if (null? (loop-returning parsed))
                      #f
                      (car (loop-returning parsed))))))
            
    ;; combine any end-tests into a single IF expression
    ;; that calls the (done) continuation if true. multiple
    ;; tests are OR'ed togther

    (set! end-test
          (let ((ends (loop-end-tests parsed)))
            (if (null? ends)
              '()
              (list
               `(if ,(if (null? (cdr ends))
                       (car ends)
                       (cons 'or ends))
                  ;;  calls the done continuation
                  ,done 
                  #f)))))
    `(let (,@ (loop-bindings parsed))
       ,@(loop-initially parsed)
       (call-with-current-continuation 
        (lambda (return)     ; <- (return) returns from this lambda
          (call-with-current-continuation
           (lambda (go)  ; <- (go #t) returns from this lambda
             ;; a named let provides the actual looping mechanism.
             ;; the various tests and actions may exit via the
             ;; (done) or (return) continuations.
             (let ,name () 
                  ,@end-test
                  ,@(loop-looping parsed)
                  ,@(loop-stepping parsed)
                  (,name))))
          ;; this is the lexical point for (go #t) continuation.
          ,@(loop-finally parsed)
          ;; invoke the RETURN continuation with loop value or #f
          ,return)))))

;;;
;;; these two function are never called in scheme but they are
;;; translated to the cltl sources.
;;;

(define-macro (iter . args)
  (cltl2-loop args))

(define (cltl2-loop forms)
  (let* ((iter (parse-iteration 'iter forms *loop-operators*))
         ;; the cadddr of RETURN operator is a function that
         ;; returns the form for returning from iteration.
         (retn (apply (cadddr (assoc 'return *loop-operators*))
                      (list (car (loop-returning iter))))))
    `(, 'let ,(loop-bindings iter)
             ,@(loop-initially iter)
             (block nil
               (tagbody 
                 :loop
                 ,@ (let ((tests (loop-end-tests iter)))
                      (if tests
                        (list `(if ,(if (cdr tests)
                                      (cons 'or tests)
                                      (car tests))
                                 (go t))) ; :done
                        (list)))
                    ,@(loop-looping iter)
                    ,@(loop-stepping iter)
                    (go :loop)
                    t ; :done
                    ,@(loop-finally iter)
                    ,retn)))))

;;;
;;; loop tests.
;;;

;(loop for i below 10 collect i)
; => (0 1 2 3 4 5 6 7 8 9)
;(loop for i to 10 sum i)
; => 55
;(loop for i downto -10 count (even? i))
; => 6
;(loop for x in '(0 1 2 3 4 5 6 7 8 9) thereis (= x 4))
; => #t
;(loop for x in '(0 1 2 3 4 5 6 7 8 9) by 'cddr collect x)
; => (0 2 4 6 8)
;(loop for x on '(0 1 2 3 4 5 6 7 8 9) by 'cddr collect x)
; => ((0 1 2 ...) (2 3 4 ...) ...)
;(loop for x in '(0 1 2 3 4 5 6 7 8 9) thereis (= x 4))
; => 4
;(loop for x in '(0 1 2 3 4 5 6 7 8 9) never (= x 4))
; => #f
;(loop for x in '(0 1 2 3 4 5 6 7 8 9) never (= x 40))
; => #t
;(loop for x in '(0 2 3 4 5 6 7 8 9) always (< x 40))
; => #t
;(loop repeat 10 with x = 0 collect x do (set! x (+ x 1)))
; => (0 1 2 3 4 5 6 7 8 9)
;(loop repeat 10 for x = #t then (not x) collect x)
; => (#t #f #t #f #t #f #t #f #t #f)
;(loop repeat 10 count #t)
; => 10
;(loop repeat 10 count #f)
; => 0
;(loop for i to 10 collect i collect (* 2 i))
; => (0 0 1 2 2 4 3 6 4 8 5 10 6 12 7 14 8 16 9 18 10 20)
;(loop for i from -10 to 10 by 2 nconc (list i (- i)))
; => (-10 10 -8 8 -6 6 -4 4 -2 2 0 0 2 -2 4 -4 6 -6 8 -8 10 -10)
;(loop for i from -10 downto 10 by -1 collect i)
; => ()
;(loop for i downfrom 10 downto -10 by 2 collect i)
; => (10 8 6 4 2 0 -2 -4 -6 -8 -10)
;(loop for i from 10 to -10 by 1 collect i)
; => ()
;(loop for i to 10 for j downfrom 10 collect i collect j)
; => (0 10 1 9 2 8 3 7 4 6 5 5 6 4 7 3 8 2 9 1 10 0)
;(loop for i below 0 collect i into foo finally (return foo))
; => ()
;(loop for i below 0 sum i into foo finally (return foo))
; => 0
;(loop for i below 0 maximize i into foo finally (return foo))
; => #f
;(loop with a and b = 'x and c = 2 repeat 10 for x = 1 then 'fred collect (list x a b c))
; => ((1 #f x 2) (fred #f x 2) (fred #f x 2) (fred #f x 2) (fred #f x 2) (fred #f x 2) (fred #f x 2) (fred #f x 2) (fred #f x 2) (fred #f x 2))
;(loop for i across #(0 1 2 3) append (list i (expt 2 i)))
; => (0 1 1 2 2 4 3 8)
;(loop repeat 10 for x = (random 100) minimize x into a maximize x into b finally (return (cons a b)))
; => (36 . 98)
;(loop with a = 0 and b = -1 while (< a 10) sum a into foo do (set! a (+ a 1)) finally (return (list foo b)))
; => (45 -1)
;(loop for i to 10 for j = (random 10) if (even? j) collect j else collect (- j) and do (format #t "odd: ~s~%" j))
; => (-5 -9 8 -9 -7 0 0 4 -7 -1 -1)
;(loop for i from 0 until (> i 9) collect i)
;=> (0 1 2 3 4 5 6 7 8 9)
;(loop for i from 0 while (< i 9) when (even? i) collect i)
;=> (0 2 4 6 8)
;(loop for x = (random 10) for y = -1 then (- x 10) when (> x 6) return (list 'hiho x y))
;=> (hiho 7 -4)
;(loop repeat 10 for i = (random 100) collect i)
; => (31 32 98 7 70 14 73 15 14 44)
;(loop repeat 10 for i = (random 3) for j = (list i 1) collect j)
; => ((2 1) (0 1) (2 1) (1 1) (0 1) (2 1) (1 1) (2 1) (0 1) (0 1))

;; errors:
;(loop with l = (list 0) for s in spec for k = s then (+ k s) do (push k l) finally (return l))
;(loop with l = (list (encode-interval 'p 1)) for s in spec for k = (interval s) then (transpose k (interval s)) do (push k l) finally (return l))

) % matches opening #(