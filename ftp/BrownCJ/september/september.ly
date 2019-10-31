\version "2.12.3"

overrides = {
\override TextScript #'padding = #2.0
\override DynamicLineSpanner #'padding = #2.0
\override Staff.TimeSignature  #'style = #'numbered
\override Score.Hairpin #'after-line-breaking = ##t
#(set-accidental-style 'modern-cautionary)
}

pCantab=_\markup{\dynamic p \italic cantabile}
mfEspress=_\markup{\dynamic mf \italic espress.}
ppsost=_\markup{\dynamic pp \italic sost}
menof=_\markup{\italic meno \dynamic f}
piup=_\markup{\italic piu \dynamic p}
piumosso=^\markup{piu mosso}
simpp=_\markup{\italic sim \dynamic pp}
pocof=_\markup{\italic poco \dynamic f}
poco=_\markup{\italic poco}
apoco=_\markup{\italic {a poco}}
apocodim=_\markup{\italic {a poco dim}}
pocoPesante=_\markup{\italic {poco pesante}}
piuPesante=_\markup{\italic {piu pesante}}
cresc=_\markup{\italic cresc}
dim=_\markup{\italic dim}



fluteMus={ \time 4/4 \key c \major r1^\markup{Larghetto}|e'4 \( \pCantab g'2 c''4 \<|f'2. \) \> r4 \!|e'4 \(-\tag #'midi \p g'2 \< c''4|e''4. \! f''16 e''16 d''2 \) \>\breathe 
 e''4 \( \! g''2 \< c'''4 \) \!| f''2. \> r4 \!| e''4 \( \mf g''2 \< c'''4 \)| e'''4. \( f'''8 d'''4. \! e'''16 \) f'''16|\time 7/4 g'''2 \pocof c'''4 \( e'''4. f'''8 \) d'''4. \( e'''16 f'''16 \)
 g'''2 c'''4 \( a''4. c'''8 \) g''2 ~ \dim|\time 4/4 g''2. \tenuto r4|e'4 \( \p g'2 \< c'4 \)|f'2. \> r4|e''4 \(-\tag #'midi \p g''2 \< c''4 \) \!
 f''2 \tenuto r8 e''8 f''8 \( \< e''16 f''16|\time 5/4 g''4 \) c'''2 \! a''4. \( e''16 f''16 \)|\time 4/4 g''2 \( a''2 \)|e''4. \( f''8 \poco d''4. e''16 f''16|g''4 \apocodim c''4 a'4. c''8 \) \breathe
 c''1 ~ \pp|\time 5/4 c''1 r4|\time 4/4 a'4 \( \pCantab f''4-\tag #'midi \p a'4 g'4|a'4 \times 2/3 {f''8 e''8 d''8 ~} d''4 c''4 \)|a'4 \( f''4 \< a'4 g'4 \!
 f'4 \times 2/3 {bes'8 a'8 \> g'8 ~} g'4 \! f'4 \)| e'4 \( \piup c''4 e'4 d'4 \)|e'4 \( c''4 e'4 d'4 \)|e''4 \( d''4 \) e'''4 \( \< d'''4 \) \!|r8 \times 2/3 {c'''16 a''16 c'''16 ~} c'''4 r8 \times 2/3 {b''16 g''16 b''16 ~} b''4
 r8 \times 2/3 {c'''16 a''16 c'''16 ~} c'''4 r8 \times 2/3 {d'''16 b''16 d'''16 ~} d'''4| r8 \times 2/3 {e'''16 c'''16 e'''16 ~} e'''4 r8 \times 2/3 {d'''16 b''16 g''16 ~} g''4|r8 \times 2/3 {c'''16 a''16 c'''16 ~} c'''4 r8 \times 2/3 {b''16 g''16 d''16 ~} d''4|r8 \times 2/3 {d''16 b'16 d''16 ~} d''8 e''8 r8 \times 2/3 {d''16 b'16 d''16 ~} d''8 f''8
 r8 \times 2/3 {e''16 c''16 e''16 ~} e''8 f''8 r8 \times 2/3 {e''16 c''16 \< e''16 ~} e''8 \! g''8| r8 \times 2/3 {a''16 f''16 a''16 ~} a''8 c'''8 r8 \times 2/3 {a''16 f''16 a''16 ~ \<} a''8 \! d'''8|\bar "||" r4 \piumosso r8 a'8 \( \mf f''2 ~|f''4 \) r8 a'8 \mp f''2 ~
 f''2 r8 a'8 \( \mf g'4| e''2 \) r8 a'8 \( \mp g'4| e''2 \) r8 g'8 \( \< f'4| d''2 \) \! r8 \mf d'8 \( e'4|\time 3/4 c''2 \) r8 f'8 \( \mp
 e'4 c''2 \) \fermata\breathe|\time 4/4 c''4 \mp^\markup{a tempo} c''2 c''4|c''2 \( \< d''2 \) \!|a''4 \( \mfEspress f''2 a''4 \)|a''4 \( c'''2 a''4 \)
 a''4 \( f''2 a''4 \)| a''4 \( c'''2 g''4 \)|a''4 \( f''2\once \override TextScript #'outside-staff-padding = #0 d''4 \)^\markup{poco}|d''4 \( f''2^\markup{a poco} c''4 \)|c''4\staccato \tenuto ^\markup{rit} c''2 \< cis''4
 d''2 \( fis''2 \) \!|\bar "||" \key d \major a''4 \( \pocof^\markup{a tempo} fis''2 a''4 \)|cis'''4 \( a''2 cis'''4 \)|d'''4\tenuto d'''4\tenuto \times 2/3 {d'''4 e'''4 fis'''4}|cis'''4 \( a''2 fis''4 \)
 cis'''4 \( \poco a''2 fis''4 \) \dim| cis'''4 \( \> a''2 fis''4 \)|g''4 \!\tenuto g''4\tenuto \times 2/3 {g''4 a''4 \< bes''4}|a''4 \( \! f''2 a''4 \)|cis'''4 \( a''2 \< cis'''4 \)
 d'''4 \f\tenuto d'''4\tenuto \times 2/3 {d'''4 e'''4 fis'''4}| cis'''4 \( a''2 fis''4 \)|d'''4\tenuto d'''4\tenuto \times 2/3 {d'''4 e'''4 fis'''4}|cis'''4 \( a''2 fis''4 \)|fis''4 \( d''2 a''4 \)|fis''4 \( d''2 a''4 \)
 a''4 \( cis'''4 \) d''2\tenuto \accent \breathe| a''4 \( \mp c'''4 \) d''2 ~ \poco^\markup{rit}|\time 3/4 d''2. ~ \apoco| d''2 \dim r4\fermata|\bar "||" \time 4/4 \key c \major r1^\markup{Tempo Primo}
 e'4 \( \pCantab g'2 c''4 \) \<| f'2. \> r4 \!|e'4 \( g'2 \< c''4|e''4. \! f''16 e''16 \> d''2 \)\breathe|e''4 \( \! g''2 \< c'''4 \)
 f''2. \> r4 \!| e''4 \( g''2 \< c'''4 \)| e'''4. \( \! f'''8 d'''4. \< e'''16 f'''16 \) \!|\time 7/4 g'''2 \pocof c'''4 \( e'''4. f'''8 \) d'''4. \( e'''16 f'''16 \)
 g'''2 c'''4 \( a''4. c'''8 \) g''2 ~ \dim|\time 4/4 g''2. r4|e'4 \( \p g'2 \< c''4 \)|f'2. \> r4|e''4 \( \! g''2 \< c''4 \)
 f''2 \! r8 e''8 \( f''8 e''16 \< f''16 \)|\time 5/4 g''4 \! c'''2 a''4. \( e''16 f''16|\time 4/4 g''2 a''2 \)|g''4. \( f''8 \poco d''4. e''16 f''16|g''4 \apocodim c''4 a'4. c''8 \)
 g'2. ~ \( \mp g'8 f'8 \)| g'2. ~ \( \p g'8 f'8 \)|\time 5/4 c''1 ~ \pp c''4 ~|\set Score.timeSignatureFraction = #'(4 . 4) \once \override Hairpin #'circled-tip = ##t c''1 \> \fermata s4 \! \bar "|."  }

pianoA={ \time 4/4 \key c \major <c' e'>4 \ppsost\tenuto <c' e'>4 \<\tenuto <c' e'>4\tenuto <a c'>4 \!\tenuto|<c' e'>4 \simpp <c' e'>4 \< <c' e'>4 <a c'>4 \!|<a b>4 <a c'>4 \> <a d'>4 <a c'>4 \!|<c' e'>4 <c' d'>4 \< <d' f'>4 <f' a'>4 \!|<e' g'>4 <c' e'>4 <d' f'>4 <d' e'>4
 <e' g'>4 <c' e'>4 \> <c' e'>4 <a c'>4 \!| <a b>4 <a c'>4 <a d'>4 <a c'>4| <c' e'>4 \cresc <c' d'>4 <c' e'>4 <c' d'>4| <a c'>4 \< <b d'>4 <b d'>4 \! <a c'>4|\time 7/4 <b d'>4 \mf <c' e'>4 <c' e'>4 <a c'>4 <a b>4 <b d'>4 <b c'>4
 <c' e'>4 <e' g'>4 <e' g'>4 <a' c''>4 <e' g'>4 <c' e'>4 <c' e'>4 \dim|\time 4/4 <c' e'>4 <c' e'>4 \> <c' e'>4 <a c'>4 \pp|<c' e'>4 d'2 <a c'>4|<a b>4 <a c'>4 <a d'>4 <a c'>4|<a b>4 <c' e'>4 \< <c' e'>4 \! <c' d'>4
 <b f'>4 <f' a'>4 <a' c''>4 <f' a'>4 \<|\time 5/4 <e' g'>4 <c' e'>4 \mf <e' g'>4 <a' c''>4 <d' f'>4|\time 4/4 <c' e'>4 <c' d'>4 <c' e'>4 <c' d'>4|e'4. d'8 \poco <b d'>4 <b c'>4|<b d'>4 \apocodim <b c'>4 <a c'>4 <c' e'>4
 e'4. d'8 e'4. d'8|\time 5/4 e'4. d'8 \pp <c' e'>4 <c' d'>4 <c' e'>4|\time 4/4 <a c'>4 <a c'>4 <c' e'>4 <g b>4|<f a>4 <b d'>4 <b d'>4 <a c'>4|<f' a'>4 <f' a'>4 \< <a' c''>4 <e' g'>4 \!
 <d' f'>4 <e' g'>4 \> <e' f'>4 <d' f'>4 \!| <c' e'>4 \pp <c' e'>4 <c' e'>4 <c' d'>4|<c' e'>4 <c' e'>4 <c' e'>4 <d' f'>4|<e' g'>4 <d' f'>4 \< <e' g'>4 <d' f'>4|<a c'>4 \! <f' a'>4 <e' g'>4 <b d'>4
 <d' f'>4 <c' e'>4 <d' f'>4 <g b>4| <e' g'>4 <g b>4 <e' g'>4 <g' b'>4|<f' a'>4 <a c'>4 <b d'>4 <d' f'>4|<d' f'>4 <g b>4 <d' f'>4 <f' a'>4
 <e' g'>4 <g b>4 <a c'>4 \< <b d'>4| <c' e'>4 <a c'>4 \! <a c'>4 <d' f'>4|\bar "||" <d' f'>4 <a c' f'>4\arpeggio <f' a'>2 ~\tenuto|<a' c''>4 <a c' f'>4\arpeggio <f' a'>2 ~\tenuto
 <a' c''>4 <a c' f'>4 ~ \<\arpeggio f'4 \! <e' g'>4 ~| <e' g'>4 <a c' f'>4 ~ \>\arpeggio f'4 \! <e' g'>4 ~| <e' g'>4 <a c' f'>4\arpeggio <f' a'>2\tenuto| <f' a'>4 <a c' f'>4 ~\arpeggio f'4 <e' g'>4|\time 3/4 <a' c''>4 \times 2/3 {a'16 \( \> c''16 d'16 ~ \)} d'8 ~ d'4 ~ \!
 \times 2/3 {d'8 f'8 c'8 ~} c'2\fermata \breathe|\time 4/4 r4 <a c' f'>4\arpeggio\tenuto <f' a'>2 \( \<|<a' c''>4 \) <a c' f'>4 \!\arpeggio\tenuto <f' a'>2 \(|<a' c''>4 \) \mf <a c' f'>4\arpeggio\tenuto <f' a'>2 \(|<c'' e''>4 \) <a c' f'>4\arpeggio\tenuto <f' a'>2 \(
 <a' c''>4 \) <a c' f'>4\arpeggio\tenuto <a' c''>2 \( \<| <c'' e''>4 \) \! <a c' f'>4\arpeggio\tenuto <e' g'>2 \(|<a' c''>4 \) <a c' f'>4\arpeggio\tenuto <f' a'>2 \(|<d'' f''>4 \) <a c' f'>4\arpeggio\tenuto <a' c''>2 \(|<e'' g''>4 \) <a c' f'>4 ~\arpeggio f'4 \< e'4
 \times 2/3 {f'8 \mf a'8 d'8 ~} d'4 \< \times 2/3 {d'8 fis'8 \! cis'8 ~} cis'4 ~|\bar "||" \key d \major cis'4 \pocoPesante a8 cis'8 ~ cis'4 a8 cis'8 ~|cis'4 cis'8 e'8 ~ e'4 cis'8 e'8 ~|e'4 b8 d'8 ~ d'4 b8 d'8 ~|d'4 a8 cis'8 ~ cis'4 a8 cis'8 ~
 cis'4 cis'8 e'8 ~ e'4 a8 cis'8 ~| cis'4 cis'8 e'8 ~ e'4 a8 cis'8 ~|cis'4 cis'8 e'8 ~ e'4 d'8 f'8 ~|f'4 a8 c'8 ~ c'4 a8 cis'8 ~ \<|cis'4 cis'8 e'8 ~ e'4 \! cis'8 e'8 ~
 e'4 \piuPesante e'8 g'8 ~ g'4 e'8 g'8 ~| g'4 d'8 fis'8 ~ fis'4 d'8 fis'8 ~|fis'4 a8 cis'8 ~ cis'4 a8 cis'8 ~|cis'4 cis'8 e'8 ~ e'4 a8 cis'8 ~|cis'4 a8 cis'8 ~ cis'4 cis'8 e'8 ~|e'4 a8 cis'8 ~ cis'4 cis'8 e'8 ~
 e'4 cis'8 e'8 ~ e'4 a8 cis'8 ~| cis'4 \poco a8 c'8 ~ c'4 a8 c'8 ~|\time 3/4 c'4 \apocodim \times 2/3 {c'8 e'8 a8 ~} a4| a8 c'8 ~ c'4 a8\tenuto \fermata c'8\tenuto \fermata|\bar "||" \time 4/4 \key c \major <c' e'>4 \ppsost\tenuto ^\markup{Tempo Primo} <c' e'>4\tenuto <c' e'>4\tenuto <a c'>4\tenuto
 <c' e'>4 \simpp <c' e'>4 <c' e'>4 \< <a c'>4 \!| <a b>4 \> <a c'>4 <a d'>4 \! <a' c'>4|<c' e'>4 <c' d'>4 \< <d' f'>4 <f' a'>4 \!|<e' g'>4 <c' e'>4 <d' f'>4 <d' e'>4|<e' g'>4 <c' e'>4 \> <c' e'>4 <a c'>4 \!
 <a b>4 <a c'>4 <a d'>4 <a c'>4| <c' e'>4 \cresc <c' d'>4 <c' e'>4 \< <c' d'>4| <a c'>4 \! <b d'>4 <b d'>4 <a c'>4|\time 7/4 <b d'>4 \mf <c' e'>4 <c' e'>4 <a c'>4 <a b>4 <b d'>4 <b c'>4
 <c' e'>4 <e' g'>4 <e' g'>4 <a' c''>4 <e' g'>4 <c' e'>4 <c' e'>4 \dim|\time 4/4 <c' e'>4 \> <c' e'>4 <c' e'>4 <a c'>4 \pp|<c' e'>4 d'2 <a c'>4|<a b>4 <a c'>4 <a d'>4 <a c'>4|<a b>4 <c' e'>4 \< <c' e'>4 <c' d'>4 \!
 <b f'>4 \mp <f' a'>4 <a' c''>4 <d' f'>4 \<|\time 5/4 <e' g'>4 <c' e'>4 \mf <e' g'>4 <a' c''>4 <d' f'>4|\time 4/4 <c' e'>4 <c' d'>4 <c' d'>4 \< <c' e'>4|e'4. \! d'8 \poco <b d'>4 <b c'>4|<b d'>4 \apocodim <b c'>4 <a c'>4 <c' e'>4
 e'4. d'8 e'4. d'8| e'4. d'8 e'4. d'8|\time 5/4 e'4. d'8 <c' e'>4\tenuto <c' d'>4\tenuto <c' e'>4\tenuto|\set Score.timeSignatureFraction = #'(4 . 4) \once \override Hairpin #'circled-tip = ##t <a c'>2 <e' g'>2\fermata s4 }

pianoB={ \time 4/4 \key c \major s1|s1|s1|s1|s1
 s1| s1| s1| s1|\time 7/4 s1 s2 s4
 s1 s2 s4|\time 4/4 s1|s4 c'4 \( b4 \) s4|s1|s1
 s1|\time 5/4 s1 s4|\time 4/4 s1|c'2 s4 s4|s1
 c'2 c'2|\time 5/4 c'2 s2 s4|\time 4/4 s1|s1|s1
 s1| s1|s1|s1|s1
 s1| s1|s1|s1
 s1| s1|\bar "||" s1|s1
 s1| s1| s1| s1|\time 3/4 s2 s4
 s2 s4|\time 4/4 s1|s1|s1|s1
 s1| s1|s1|s1|s1
 s1|\bar "||" \key d \major s1|s1|s1|s1
 s1| s1|s1|s1|s1
 s1| s1|s1|s1|s1|s1
 s1| s1|\time 3/4 s2 s4| s2 s4|\bar "||" \time 4/4 \key c \major s1
 s1| s1|s1|s1|s1
 s1| s1| s1|\time 7/4 s1 s2 s4
 s1 s2 s4|\time 4/4 s1|s4 c'4 \( b4 \) s4|s1|s1
 s1|\time 5/4 s1 s4|\time 4/4 s1|c'2 s2|s1
 c'2\tenuto c'2\tenuto| c'2\tenuto c'2\tenuto|\time 5/4 c'2 s2 s4|\set Score.timeSignatureFraction = #'(4 . 4) \once \override Hairpin #'circled-tip = ##t s1 s4 }

pianoC={ \time 4/4 \key c \major <c g>4\tenuto <c g>4\tenuto <c g>4\tenuto <a, f>4\tenuto|<c g>4 <c g>4 <c g>4 <a, f>4|<a, f>4 <a, f>4 <a, g>4 <a, f>4|<g, f>4 <a, g>4 <b, g>4 <a, g>4|<b, g>4 <a, g>4 <b, g>4 <b, a>4
 <a, a>4 <b, g>4 <a, g>4 <a, f>4| <a, f>4 <a, f>4 <a, g>4 <a, f>4| <g, f>4 <a, g>4 <g, f>4 <a, g>4| <g, e>4 <a, f>4 <a, g>4 <a, f>4|\time 7/4 <g, g>4 <a, g>4 <g, g>4 <a, g>4 <g, f>4 <a, f>4 <g, f>4
 <g, g>4 <a, g>4 <g, g>4 <f, f>4 <a, g>4 <a, g>4 <b, g>4|\time 4/4 <c g>4 <c g>4 <c g>4 <a, f>4|<g, g>4 <a, g>2 <a, f>4|<a, f>4 <a, f>4 <a, g>4 <a, f>4|<a, e>4 <a, e>4 <g, e>4 <f, f>4
 <f, f>4 <d c'>4 <d c'>4 <c b>4|\time 5/4 <c b>4 <c a>4 <c b>4 <c a>4 <a, g>4|\time 4/4 <g, g>4 <a, g>4 <a, g>4 <a, f>4|<g, f>2 <a, f>4 <a, g>4|<a, f>4 <a, g>4 <a, f>4 <a, g>4
 <g, f>2 <g, f>2|\time 5/4 <g, f>2 <g, g>4 <a, g>4 <g, g>4|\time 4/4 <a, f>4 <a, f>4 <c a>4 <g, e>4|<f, d>4 <a, f>4 <g, e>4 <f, f>4|<f d'>4 <f d'>4 <e c'>4 <e c'>4
 <d c'>4 <d bes>4 <d bes>4 <d a>4| <c g>4 <c g>4 <c g>4 <a, f>4|<a, e>4 <a, e>4 <a, e>4 <a, f>4|<a, g>4 <a, f>4 <a, g>4 <a, f>4|<a, f>2\tenuto <g, e>2\tenuto
 <g, e>2\tenuto <a, f>2\tenuto| <g, e>2\tenuto <b, g>2\tenuto|<a, f>2\tenuto <b, g>2\tenuto|<a, f>1 ~
 <a, f>1| <a, f>1|\bar "||" <f, f>1|<d, d>1
 <f, f>1| <e, e>1| <c, c>1| <d, d>1|\time 3/4 <c, c>2 ~ <c, c>8 <f, f>8 ~
 <f, f>2.\fermata \breathe|\time 4/4 <a, f>1|<f, f>1|<d, d>1|<c, c>1
 <a, f>1| <a, g>1|<a, f>1|<a, f>1|<a, g>1
 <a, f>2 <a, fis>2|\bar "||" \key d \major <a, fis>2 <a, fis>2|<a, a>2 <a, a>2|<a, g>2 <a, g>2|<a, fis>2 <a, fis>2
 <a, a>2 <a, fis>2| <a, a>2 <a, fis>2|<a, g>2 <a, g>2|<a, f>2 <a, f>2|<a, g>2 <a, a>2
 <a, g>2 <a, a>2| <a, fis>2 <a, fis>2|<a, g>2 <a, g>2|<a, fis>2 <a, fis>2|<a, fis>2 <a, g>2|<a, fis>2 <a, g>2
 <a, g>2 <a, fis>2| <a, g>2 <a, f>2|\time 3/4 <d f>2.| <f, d>2.\fermata|\bar "||" \time 4/4 \key c \major <c e>4\tenuto <c e>4\tenuto <c e>4\tenuto <a, f>4\tenuto
 <c e>4 <c e>4 <c e>4 <a, f>4| <a, f>4 <a, f>4 <a, g>4 <a, f>4|<g, f>4 <a, g>4 <b, g>4 <a, g>4|<b, g>4 <a, g>4 <b, g>4 <b, a>4|<a, a>4 <b, g>4 <a, g>4 <a, f>4
 <a, f>4 <a, f>4 <a, g>4 <a, f>4| <a, f>4 <a, g>4 <a, f>4 <a, g>4| <g, e>4 <a, f>4 <a, g>4 <a, f>4|\time 7/4 <g, g>4 <a, g>4 <g, g>4 <a, g>4 <g, f>4 <a, f>4 <g, f>4
 <g, g>4 <a, g>4 <g, g>4 <f, f>4 <a, g>4 <a, g>4 <b, g>4|\time 4/4 <c g>4 <c g>4 <c g>4 <a, f>4|<g, g>4 <a, g>2 <a, f>4|<a, f>4 <a, f>4 <a, g>4 <a, f>4|<a, e>4 <a, e>4 <g, e>4 <g, f>4
 <f, f>4 <d c'>4 <d c'>4 <c b>4|\time 5/4 <c b>4 <c a>4 <c b>4 <c a>4 <a, g>4|\time 4/4 <g, g>4 <a, g>4 <a, g>4 <a, f>4|<g, g>2 <a, f>4 <a, g>4|<a, f>4 <a, g>4 <a, f>4 <a, g>4
 <g, g>2\tenuto <a, f>2\tenuto| <g, g>2\tenuto <a, f>2\tenuto|\time 5/4 <g, g>2\tenuto <g, g>4\tenuto <a, g>4\tenuto <g, g>4\tenuto|\set Score.timeSignatureFraction = #'(4 . 4) \once \override Hairpin #'circled-tip = ##t <a, f>2 <c, c>2\fermata s4 }

#(set-global-staff-size 20) % piano
% #(set-global-staff-size 24) % flute
\bookpart{
\header {
title="September Song"
subtitle="Vocalise for flute and piano"
composer="Chris Brown"
dedication="for Silas"
copyright = \markup { #(ly:export (ly:wide-char->utf-8 #xA9)) "Chris Brown, Sept 2011.  Licensed under Creative Commons Attribution 3.0." }
mutopiacomposer="BrownCJ"
mutopiainstrument="Flute and Piano"
date="September 2011"
style="Romantic"
source="Typeset from the manuscript by permission of the composer"
maintainer="Silas Brown"
maintainerWeb="http://ssb22.user.srcf.net/"

 mutopiacopyright="Creative Commons Attribution 3.0"
 footer = "Mutopia-2011/10/01-1792"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}
\paper {
page-limit-inter-system-space=##t ragged-bottom=##t ragged-last-bottom=##t
} \score {
<<
\new Staff << \context Voice = flute {
  \set Staff.instrumentName = \markup { Flute }
  \clef treble \overrides \removeWithTag #'midi \fluteMus
} >>

\new PianoStaff <<
\set PianoStaff.instrumentName = \markup { Piano }
\new Staff << \context Voice = pnoA {
  \clef treble \overrides \voiceOne \removeWithTag #'midi \pianoA
} \context Voice = pnoB {
  \clef treble \overrides \voiceTwo \removeWithTag #'midi \pianoB
} >>
\new Staff << \context Voice = pnoC {
  \clef bass \overrides \removeWithTag #'midi \pianoC
} >>
>>
>> \layout {} } }

\bookpart{
\header {
title="September Song"
subtitle="Vocalise for flute and piano"
composer="Chris Brown"
dedication="for Silas"
tagline = ""
copyright = \markup { #(ly:export (ly:wide-char->utf-8 #xA9)) "Chris Brown, Sept 2011.  Licensed under Creative Commons Attribution 3.0." }
}
\paper{
page-limit-inter-system-space=##t ragged-bottom=##t ragged-last-bottom=##t
} \score {
<<
\new Staff << \context Voice = flute {
  \set Staff.instrumentName = \markup { Flute }
  \clef treble \overrides \removeWithTag #'midi \fluteMus
} >>
>> \layout {} } }

\score { \unfoldRepeats
<<
\new Staff {
  \set Staff.midiInstrument = "flute"
      \set Staff.midiMinimumVolume = #0.7
      \set Staff.midiMaximumVolume = #0.9
 \keepWithTag #'midi \fluteMus
}
\new Staff {
  \set Staff.midiInstrument = "acoustic grand"
      \set Staff.midiMinimumVolume = #0.2
      \set Staff.midiMaximumVolume = #0.4
  \keepWithTag #'midi \pianoA
}
\new Staff {
  \set Staff.midiInstrument = "acoustic grand"
      \set Staff.midiMinimumVolume = #0.2
      \set Staff.midiMaximumVolume = #0.4
  \keepWithTag #'midi \pianoB
}
\new Staff {
  \set Staff.midiInstrument = "acoustic grand"
      \set Staff.midiMinimumVolume = #0.1
      \set Staff.midiMaximumVolume = #0.3
  \keepWithTag #'midi \pianoC
}
>>
\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 66 4) }
}}


