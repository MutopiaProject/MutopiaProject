global = {
    \time 2/2
    s1*20
    \bar "|."
}

\score {
  \context PianoStaff <<
    \new Staff <<
      \global
      \clef alto
      \new Voice {
        \oneVoice
        r2 r8 f'^5 \voiceOne e'4^4 ~
        e'8 e'^4 d'4^\markup { \finger "3-4"} ~ d'4. e'8^5 ~
        e' d'^4 c'4^\markup { \finger "3-4"} ~ c'4. c'8 ~
        c' c' d'4 ~ d'8 f' e'4 ~
        e'8 e' f'4 ~ f'4. g'8 
        e'4-\prall \appoggiatura d'8 c'4 r8 e'8 ~ e'4 ~
        e'4. fis'8 ~ fis'8 fis'^4 g'4^5 ~
        g'4. g'8 ~ g'4 g'8 fis' ~
        fis' fis' ( g'4 )~ g'8 g' d' e' ~
        e' e' f'4 ~ f'2 ~
        f'4. f'8^5 ~ f'8 f'^4 e'^3 f'^4 ~
        f' f' g'4 ~ g'2 ~
        g'4. g'8 ~ g'8 g'^5 f'4^\markup { \finger "4-5"} ~
        f'4. f'8 ~ f'8 f'^5 e'4^\markup { \finger "4-5"} ~
        e'8 e'^5 d'4^\markup { \finger "4-5"} ~ d'4 g8 ~ <g c'>
        b4-\prall \appoggiatura a8 g4 s4 a8 ~ <a e'> ~
        <a e'>8 e'8 ~ e'8 f'8 ~ f'8 e'8^5 d'4^\markup { \finger "4-5"} ~
        d'8 c'8 b4 ~ b8 b8^4 c'4^5 ~ 
        c'4. c'8 ~ c'4 c'8 b8 ~
        b8 b8 ( c'4 ) ~ c'2 
      }
      \new Voice {
        \voiceTwo
        s2 s4 e'8 c'8_2 ~
        c'4. c'8_3 ~ c' c' b4_2 ~
        b4. b8_3 ~ b b a4 ~
        a4. g8 ~ g4. g8 ~
        g4. a8 ~ a d' ~ <d' g>4
        s2. c'8 b ~
        b b a4 r4 r8 b8 ~
        b b c'4 ~ c'8 c' ~ c'4 
        c'4 ~ c'8 b ~ b2 
        r4 r8 d'8 d' d' a b ~
        b b_1 c'4_2 ~ c'2 ~
        c'4. c'8 ~ c' c' g bes ~
        bes bes a4 ~ a4. a8 ~
        a a b4 b4. c'8 ~
        c'4 r8 f8 ~ f e ~ e4 
        s2 r8 g8 ~ g4 ~
        g g r4 r8 a8 ~
        a4. g8 ~ g4. f8 ~
        f f 
        << \new Voice { \voiceTwo s4 s8 \stemUp f8 ~ f4 ~ 
                        \stemDown f4. e8 ~ e2  }
           \new Voice { \voiceTwo d4 ~ d s4 
                        s1 } >>
      }
    >>
    \new Staff <<
      \global
      \clef bass
      \new Voice {
        \voiceOne
        c2^\mordent ~ <c c,>
        r2 g2 ~
        g f ~
        f e
        d ~ d
        c^\markup { \finger "3-1"} ~ c^\markup { \finger "1-3"} ~
        \voiceTwo c b, \voiceOne
        e d ~
        d g
        d^\mordent ~ d
        r2 a
        e^\markup { \finger "2-1"} ~ e ~
        e d ~
        d c
        b, c
        d r4 cis ~
        cis2 f ~
        << \new Voice { \voiceOne f2 e4 ~ e8 r8 }
           \new Voice { \voiceTwo d2 ~ d4 c4 } >>
        g,,1
        r2 c^\mordent 
      }
      \new Voice {
        \voiceTwo
        s1
        g,_\markup { \finger "2-5"}
        a,_\markup { \finger "4-5"}
        b,2_\markup { \finger "4-5"} c ~
        c b,
        c c,
        \voiceOne d^2 ~ d \voiceTwo
        a,1
        g,
        d2 d,
        a,1-\mordent_\markup { \finger "2-5"}
        e2 e,
        f,1_\markup { \finger "4-5"}
        g,1_\markup { \finger "4-5"} ~
        g,
        f,2 e,
        f,1
        g, ~
        \stemUp \slurDown g,2 g,^\mordent \voiceTwo
        c,1_\markup { \finger "4-5"}
      }
    >>
  >>
  \header {
    piece = "Premier prélude"
    titre = "Premier prélude"
  }
  \layout { indent = 1.0\cm }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 100 4) } }
}
