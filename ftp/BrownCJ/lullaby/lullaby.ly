\version "2.12.2"

overrides = {
\override TextScript #'padding = #2.0
\override DynamicLineSpanner #'padding = #2.0
\override Staff.TimeSignature  #'style = #'numbered
\override Score.Hairpin #'after-line-breaking = ##t
#(set-accidental-style 'modern-cautionary)
}

pCantab=_\markup{\dynamic p \italic cantabile}
menof=_\markup{\italic meno \dynamic f}
piup=_\markup{\italic piu \dynamic p}
poco=_\markup{\italic poco}
apoco=_\markup{\italic {a poco}}
cresc=_\markup{\italic cresc}
dim=_\markup{\italic dim}
collaParte=_\markup{\italic {colla parte}}



fluteMus={ \time 4/4 \repeat volta 2 {f'8 -\tag #'notguitar \( \tenuto -\tag #'midi \p \pCantab ^\markup{\note #"4" #.75 = 84 tempo rubato} ees'8 -\tag #'notguitar \) ees'4 \tenuto des'2 \tenuto|f'8 -\tag #'notguitar \( \tenuto ees'8 -\tag #'notguitar \) ees'4 \tenuto des'2 \tenuto|ges'8 -\tag #'notguitar \( \tenuto f'8 -\tag #'notguitar \) f'4 \tenuto ees'2 \tenuto|ges'8 -\tag #'notguitar \( \tenuto f'8 -\tag #'notguitar \) f'4 \tenuto ees'2 \tenuto
aes'8 -\tag #'notguitar \( \tenuto ges'8 -\tag #'notguitar \) ges'4 \tenuto f'2 \tenuto|aes'8 -\tag #'notguitar \( \tenuto ges'8 -\tag #'notguitar \) ges'4 \tenuto f'2 \tenuto| }ges'8 -\tag #'notguitar \( \tenuto \mp f'8 -\tag #'notguitar \) f'4 \tenuto ees'2 \tenuto|ges'8 -\tag #'notguitar \( \tenuto f'8 -\tag #'notguitar \) f'4 \tenuto ees'2 \tenuto
aes'8 -\tag #'notguitar \( \tenuto ges'8 -\tag #'notguitar \) ges'4 \tenuto \poco f'2 \tenuto|aes'8 -\tag #'notguitar \( \tenuto ges'8 -\tag #'notguitar \) ges'4 \tenuto \apoco f'2 \tenuto|bes'8 -\tag #'notguitar \( \tenuto aes'8 -\tag #'notguitar \) \cresc aes'4 \tenuto ges'2 \tenuto|bes'8 -\tag #'notguitar \( \tenuto aes'8 -\tag #'notguitar \) \< aes'4 \tenuto ges'2 \tenuto
des''8 -\tag #'notguitar \( \tenuto c''8 -\tag #'notguitar \) c''4 \tenuto bes'2 \tenuto|des''8 -\tag #'notguitar \( \tenuto \! c''8 -\tag #'notguitar \) c''4 \tenuto bes'2 \tenuto|bes'8 -\tag #'notguitar \( \tenuto aes'8 -\tag #'notguitar \) aes'4 \tenuto ges'2 \tenuto|bes'8 -\tag #'notguitar \( \tenuto aes'8 -\tag #'notguitar \) aes'4 \tenuto ges'2 \tenuto
ges''8 \dim f''8 des''8 bes'8 ees''2 \tenuto \>|aes'2 \tenuto f''2 \tenuto|ges'2 \tenuto ees''2 \!|bes'8 \tenuto \p bes'8 -\tag #'notguitar \( aes'8 -\tag #'notguitar \) bes'8 ees''2 \tenuto|bes'8 \tenuto bes'8 -\tag #'notguitar \( aes'8 -\tag #'notguitar \) bes'8 c''4 -\tag #'notguitar \( \tenuto des''4 -\tag #'notguitar \)
f''8 f''4 ees''8 des''8 bes'4.|f''8 f''4 ees''8 des''8 bes'4.|ees''8 ees''8 des''8 -\tag #'notguitar \( ees''8 -\tag #'notguitar \) \< f''4 aes''8 f''8|bes''8 bes''8 \! aes''8 -\tag #'notguitar \( bes''8 -\tag #'notguitar \) des''4 -\tag #'notguitar \( \tenuto \> bes'4 -\tag #'notguitar \) \breathe
r2 \! r8 des''8 \staccato \tenuto \p r8 bes'8 \staccato \tenuto|r2 r8 des''8 \staccato \tenuto r8 bes'8 \staccato \tenuto \mp|bes'8 \tenuto bes'8 -\tag #'notguitar \( aes'8 -\tag #'notguitar \) ees''8 ~ ees''2|f''8 \tenuto f''8 -\tag #'notguitar \( ees''8 des''8 ees''2 -\tag #'notguitar \)
ees''8 \tenuto ees''8 -\tag #'notguitar \( des''8 aes''8 -\tag #'notguitar \) f''2|f''8 \tenuto f''8 -\tag #'notguitar \( ees''8 des''8 -\tag #'notguitar \) bes'2 \breathe|r2 bes'8 \tenuto \poco bes'8 -\tag #'notguitar \( aes'8 bes'8 -\tag #'notguitar \)|ees''2 \tenuto \apoco ees''8 \tenuto ees''8 -\tag #'notguitar \( des''8 ees''8 -\tag #'notguitar \)
ges''4 \tenuto \cresc f''4 \tenuto ges''8 -\tag #'notguitar \( f''8 -\tag #'notguitar \) des''8 -\tag #'notguitar \( bes'8 -\tag #'notguitar \)|ees''2 ges''8 -\tag #'notguitar \( \< f''8 -\tag #'notguitar \) des''8 -\tag #'notguitar \( bes'8 -\tag #'notguitar \)|ges''8 -\tag #'notguitar \( f''8 -\tag #'notguitar \) des''8 -\tag #'notguitar \( bes'8 -\tag #'notguitar \) ges''8 -\tag #'notguitar \( f''8 -\tag #'notguitar \) des''8 -\tag #'notguitar \( f''8 -\tag #'notguitar \)|ees''1 ~ \!\mf\>|ees''1 \breathe
ges''4 \tenuto \!\p f''8 -\tag #'notguitar \( \tenuto ees''8 -\tag #'notguitar \) ees''4. des''8|bes'8 \tenuto bes'8 -\tag #'notguitar \( aes'8 bes'8 -\tag #'notguitar \) ees''4 \tenuto f''4 \tenuto|f''4 \tenuto ees''8 -\tag #'notguitar \( \tenuto des''8 -\tag #'notguitar \) des''4. bes'8|bes'8 \tenuto bes'8 -\tag #'notguitar \( \dim aes'8 bes'8 -\tag #'notguitar \) bes'4. -\tag #'notguitar \( \tenuto aes'8 -\tag #'notguitar \) \>|bes'8 \tenuto bes'8 -\tag #'notguitar \( aes'8 bes'8 -\tag #'notguitar \) bes'4. -\tag #'notguitar \( \tenuto aes'8 -\tag #'notguitar \) \!
aes'8 \tenuto \p aes'8 -\tag #'notguitar \( f'8 ges'8 -\tag #'notguitar \) bes'4. -\tag #'notguitar \( \tenuto des''8 -\tag #'notguitar \)|des''4. -\tag #'notguitar \( \tenuto f''8 -\tag #'notguitar \) f''4. -\tag #'notguitar \( \tenuto aes''8 -\tag #'notguitar \)|bes''1 ~| \time 2/4 bes''2| \bar "||" \time 4/4bes'4 \tenuto ^\markup{ piu animato} aes'8 -\tag #'notguitar \( \tenuto bes'8 -\tag #'notguitar \) ees''2
bes'8 \tenuto ^\markup{poco accellerando} bes'8 -\tag #'notguitar \( aes'8 bes'8 -\tag #'notguitar \) ees''4 \tenuto f''4|ges''8 -\tag #'notguitar \( f''8 -\tag #'notguitar \) des''8 -\tag #'notguitar \( bes'8 -\tag #'notguitar \) ees''4. \tenuto ees''8|ees''8 \tenuto ees''8 -\tag #'notguitar \( des''8 \< bes'8 -\tag #'notguitar \) aes'4 -\tag #'notguitar \( \tenuto ees''4 -\tag #'notguitar \)|ges''8 -\tag #'notguitar \( f''8 -\tag #'notguitar \) des''8 -\tag #'notguitar \( bes'8 -\tag #'notguitar \) aes'4 ees''4|ees''8 \tenuto ees''8 -\tag #'notguitar \( des''8 \! f''8 -\tag #'notguitar \) ges'4. ees''8
bes'8 \tenuto \> ^\markup{molto rit } bes'8 -\tag #'notguitar \( aes'8 f''8 -\tag #'notguitar \) ges'4. ees''8| \bar "||"ees''8 \tenuto \!\p ^\markup{ Tempo Primo} ees''8 -\tag #'notguitar \( des''8 bes'8 -\tag #'notguitar \) aes'4 \tenuto f''4 \tenuto|f''8 \cresc f''4 ees''8 des''8 bes''4. \<|des'''8 \tenuto des'''8 c'''8 aes''8 ges''4 \tenuto ees'''4 \tenuto \!\ottava #1
ees'''8 \tenuto ees'''8 des'''8 \< ees'''8 f'''4 aes'''8 -\tag #'notguitar \( \tenuto f'''8 -\tag #'notguitar \) \!\f|bes'''2 \tenuto \ottava #0 r4 aes''8 -\tag #'midi \f \menof f''8|bes''2 r4 aes''8 \tenuto \> f''8|c'''2 r8 \!\p f''4 bes''8
f''4. bes''8 ees''4. aes''8|ees''8 \tenuto ees''8 -\tag #'notguitar \( fes''8 ees''8 -\tag #'notguitar \) fes''4 \tenuto des''8 -\tag #'notguitar \( \tenuto aes''8 -\tag #'notguitar \)|ees''8 \tenuto ees''8 -\tag #'notguitar \( fes''8 ees''8 -\tag #'notguitar \) fes''4 \tenuto des''8 -\tag #'notguitar \( \tenuto aes''8 -\tag #'notguitar \)|bes'8 \tenuto bes'8 -\tag #'notguitar \( c''8 bes'8 -\tag #'notguitar \) des''4 \tenuto bes'8 -\tag #'notguitar \( \tenuto des''8 -\tag #'notguitar \)
bes'8 \tenuto bes'8 -\tag #'notguitar \( \< c''8 bes'8 -\tag #'notguitar \) \! f''2 \tenuto|ges''8 -\tag #'notguitar \( f''8 -\tag #'notguitar \) des''8 -\tag #'notguitar \( bes'8 -\tag #'notguitar \) ees''2 \fermata \breathe|r2 ^\markup{ a tempo} r8 des''8 \staccato \tenuto \p r8 bes'8 \staccato \tenuto|r2 r8 des''8 \staccato \tenuto r8 bes'8 \staccato \tenuto
bes'8 \tenuto -\tag #'midi \p \piup bes'8 -\tag #'notguitar \( aes'8 des''8 -\tag #'notguitar \) bes'2|bes'8 \tenuto bes'8 -\tag #'notguitar \( aes'8 bes'8 -\tag #'notguitar \) ges'2|f'8 -\tag #'notguitar \( \tenuto ees'8 -\tag #'notguitar \) ees'4 \tenuto des'2 \tenuto|f'8 -\tag #'notguitar \( ees'8 -\tag #'notguitar \) ees'4 \tenuto des'2 \tenuto|ges'8 -\tag #'notguitar \( \tenuto f'8 -\tag #'notguitar \) f'4 \tenuto ees'2
ges'8 -\tag #'notguitar \( \tenuto f'8 -\tag #'notguitar \) f'4 \tenuto ees'2 \tenuto|aes'8 -\tag #'notguitar \( \tenuto ges'8 -\tag #'notguitar \) ges'4 \tenuto f'2 \tenuto|aes'8 -\tag #'notguitar \( \tenuto ges'8 -\tag #'notguitar \) ges'4 \tenuto f'2 \tenuto|des''8 -\tag #'notguitar \( \tenuto c''8 -\tag #'notguitar \) c''4 \tenuto ^\markup{rit} aes'4 \tenuto c''4 \tenuto|bes'1 ~| \time 3/4 bes'2. \tenuto| \bar "|." }
celloMus={ \time 4/4 \repeat volta 2 {r2 r8 bes,8 \p -\tag #'notguitar ^\markup{pizz.} r8 des8|r2 r8 bes,8 r8 des8|r2 r8 bes,8 r8 ees8|r2 r8 bes,8 r8 ees8
r2 r8 bes,8 r8 f8|r2 r8 bes,8 r8 f8| }bes,8 \tenuto -\tag #'midi \p \pCantab -\tag #'notguitar ^\markup{arco} bes,8 -\tag #'notguitar \( aes,8 -\tag #'notguitar \) bes,8 \tenuto ees2 \tenuto|bes,8 \tenuto bes,8 -\tag #'notguitar \( aes,8 -\tag #'notguitar \) bes,8 ees4 -\tag #'notguitar \( \tenuto f4 -\tag #'notguitar \)
bes,8 \tenuto bes,8 -\tag #'notguitar \( aes,8 -\tag #'notguitar \) bes,8 \poco ees2|bes,8 \tenuto bes,8 -\tag #'notguitar \( aes,8 -\tag #'notguitar \) bes,8 \apoco ees4 -\tag #'notguitar \( \tenuto f4 -\tag #'notguitar \)|ges8 -\tag #'notguitar \( f8 -\tag #'notguitar \) des8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \) \cresc ees2 \tenuto|ges8 -\tag #'notguitar \( f8 -\tag #'notguitar \) des8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \) \< ees2 \tenuto
aes,8 -\tag #'notguitar \( \tenuto bes,8 -\tag #'notguitar \) bes,4 \tenuto ees2 \tenuto|aes,8 -\tag #'notguitar \( \tenuto \! bes,8 -\tag #'notguitar \) bes,4 \tenuto ees2 \tenuto|bes,8 \tenuto bes,8 -\tag #'notguitar \( aes,8 -\tag #'notguitar \) bes,8 ees2 \tenuto|bes,8 \tenuto bes,8 -\tag #'notguitar \( aes,8 -\tag #'notguitar \) bes,8 ees2 \tenuto
ees8 -\tag #'notguitar \( \dim ees'8 -\tag #'notguitar \) ees'8 -\tag #'notguitar \( ees8 -\tag #'notguitar \) ees8 -\tag #'notguitar \( ees'8 -\tag #'notguitar \) ees'8 -\tag #'notguitar \( ees8 -\tag #'notguitar \) \>|f8 -\tag #'notguitar \( f'8 -\tag #'notguitar \) f'8 -\tag #'notguitar \( f8 -\tag #'notguitar \) f8 -\tag #'notguitar \( f'8 -\tag #'notguitar \) f'8 -\tag #'notguitar \( f8 -\tag #'notguitar \)|ees8 -\tag #'notguitar \( ees'8 -\tag #'notguitar \) ees'8 -\tag #'notguitar \( ees8 -\tag #'notguitar \) \! ees8 -\tag #'notguitar \( ees'8 -\tag #'notguitar \) ees'8 -\tag #'notguitar \( ees8 -\tag #'notguitar \) \p|ges8 -\tag #'notguitar \( f8 -\tag #'notguitar \) des8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \) ees2 \tenuto|ges8 -\tag #'notguitar \( f8 -\tag #'notguitar \) des8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \) ees4 -\tag #'notguitar \( \tenuto f4 -\tag #'notguitar \)
bes,8 bes,8 -\tag #'notguitar \( aes,8 -\tag #'notguitar \) bes,8 ees2 \tenuto|bes,8 \tenuto bes,8 -\tag #'notguitar \( aes,8 -\tag #'notguitar \) bes,8 ees4 -\tag #'notguitar \( \tenuto f4 -\tag #'notguitar \)|ges8 -\tag #'notguitar \( f8 -\tag #'notguitar \) des8 -\tag #'notguitar \( \< bes,8 -\tag #'notguitar \) aes,4 -\tag #'notguitar \( \tenuto f4 -\tag #'notguitar \)|ges8 -\tag #'notguitar \( f8 -\tag #'notguitar \) \! des8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \) ees4 -\tag #'notguitar \( \tenuto \> f4 -\tag #'notguitar \) \breathe
bes,8 \tenuto \! bes,8 -\tag #'notguitar \( aes,8 -\tag #'notguitar \) bes,8 ~ bes,2|bes,8 \tenuto bes,8 -\tag #'notguitar \( aes,8 -\tag #'notguitar \) bes,8 ~ bes,2|r2 r8 des8 \mp -\tag #'notguitar ^\markup{pizz.} r8 bes,8|r2 r8 des8 r8 bes,8
r2 r8 des8 r8 bes,8|r2 r8 des8 r8 bes,8 \breathe|bes,8 \p -\tag #'notguitar ^\markup{arco} bes,8 -\tag #'notguitar \( aes,8 bes,8 -\tag #'notguitar \) ees2 \tenuto \poco|bes,8 \tenuto bes,8 -\tag #'notguitar \( aes,8 bes,8 -\tag #'notguitar \) ees4 -\tag #'notguitar \( \tenuto \apoco f4 -\tag #'notguitar \)
ges8 -\tag #'notguitar \( \cresc f8 -\tag #'notguitar \) des8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \) ees2|ges8 -\tag #'notguitar \( f8 -\tag #'notguitar \) des8 -\tag #'notguitar \( \< bes,8 -\tag #'notguitar \) aes,4. -\tag #'notguitar \( \tenuto ees8 -\tag #'notguitar \)|bes,4. -\tag #'notguitar \( \tenuto f8 -\tag #'notguitar \) ges8 -\tag #'notguitar \( f8 -\tag #'notguitar \) des8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \) \!|aes,4. -\tag #'notguitar \( \tenuto \mf ees8 -\tag #'notguitar \) ees4 \tenuto \> des4 \tenuto|aes,4. -\tag #'notguitar \( \tenuto ees8 -\tag #'notguitar \) ees4 -\tag #'notguitar \( \tenuto f4 -\tag #'notguitar \)
aes,4. -\tag #'notguitar \( \tenuto \!\p ees8 -\tag #'notguitar \) ees4 \tenuto des4 \tenuto|ges8 -\tag #'notguitar \( f8 -\tag #'notguitar \) des8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \) aes,4. -\tag #'notguitar \( \tenuto f,8 -\tag #'notguitar \)|aes,4. -\tag #'notguitar \( \tenuto ees8 -\tag #'notguitar \) bes,4. -\tag #'notguitar \( \tenuto f8 -\tag #'notguitar \)|aes,4. -\tag #'notguitar \( \tenuto \dim ees8 -\tag #'notguitar \) bes,4. -\tag #'notguitar \( \tenuto f8 -\tag #'notguitar \) \>|ges8 -\tag #'notguitar \( f8 -\tag #'notguitar \) des8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \) ees4. -\tag #'notguitar \( \tenuto f,8 -\tag #'notguitar \) \!
aes,4. -\tag #'notguitar \( \tenuto \p ees8 -\tag #'notguitar \) bes,4. -\tag #'notguitar \( \tenuto f8 -\tag #'notguitar \)|aes,4. -\tag #'notguitar \( \tenuto aes8 -\tag #'notguitar \) bes,4. -\tag #'notguitar \( \tenuto f8 -\tag #'notguitar \)|ges8 -\tag #'notguitar \( f8 -\tag #'notguitar \) des8 -\tag #'notguitar \( f8 -\tag #'notguitar \) ees8 -\tag #'notguitar \( ees'8 -\tag #'notguitar \) ees'8 -\tag #'notguitar \( ees8 -\tag #'notguitar \)| \time 2/4 ees8 -\tag #'notguitar \( ees'8 -\tag #'notguitar \) ees'8 -\tag #'notguitar \( ees8 -\tag #'notguitar \)| \bar "||" \time 4/4bes,8 -\tag #'notguitar \( \collaParte bes8 -\tag #'notguitar \) bes8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \) bes,8 -\tag #'notguitar \( bes8 -\tag #'notguitar \) bes8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \)
bes,8 -\tag #'notguitar \( bes8 -\tag #'notguitar \) bes8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \) bes,8 -\tag #'notguitar \( bes8 -\tag #'notguitar \) bes8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \)|bes,8 -\tag #'notguitar \( bes8 -\tag #'notguitar \) bes8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \) bes,8 -\tag #'notguitar \( bes8 -\tag #'notguitar \) bes8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \)|bes,8 -\tag #'notguitar \( bes8 -\tag #'notguitar \) bes8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \) c8 -\tag #'notguitar \( c'8 -\tag #'notguitar \) \< c'8 -\tag #'notguitar \( c8 -\tag #'notguitar \)|bes,8 -\tag #'notguitar \( bes8 -\tag #'notguitar \) bes8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \) c8 -\tag #'notguitar \( c'8 -\tag #'notguitar \) c'8 -\tag #'notguitar \( c8 -\tag #'notguitar \)|bes,8 -\tag #'notguitar \( \! bes8 -\tag #'notguitar \) bes8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \) bes,8 -\tag #'notguitar \( bes8 -\tag #'notguitar \) bes8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \)
bes,8 -\tag #'notguitar \( bes8 -\tag #'notguitar \) bes8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \) bes,8 -\tag #'notguitar \( bes8 -\tag #'notguitar \) bes8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \)| \bar "||"ees8 -\tag #'notguitar \( \p des8 bes,8 f8 -\tag #'notguitar \) aes8 -\tag #'notguitar \( c'8 -\tag #'notguitar \) c'8 -\tag #'notguitar \( aes8 -\tag #'notguitar \)|aes8 \cresc aes4 ges8 bes8 -\tag #'notguitar \( des'8 -\tag #'notguitar \) des'8 -\tag #'notguitar \( bes8 -\tag #'notguitar \) \<|bes8 bes4 aes8 c'8 -\tag #'notguitar \( ees'8 -\tag #'notguitar \) \! ees'8 -\tag #'notguitar \( c'8 -\tag #'notguitar \)
c'8 \< c'4 bes8 des'8 -\tag #'notguitar \( f'8 -\tag #'notguitar \) \! f'8 -\tag #'notguitar \( des'8 -\tag #'notguitar \)|ees'8 \tenuto \f ees'8 -\tag #'notguitar \( \accent des'8 bes8 -\tag #'notguitar \) f'2 \tenuto|ees'8 \tenuto -\tag #'midi \f \menof ees'8 -\tag #'notguitar \( des'8 bes8 -\tag #'notguitar \) aes8 -\tag #'notguitar \( ees'8 -\tag #'notguitar \) ees'8 -\tag #'notguitar \( aes8 -\tag #'notguitar \) \>|ees'8 \tenuto ees'8 -\tag #'notguitar \( des'8 f8 -\tag #'notguitar \) aes2 \tenuto \!
aes,8 -\tag #'notguitar \( \p aes8 -\tag #'notguitar \) aes8 -\tag #'notguitar \( aes,8 -\tag #'notguitar \) aes,8 -\tag #'notguitar \( aes8 -\tag #'notguitar \) aes8 -\tag #'notguitar \( aes,8 -\tag #'notguitar \)|aes,8 -\tag #'notguitar \( aes8 -\tag #'notguitar \) aes8 -\tag #'notguitar \( aes,8 -\tag #'notguitar \) aes,8 -\tag #'notguitar \( aes8 -\tag #'notguitar \) aes8 -\tag #'notguitar \( aes,8 -\tag #'notguitar \)|aes,8 -\tag #'notguitar \( aes8 -\tag #'notguitar \) aes8 -\tag #'notguitar \( aes,8 -\tag #'notguitar \) aes,8 -\tag #'notguitar \( aes8 -\tag #'notguitar \) aes8 -\tag #'notguitar \( aes,8 -\tag #'notguitar \)|ges,8 -\tag #'notguitar \( ges8 -\tag #'notguitar \) ges8 -\tag #'notguitar \( ges,8 -\tag #'notguitar \) ges,8 -\tag #'notguitar \( ges8 -\tag #'notguitar \) ges8 -\tag #'notguitar \( ges,8 -\tag #'notguitar \)
aes,8 -\tag #'notguitar \( aes8 -\tag #'notguitar \) aes8 -\tag #'notguitar \( \< aes,8 -\tag #'notguitar \) aes8 -\tag #'notguitar \( \! f8 -\tag #'notguitar \) des8 -\tag #'notguitar \( bes,8 -\tag #'notguitar \)|\tag #'notguitar { \acciaccatura { bes,16[ ges] } des'2 } \tag #'midi { bes,16 ges des'4. } \tag #'guitar { <bes, ges des'>2\arpeggio } r2 \fermata \breathe|bes,8 \tenuto -\tag #'midi \p \piup ^\markup{ a tempo} bes,8 -\tag #'notguitar \( aes,8 -\tag #'notguitar \) bes,8 ~ bes,2|bes,8 bes,8 -\tag #'notguitar \( aes,8 -\tag #'notguitar \) bes,8 ~ bes,2
bes,8 \tenuto bes,8 -\tag #'notguitar \( aes,8 -\tag #'notguitar \) bes,8 ees2|bes,8 bes,8 -\tag #'notguitar \( aes,8 -\tag #'notguitar \) bes,8 ees2|r2 r8 bes,8 -\tag #'notguitar ^\markup{pizz.} r8 des8|r2 r8 bes,8 r8 des8|r2 r8 bes,8 r8 ees8
r2 r8 bes,8 r8 ees8|r2 r8 bes,8 r8 f8|r2 r8 bes,8 r8 f8|R1|r4 r8 bes,8 r8 des8 r4| \time 3/4 r4 r8 bes,8 r8 des8 \laissezVibrer ^\markup{vib}| \bar "|." }

theSubtitle=\markup { Inspired by the Mongolian folksong \italic { Grassland Ode } \epsfile #Y #2 #"caoyuansong.eps" }

#(set-global-staff-size 19)
\bookpart{
\header {
title="Lullaby to an Eastern Child"
subtitle=\theSubtitle
composer="Chris Brown"
dedication="To Tristram"
copyright = \markup { #(ly:export (ly:wide-char->utf-8 #xA9)) "Chris Brown, 18 Dec 2008.  Licensed under Creative Commons Attribution 3.0." }
mutopiacomposer="BrownCJ"
mutopiainstrument="Flute, and 'Cello or Guitar"
date="December 2008"
style="Romantic"
source="Typeset from the manuscript by permission of the composer"
copyright="Creative Commons Attribution 3.0"
maintainer="Silas Brown"
maintainerWeb="http://ssb22.user.srcf.net/"

 footer = "Mutopia-2009/03/05-1638"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2009. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}
\paper {
page-limit-inter-system-space=##t ragged-bottom=##t ragged-last-bottom=##t
} \score {
<<
\new Staff << \context Voice = flute {
  \set Staff.instrumentName = \markup { Flute }
  \clef treble \overrides \key des \major \keepWithTag #'notguitar \fluteMus
} >>

\new Staff << \context Voice = cello {
  \set Staff.instrumentName = \markup { \center-column { "'Cello" "/ Guitar" } }
  \clef bass \overrides \key des \major \keepWithTag #'notguitar \celloMus } >>
>>
\layout {} } }

\bookpart{
\header {
title="Lullaby to an Eastern Child"
subtitle=\theSubtitle
composer="Chris Brown"
dedication="To Tristram"
tagline = ""
copyright = \markup { #(ly:export (ly:wide-char->utf-8 #xA9)) "Chris Brown, 18 Dec 2008.  Licensed under Creative Commons Attribution 3.0." }
}
\paper {
page-limit-inter-system-space=##t ragged-bottom=##t ragged-last-bottom=##t
} \score {
<<
\new Staff << \context Voice = flute {
  \set Staff.instrumentName = \markup { Flute }
  \clef treble \overrides \key des \major \keepWithTag #'notguitar \fluteMus
} >>

\new StaffGroup <<
  \new Staff { \set Staff.instrumentName = "Guitar" \clef "G_8" \key des \major \overrides \keepWithTag #'guitar \celloMus }
  \new TabStaff {
\set Staff.instrumentName = "Guitar"
\override TextScript #'padding = #2.0
\override DynamicLineSpanner #'padding = #2.0
\override Staff.TimeSignature  #'style = #'numbered
\override Score.Hairpin #'after-line-breaking = ##t
\keepWithTag #'guitar \celloMus }

%{  \new TabStaff {
\set Staff.instrumentName = "Mandolin"
\set TabStaff.stringTunings = #mandolin-tuning
\override TextScript #'padding = #2.0
\override DynamicLineSpanner #'padding = #2.0
\override Staff.TimeSignature  #'style = #'numbered
\override Score.Hairpin #'after-line-breaking = ##t
\keepWithTag #'guitar \transpose c c' { \celloMus } } %}
>>
>>
\layout {} } }

\bookpart{
\header {
title="Lullaby to an Eastern Child"
subtitle=\theSubtitle
composer="Chris Brown"
dedication="To Tristram"
tagline = ""
copyright = \markup { #(ly:export (ly:wide-char->utf-8 #xA9)) "Chris Brown, 18 Dec 2008.  Licensed under Creative Commons Attribution 3.0." }
}
\paper{
page-limit-inter-system-space=##t ragged-bottom=##t ragged-last-bottom=##t
} \score {
<<
\new Staff << \context Voice = flute {
  \set Staff.instrumentName = \markup { Flute }
  \clef treble \overrides \key des \major \keepWithTag #'notguitar \fluteMus
} >>
>>
\layout {} } }

\score { \unfoldRepeats
<<
\new Staff {
  \set Staff.midiInstrument = "flute"
  \keepWithTag #'midi \fluteMus
}
\new Staff {
  \set Staff.midiInstrument = "acoustic guitar (nylon)"
  \keepWithTag #'midi \celloMus
} >>
\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 84 4) }
}}


