\version "2.18.2"

ignoreClash = \once\override NoteColumn #'ignore-collision = ##t

graceSchleifer = 
#(define-music-function (parser location note) (ly:music?)
  (make-music 'SequentialMusic
   'elements (list #{
              \once \override Voice.NoteHead #'stencil = #ly:text-interface::print
              \once \override Voice.NoteHead #'X-extent = #'(-2 . -0)
              \once \override Voice.NoteHead #'text =
              #(markup #:large #:halign 0.4 #:raise 0.0 #:combine #:halign 1.1 #:musicglyph "scripts.prall"
              #:rotate 120 #:normalsize #:raise 2.4 #:musicglyph "flags.u3")
              \once \override Flag #'style = #'no-flag 
              \once \override Voice.Stem #'stencil = ##f #}
              note)))

TIn =  \shape #'((0.8 . 0.0)(0.0 . 0.0)(0.0 . 0.0)(-0.8 . 0.0)) Tie
TIna =  \shape #'((0.8 . 0.0)(0.0 . 0.0)(0.0 . 0.0)(0.0 . 0.0)) Tie
TInb =  \shape #'((0.4 . 0.0)(0.0 . 0.0)(0.0 . 0.0)(-0.4 . 0.0)) Tie
TInc =  \shape #'((0.6 . 0.3)(0.0 . 0.4)(0.0 . 0.4)(-0.1 . 0.3)) Tie
TInd =  \shape #'((0.3 . 0.0)(0.0 . 0.0)(0.0 . 0.0)(-0.3 . 0.0)) Tie
Tr = \shape #'((0.4 . 0.0)(0.3 . 0.0)(0.0 . 0.0)(0.0 . 0.0)) Tie
Tl = \shape #'((0.0 . 0.0)(0.0 . 0.0)(0.0 . 0.0)(-0.2 . 0.0)) Tie

TUp =  \shape #'((0.0 . 0.4)(0.0 . 0.4)(0.0 . 0.4)(0.0 . 0.4)) Tie
TUpa =  \shape #'((0.0 . 0.4)(0.0 . 0.6)(0.0 . 0.6)(0.0 . 0.4)) Tie
TUpb =  \shape #'((0.0 . 0.2)(0.0 . 0.2)(0.0 . 0.2)(0.0 . 0.2)) Tie
TUpc =  \shape #'((0.0 . 0.1)(0.0 . 0.1)(0.0 . 0.1)(0.0 . 0.1)) Tie
TUpd =  \shape #'((0.0 . 0.3)(0.0 . 0.6)(0.0 . 0.6)(0.0 . 0.3)) Tie
TUpe =  \shape #'((0.0 . 0.2)(0.0 . -0.1)(0.0 . -0.1)(0.0 . 0.2)) Tie
TUpi =  \shape #'((0.4 . 0.0)(0.0 . 0.0)(0.0 . 0.0)(-0.4 . 0.0)) Tie
TUpj =  \shape #'((0.0 . 0.0)(0.0 . 0.1)(0.0 . 0.1)(0.0 . 0.0)) Tie
TUpk =  \shape #'((0.2 . 0.1)(0.0 . -0.2)(0.0 . -0.2)(-0.2 . 0.1)) Tie
TUpo =  \shape #'((-0.4 . 0.4)(0.0 . 0.4)(0.0 . 0.4)(0.4 . 0.4)) Tie
TUpp =  \shape #'((-0.0 . 0.3)(0.0 . 0.0)(0.0 . 0.0)(0.0 . 0.3)) Tie
TUpq =  \shape #'((0.0 . 0.4)(0.0 . 0.4)(0.0 . 0.4)(0.4 . 0.4)) Tie
TUpr =  \shape #'((0.0 . 0.4)(0.0 . 0.4)(0.4 . 0.4)(0.8 . 0.4)) Tie
TUps =  \shape #'((0.0 . 0.1)(0.0 . 0.0)(0.0 . 0.0)(-0.2 . 0.1)) Tie
TUpt =  \shape #'((-0.3 . 0.5)(0.0 . 0.6)(0.0 . 0.6)(0.3 . 0.5)) Tie
TUpu =  \shape #'((0.2 . 0.1)(0.0 . -0.1)(0.0 . -0.1)(-0.2 . 0.1)) Tie

