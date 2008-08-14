\override Voice . TextScript #'padding = #0
\override Voice . TextScript #'direction = #DOWN
\override Voice . TextScript #'extra-spacing-width = #'(0 . 0)
\override Voice . TextScript #'infinite-spacing-height = ##t
s1*2
s1-\markup \override #'(line-width . 40) \wordwrap {
  Ah! Satyre mon ami, tu sais bien ce que tu m'as promis, il y a
  longtemps, apprends-moi à chanter, je te prie ?
}
s1*5
s1-\markup \override #'(line-width . 40) \wordwrap {
  Il est si accoutumé à chanter qu'il ne saurait parler d'autre
  façon. Allons chante, j'écoute.
}
s1 s4
s2.-\markup { Une chanson, dis-tu ? }
s1
s1-\markup { Une chanson à chanter ? }
s1
s1-\markup { Chanson amoureuse, peste. }