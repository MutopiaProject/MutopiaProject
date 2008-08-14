\override Voice . TextScript #'padding = #0
\override Voice . TextScript #'direction = #DOWN
\override Voice . TextScript #'extra-spacing-width = #'(0 . 0)
\override Voice . TextScript #'infinite-spacing-height = ##t
\set Staff.instrumentName = \markup Lyciscas
s1-" "
s1
s2.*8
\once \override Voice . TextScript #'extra-offset = #(cons -5 0)
s2.-\markup \column { 
  \line { Hé ! laissez-moi dormir encore }
  \line { un peu, je vous conjure. }
}
s2.*3
s2.-\markup \column {
  \line { Je ne vous demande plus }
  \line { qu'un petit quart d'heure. }
}
s2.*3 s4
\once \override Voice . TextScript #'infinite-spacing-height = ##f
s2-\markup { Hé ! }
\noBreak
s2.-\markup { je vous prie ?  }
s4
\override Voice . TextScript #'infinite-spacing-height = ##f
s2-\markup { Un moment. }
s2. s4
s2-\markup { De grâce. }
\noBreak
s2. s4
s2-\markup { Eh. }
s2. s4
s2-\markup { Je... }
s2. s2.
\override Voice . TextScript #'infinite-spacing-height = ##t
\once \override Voice . TextScript #'extra-offset = #(cons -5 0)
s2.-\markup { J'aurai fait incontinent. }
s2.*28
s4 s2-\markup \override #'(line-width . 50) \wordwrap {
  Eh bien laissez-moi : je vais me lever.  Vous êtes d'étranges gens,
  de me tourmenter comme cela.  Vous serez cause que je ne me porterai
  pas bien de toute la journée ; car voyez-vous, le sommeil est
  nécessaire à l'homme, et lorsqu'on ne dort pas sa réfection, il
  arrive... que... on est...
}
s1*2
s2.-\markup \override #'(line-width . 40) \wordwrap {
  Diable soit les brailleurs, je voudrais que vous eussiez la gueule
  pleine de bouillie bien chaude.
}
s2.*6
s2 s4-\markup \override #'(line-width . 30) \wordwrap {
  Ah ! quelle fatigue, de ne pas dormir son soûl.
}
s1*2
%%\once \override Voice . TextScript #'extra-offset = #(cons -5 0)
\override Voice . TextScript #'infinite-spacing-height = ##f
s1-\markup \override #'(line-width . 50) \wordwrap {
  Oh! oh! oh! oh. La peste soit des gens avec leurs chiens de
  hurlements, je me donne au diable si je ne vous "assomme ;" mais voyez
  un peu quel diable d'enthousiasme il leur prend, de me venir chanter
  aux oreilles comme cela. Je...
}
\noBreak s1 \noBreak s1
s2.*3
s2.*2-\markup { Encore ? }
s2.*2
s2.*2-\markup { Le diable vous emporte. }