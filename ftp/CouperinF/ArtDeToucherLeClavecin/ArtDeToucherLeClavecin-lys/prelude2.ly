global = {
    \time 2/2
    \partial 4*2 s2
    s1*18
    \bar "|."
}

\score {
  \new PianoStaff <<
    \context Staff = dessus <<
      \global
      \clef soprano
      \new Voice {
        \oneVoice r8 r16 cis'16 d'8.^\mordent e'16 ~ 
        \voiceOne e'8 e'( f'4) ~ f'8. f'16 g'8.^\mordent a'16^\markup { \finger "5-3"} ~
        a'8. a'16( d'8 cis') ~ cis'8. cis'16 d'8.^\mordent e'16 ~
        e'8 e' d'4 ~ d'8. a'16 bes'8.^\mordent c''16 
        \appoggiatura c''8 bes'4^\markup { \finger "3-4"} ~ bes'8. a'16^3 a'4^4( g'8.^\prall) f'16 ~
        f'8 f'^4( e'4^\markup { \finger "3-4"}) ~ e'8. e'16^3 f'8.^\mordent g'16 ~
        g'8 g'^5( fis'4^\markup { \finger "4-5"}) r8 r16 d'16^3 e'8.^\mordent f'16 ~
        f'8 f'^5( e'4^\markup { \finger "4-5"}) r8 r16 c'16 d'8.^\mordent es'16 
        \appoggiatura es'8 d'4 e'8. f'16 ~ f'4. f'16 e' 
        \appoggiatura e'8 f'2 r8 r16 a'16 bes'8.^\mordent c''16 ~
        c''8. a'16 bes'8.^\mordent c''16 \appoggiatura g'8 fis'8[ g'16 fis'] \appoggiatura fis'8 g'8.^\mordent [ a'16] 
        \appoggiatura a'8 bes'4^\mordent \appoggiatura a'8 g'4 r8 r16 b'16 c''8.^\mordent d''16 ~
        d''8. b'16 c''8.^\mordent d''16 \appoggiatura a'8 gis'8. \appoggiatura { d''16[ e'']} f''16 e''8.^\prall d''16 
        cis''8.^\prall b'16( a'8_1 b'32_2 cis''_3 d''_3 e''_4) \appoggiatura e''8 f''4 ~ f''8. f''16 
        f''4 ~ f''8.^5 e''16^4 e''4^5 ~ e''8. e''16 
        e''8. g''16^5[ f''^4( e''^3) d''^3( cis''^2)] d''8.( c''16 bes'32*4/3 a' g' f' e' d') ~  \voiceTwo
        <d' e'>8. r16 s4 \voiceOne f'2^\mordent ~
        f'4. e'32*4/3( d' e' e'4.^\prall d'32*4/3 e' cis')
        \appoggiatura cis'8 d'2^\markup { \finger "3-5"} ~ d' 
      }
       \new Voice {
         \voiceTwo s2 
         s4 f'8 d' ~ <d' a>8. r16 r4
         s1
         s4 d'8 a ~ a8. s16 s4 \change Staff = basse \voiceOne
         f'8\rest f'16\rest d' e'8.^\mordent f'16 ~ f'8. f'16 e'8^\prall d'^\markup { \finger "3-4"} ~
         d'4 ~ d'8. \change Staff = dessus \voiceTwo d'16 \grace { d'8 } c'2 ~
         c'4 ~ c'16 c' d' a \appoggiatura { a8 } bes2 ~
         bes4 ~ bes16 bes c' g \appoggiatura { g8 } a2 ~
         a4 g8 a ~ a g ~ <g bes>4
         <a c'>2 s2
         d'8. r16 r4 s2
         s1
         f'8. r16 r4 s2 
         s2 d''2
         <g' bes' d''>4. r8 <g' bes'>2
         <g' a' cis''>8. s16 s4 <d' f' a'>8. s16 s4 \voiceOne
         bes'8. a'16 g' f' e' d' ~ \voiceTwo d'2 ~
         d'4. s8 cis'4. r8
         r8 g8 f a ~ <a f>2
       }
    >>
    \context Staff = basse <<
      \global
      \clef bass
      \new Voice {
        r2 \voiceOne
        d1^\mordent
        c'4\rest c'8\rest c'16\rest g64*4/3 a bes <a g>2 ~
        a4 c'4\rest c'4\rest a4
        g1_5 \voiceTwo
        a2_4 ~ a^1 ~ \voiceOne
        a4 g4\rest g2 ~
        g4 g4\rest f2 ~
        f4 g4\rest c^\mordent c,
        r8 r16 c^2 d8.^1 e16^2 f2^\mordent
        a <a c'>4( bes8^\mordent) a
        g2 ~ g
        b <b d'>4( c'8^\mordent) b \oneVoice
        a2 ~ a8. d16_3 e8.^\mordent_2 f16_1 \voiceOne
        r4 g^\mordent ~ g8 b8\rest b4\rest
        b8\rest f^\mordent ~ f4 ~ f2
        g^\markup { \finger "2-1"} a8.^\markup { \finger "2-1"} g16*1/2 f e32*2/1 d c bes,
        a,2^\markup { \finger "4-1"} ~ <a, a,,>
        r2 d_\mordent
      }
      \new Voice {
        s2 \voiceTwo
        r2 d,
        e2_\markup { \finger "3-5"} ~ e
        f \appoggiatura { g8 } fis2
        s1
        s2 a, 
        d g,
        c f,
        bes,4. f,8 c2
        f,2_\markup { \finger "3-5" } ~ f,
        fis2 d
        g4. d8 g,2
        gis2 e
        s1
        g,2 ~ g,8. cis16 d8._\mordent e16
        f,2 ~ f,
        r8 g, ~ g,4 s2
        a, a,,
        d,1_\markup { \finger "4-5" }
      }
    >>
  >>
  \header {
    piece = "Second prélude"
    titre = "Second prélude"
    breakbefore = ##t
  }
  \layout { indent = 1.0\cm }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 80 4) } }
}