TDn =  \shape #'((0.0 . -0.4)(0.0 . -0.4)(0.0 . -0.4)(0.0 . -0.4)) Tie
TDna =  \shape #'((0.0 . -0.1)(0.0 . -0.1)(0.0 . -0.1)(-0.0 . -0.1)) Tie
TDnb =  \shape #'((0.0 . -0.2)(0.0 . -0.1)(0.0 . -0.1)(-0.0 . -0.2)) Tie
TDnc =  \shape #'((-0.3 . -0.3)(0.0 . -0.0)(0.0 . -0.0)(0.1 . -0.3)) Tie
TDnd =  \shape #'((0.0 . -0.2)(0.0 . 0.1)(0.0 . 0.1)(-0.2 . -0.3)) Tie
TDne =  \shape #'((0.0 . -0.2)(0.0 . 0.1)(0.0 . 0.1)(0.0 . -0.2)) Tie
TDnf =  \shape #'((0.0 . -0.4)(0.0 . -0.6)(0.0 . -0.6)(0.0 . -0.4)) Tie
TDng =  \shape #'((0.0 . -0.0)(0.0 . -0.2)(0.0 . -0.2)(0.0 . -0.0)) Tie
TDnh =  \shape #'((0.0 . -0.3)(0.0 . -0.4)(0.0 . -0.4)(-0.0 . -0.3)) Tie
TDno = \shape #'((-0.4 . -0.4)(0.0 . -0.4)(0.0 . -0.4)(0.4 . -0.4)) Tie
TDnp = \shape #'((-0.4 . -0.4)(0.0 . -0.6)(0.0 . -0.6)(0.4 . -0.4)) Tie
TDni = \shape #'((0.0 . -0.2)(0.0 . -0.2)(0.0 . -0.2)(-0.6 . -0.2)) Tie
TDnj = \shape #'((0.6 . -0.0)(0.0 . -0.0)(0.0 . -0.0)(-0.6 . -0.0)) Tie
TDnk = \shape #'((0.6 . -0.0)(0.0 . -0.0)(0.0 . -0.0)(-0.6 . -0.0)) Tie
TDnl =  \shape #'((-0.6 . -0.4)(0.0 . -0.4)(0.0 . -0.4)(0.0 . -0.4)) Tie
TDnm =  \shape #'((0.0 . -0.2)(0.0 . 0.0)(0.0 . 0.0)(-0.3 . -0.2)) Tie
TDnn = \shape #'((0.4 . -0.2)(0.0 . 0.0)(0.0 . 0.0)(-0.1 . -0.2)) Tie
TDno =  \shape #'((-0.3 . -0.3)(0.0 . -0.6)(0.0 . -0.6)(0.1 . -0.3)) Tie
TDnp =  \shape #'((0.3 . -0.2)(0.0 . 0.1)(0.0 . 0.1)(0.0 . -0.2)) Tie
TDnq = \shape #'((-0.4 . -0.4)(0.0 . -0.2)(0.0 . -0.2)(0.4 . -0.4)) Tie
TDnr =  \shape #'((-0.5 . -0.3)(0.0 . -0.4)(0.0 . -0.4)(0.5 . -0.3)) Tie

SDn = \shape #'((0.0 . 0.0)(0.0 . -0.6)(0.0 . -0.6)(0.0 . 0.0)) Slur
SUp = \shape #'((0.0 . 1.0)(0.0 . 0.0)(0.0 . 0.0)(0.0 . 0.0)) Slur
SUpa = \shape #'((0.0 . 0.6)(0.0 . 0.0)(0.0 . 0.0)(0.0 . 0.0)) Slur
SUpb = \shape #'((0.0 . 0.2)(-0.2 . -0.0)(-0.1 . 0.6)(-0.8 . 0.2)) Slur
SUpc = \shape #'((0.0 . 0.1)(-0.2 . 0.1)(-0.4 . 0.7)(-1.0 . 0.5)) Slur
SUpd = \shape #'((0.0 . 0.4)(-0.0 . -0.2)(-0.0 . 0.6)(-1.0 . 0.0)) Slur
SBl = \shape #'((0.0 . 0.0)(0.0 . 0.0)(0.0 . 0.0)(-1.0 . 0.0)) Slur

posSlurA = \once \override Slur #'control-points = #'((1.0 . 3.5) (2 . 4.5) (5 . 4.5) (6 . 4.0))
posSlurB = \once \override Slur #'control-points = #'((.5 . 1.7) (1.0 . 1.2) (1.4 . 1.3) (1.8 . 1.4))
posSlurC = \once \override Slur #'control-points = #'((.5 . .8) (1.2 . .4) (1.4 . .5) (1.8 . .6))
