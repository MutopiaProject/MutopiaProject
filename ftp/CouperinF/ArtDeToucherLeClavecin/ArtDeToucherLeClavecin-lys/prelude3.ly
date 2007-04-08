global = {
  #(override-auto-beam-setting '(end * * 6 4) 3 4 'Score)
  \time 6/4
  \key d \minor
  s1.*18
  \bar "|."
}

\score {
  \context PianoStaff <<
    \context Staff = dessus <<
      \global
      \clef soprano
      \new Voice {
        \set Score.rehearsalMarkAlignSymbol = #'time-signature
        \override Score.RehearsalMark #'X-offset = #0.0
        \mark "Mesuré"
        \oneVoice r8 d'' c'' a' bes' fis' g' d' es' c' d' a 
        bes g bes c' d' e' \voiceOne f'4 g'4. a'8 
        fis'8^\prall \oneVoice d'' c'' a' b'4^\mordent ~ b'4. g'8 c'' d'' 
        \appoggiatura d''8^\mordent es''2 ~ es''8 c'' \voiceOne d''4 ~ d''8 g' c'' g'  \oneVoice
        a' f' bes' f' es'4^\mordent d'8 es' c' d' es'^\mordent f' 
        d'2^\prall r4 \voiceOne d' g'4. f'8 
        \oneVoice e' f' e' d' cis'4^\prall ~ \voiceTwo cis'4 \voiceOne a'4. g'8 
        fis'2^\prall g'4 a'2 d'8 e' 
        f'4. g'8^5 \appoggiatura f' e'4.^\markup { \finger "4-5"} f'8^5 \appoggiatura e' d'4.^\markup { \finger "4-5"} e'8 ^5
        \oneVoice cis'2^3^\prall r8 a' g' e' \voiceOne fis'2 
        bes8 d' ~ << { d'4 s4 } \new Voice { \voiceOne g'2 } >> f'8.^\prall e'16 ~ e'4.^\prall d'16 e' 
        d'8 a' d''2 ~ d''4 c''2 ~
        c''8 d'' bes'4.^\prall a'8 g' d'' g''2 ~
        g''4 f''2 ~ f''8 d'' es''2 ~
        es''8 c'' d''2 ~ d''8 b' c''2 ~
        c''8 a' bes'2 ~ bes'4 <a' e'>2 ~
        <a' fis'>2 << {g'4 ~ g'2} \new Voice { d'4 es' d' } >> <g' c'>8. fis'16 
        \appoggiatura fis'8 g'2. ~ g'2.
      }
      \new Voice {
        \voiceTwo s1. 
        s2. f'8 d' ~ d' d' c'4
        d'8 s8 s4 s1
        s2. d''8 bes' ~ bes' s4.
        s1.
        s2. a!4 d'4. r8
        s2. \voiceOne e'4 \voiceTwo d'4. r8
        r4 d'2 r8 d' c' a bes4
        r8 a bes4 ~ bes8 bes a4 ~ a8 a g4
        s1 r8 d' cis' a
        bes4. b8 cis'4 d' cis' s4
        s4 d'8\rest d' e' f' e'4. e'8 fis' g'
        fis'4_\prall s2. r8 g' a' bes'
        a'4. a'8 b' c'' b'4 r8 b' c'' bes'
        a'4_\prall r8 a' bes' a' g'4 r8 g' a' g'
        fis'4_\prall r8 fis' g' d' es'4 c'2 ~
        c'8 \change Staff = basse \voiceOne bes c' a
        \change Staff = dessus \voiceTwo bes4 a2 s4
        << { r8 c' b2 ~ b2. } \new Voice { \voiceOne s4 b8 d' ~ d'4 ~ d'2. }>>
      }
    >>
    \context Staff = basse <<
      \global
      \clef bass
      \new Voice {
        \voiceOne g,2.^\mordent ~ g,2. 
        g,2^\mordent \oneVoice f,4 ~ f, es,2^\prall
        d,8 r r4 \clef alto r8 g' f' d' e' f' es'^\prall d'
        \voiceOne r8 c'' bes' g' a'4 \clef bass s2 es'4 ~
        es' d' c'8 a bes2 a4
        \oneVoice bes,8 c d c bes,^\prall a, g, f, es, f, es, d, 
        c, d c bes, a, bes, a, g, f, g, f, e,
        d, d' c' a bes e fis2^\prall g4
        d2 c4 ~ c bes,2^\prall
        \voiceOne r8 a g e f4 cis d2 ~
        d4 e4 ~ e8. e16 f8. g16 a2 ~
        a4 g2 ~ g8 e a2 ~
        a8 a d'2 ~ d'4 c'2 ~
        c'8 a d'2 ~ d'4 c'2 ~
        c'4 bes2 ~ bes8 c'8\rest a2 ~
        a4 g2 ~ g8 g s2
        s1.
        g,2.^\mordent g,2.^\mordent 
      }
      \new Voice {
        \voiceTwo g,2. \voiceOne g,,2. ~
        g,,2 s1 \voiceTwo
        s1.
        c'2 f'4 bes es2
        f2. ~ f2.
        s1.
        s1.
        s1.
        s1.
        a,2. ~ a,4 d d,
        g, e, a, ~ a,2 a,4
        bes,2 g,4 c2 a,4
        d2 d4 es2 c4
        f2 d4 g4 c' c
        f bes bes, es a a,
        d g g, bes,4. a,8 bes, c 
        d2 ~ d8 bes, c a, d c d d,
        g,2 g,,4 ~ g,,2.
      }
    >>
  >>
  \header {
    piece = "Troisième prélude"
    titre = "Troisième prélude"
    breakbefore = ##t
  }
  \layout { indent = 1.0\cm }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
