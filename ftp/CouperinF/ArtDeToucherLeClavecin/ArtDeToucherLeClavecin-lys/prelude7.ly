
global = {
  \time 4/4
  \key bes \major
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  s1*2 %\break
  s1*2 %\break
  s1*2 %\break
  s1*2 %\break
  s1*2 %\break
  s1*2 %\pageBreak
  s1*2 %\break
  s1*2 %\break
  s1*2 %\break
  s1*2 %\break
  s1*2 %\break
  s1*2 \bar "|."
}

forceBeamedStemLength = 
#(define-music-function (parser location length) (number?)
  #{
  \override Voice.Stem #'details #'beamed-lengths = #(list $length)
  \override Voice.Stem #'details #'beamed-minimum-free-lengths = #(list $length)
  \override Voice.Stem #'details #'beamed-extreme-minimum-free-lengths = #(list $length)
  #})

revertBeamedStemLength = {
  \revert Voice.Stem #'details #'beamed-lengths
  \revert Voice.Stem #'details #'beamed-minimum-free-lengths
  \revert Voice.Stem #'details #'beamed-extreme-minimum-free-lengths
}

\score {
  \context PianoStaff <<
    \new Staff <<
      \clef "alto"
      \global
      \new Voice {
        \override Score.RehearsalMark #'X-offset = #0.0
        \mark "Mesuré, lent"
        \oneVoice
        r4 r16 a16 bes16 c'16 \appoggiatura c'8 d'8 -\mordent es'16 d'16 \appoggiatura d'8 es'8. -\mordent f'16 |
        \appoggiatura d'8 c'8. -\prall c'16 f'16.[ es'32 d'32 c'32 bes32 a32] \appoggiatura a8 bes8.[ -\mordent \compressMusic #'(2 . 3) { bes32 c'32 d'32] } \appoggiatura d'8 c'8. -\prall d'16 |
        %% 3
        a8 -\prall \appoggiatura g8 f8 r16 r32 g32[ a32 bes32 c'32 d'32] \appoggiatura d'8 es'8.[ -\mordent \compressMusic #'(2 . 3) { es'32 f'32 g'32] } \appoggiatura g'8 f'8. -\prall g'16 |
        d'8 -\prall \appoggiatura c'8 bes8 bes'16.[ a'32 g'32 f'32 e'32 d'32] e'8 -\prall \appoggiatura d'8 c'8 c''16.[ -\mordent bes'32 a'32 g'32 f'32 e'32] |
        %% 5
        \appoggiatura e'8 f'8 -\mordent \appoggiatura e'8 d'8 
        d''16.[ -\mordent c''32 bes'32 a'32 g'32 f'32]
        \voiceOne e'16-\prall c'16 f'8 ~ f'8 f'16. e'32 |
        %% 6
        \appoggiatura e'8 f'4( % TODO: ~ 
        f'16) \mark "Mesuré, moins lent" \clef soprano a'16[ bes'16 -\mordent c''16] ~ 
        c''16  c''8.( % TODO: ~ 
        c''16) a'16 bes'16 -\mordent c''16 ~|
        %% 7
        c''16 c''8. ~ c''16 f'16 bes'16 a'16 \oneVoice g'16 f'16 es'16 d'16 \appoggiatura d'8 c'8 -\prall bes16 c'16 |
        \appoggiatura c'8 d'8 -\mordent \appoggiatura c'8 bes8 r16 d''16 es''16 -\mordent f''16 ~ \voiceOne f''16 f''8. ~ f''16 d''16 es''16 -\mordent f''16 ~|
        %% 9
        f''16 f''8. ~ f''16 bes'16 es''16 d''16 \oneVoice c''16 bes'16 as'16 g'16 \appoggiatura g'8 f'8 -\prall es'16 f'16 |
        \appoggiatura f'8 g'8 -\mordent \appoggiatura f'8 es'8 \voiceOne r8 bes'8 r8 b'8 r8 b'8 |
        %% 11
        r8 d''8 r8 f'8 \clef alto r8 d'8 s8 g8 ~|
        g4( % TODO: ~ 
        g16) \clef soprano \voiceTwo \slurUp b'16[ c''16 ^\mordent d''16] ~ d''16 d''16 ( es''16 ) g'16 ~ g'16 g'16 as'16 g'16 ~| \slurDown
        %% 13
        \voiceOne g'16 g'16( fis'16) a'16 ~ \oneVoice a'16 a'16 b'16 -\mordent c''16 ~ 
        \voiceTwo \slurUp c''16 c''16( d''16) f'16 ~ \oneVoice f'16 f'16 g'16 f'16 ~|
        \voiceOne \slurDown f'16 f'16( e'16 ) g'16 ~ g'16 g'16 a'16 -\mordent bes'16 ~ 
        bes'16 e'16 fis'16 c''16 ~ c'' ees' g' c'' ~ |
        %% 15
        c'' d' a' c'' ~ c'' bes' c'' a' bes' fis' g'8 ~ g' g'16 fis' |
        \appoggiatura fis'8 g'4 r16 d'' ees'' f'' ~ 
        f'' f''( ees''8) ~ ees''16 c'' d'' ees'' ~ |
        %% 17
        ees''16 ees''( d''8) ~ d''16 bes' c'' d'' ~ d'' d''( c''8) ~ c'' c'' ~ |
        c''8. a'16 \clef alto \slurUp s4 s16 aes'8.( % TODO: ~
        aes'16) f' g'^\mordent aes' ~ |
        %% 19
        aes' aes bes f' ~ f' f' g'^\mordent aes' ~ aes' aes8 aes16 ~ aes aes bes8 ~ |
        bes4( % TODO: ~
        bes16) g' a'^\mordent bes' ~ bes' bes'8.( % TODO: ~ 
        bes'16) g' a'^\mordent bes' ~ |
        %% 21
        bes' bes c' g' ~ g' g' a'^\mordent bes' ~ bes' bes8 bes16 ~ bes bes c'8 ~ |
        c'4 \oneVoice r16 f'32[( ees' d' c' bes a]) 
        bes[( c' bes a g]) r32 r16 r16 g'32[( f' ees' d' c' bes]) |
        %% 23
        a[( bes a g f]) r32 r16 \clef soprano r16 \voiceOne f'8 g'16 
        <ees' a'>8 <f' bes'> ~ <f' bes'> <ees' bes'>16 a' |
        \appoggiatura a'8 bes'4 bes' ~ bes'2 |
      }
      \new Voice {
        s1*4 | \voiceTwo
        %% 5
        s2 s16 c'16 ~ c'16. d'32 \appoggiatura a8 g8 a16. bes32 ~|
        bes16 bes16 a8 ~ a16 s8. s16 c''16 a'16 es'16 ~ es'16 s8. |
        %% 7
        s16 c''16 f'16 d'16 ~ d'16 s8. s2 |
        s2 s16 f''16 d''16 aes'16 ~ aes'16 s8. |
        %% 9
        s16 f''16 bes'16 g'16 ~ g'16 s8. s2 |
        s4 r16 g'8 g'16 r16 f'8 f'16 r16 as'8 as'16 |
        %% 11
        r16 f'8 f'16 r16 b8 b16 r16 f8 f16 r16 f16 g16 d16 ~|
        \slurUp d16 d16 ( es16 ) c16 ~ c16 \voiceOne s8. s8 es''8 ~ es''4 |
        %% 13
        s8 \voiceTwo fis' s4 s8 \voiceOne d'' s4 |
        s8 \voiceTwo e' ~ e'16 s8. s8 fis'8 s8 g'8 |
        %% 15
        s8 a'8 ~ a'4*1/4 s8. s8 g'16 bes ~ bes a a8 |
        s8 \voiceOne bes16 d' \voiceTwo s16 d''8. ~ d''8. c''16 ~ c'' c''8. ~ |
        %% 17
        c''8. bes'16 ~ bes' bes'8. ~ bes'8. bes'16 ~ bes' bes'8 bes'16 ~|
        bes' bes' a'8 \oneVoice r16 f' g'^\mordent aes' ~ 
        \voiceTwo aes' aes' f' bes ~ bes s8. |
        %% 19
        \set tieWaitForNote = ##t
        s16 aes8.*1/3( % TODO: ~
        \tieUp bes8\noBeam ~ <aes bes>16) s8. s8 \tieDown f ~ f8. f16 ~ |
        \slurUp f16 f( g) ees ~ ees s8. s16 bes' g' c' ~ c' s8. |
        %% 21
        \slurDown s16 bes8.*1/3( % TODO: ~
        \tieUp c'8\noBeam ~ <bes c'>16) s8. s8 \tieDown g ~ g8. g16 ~ |
        \slurUp g16 g( a) f s2. |
        %% 23
        s4 s8 \voiceTwo bes c' d' ~ d'16 c'8. |
        r16 ees'16 d'8 ~ d'4 ~ d'2 |
      }
      \new Voice {
        \voiceOne
        s1*5
        s8 \forceBeamedStemLength #1 a16 c' ~ c'4*1/4 s8. s8 a'8 ~ a'4*1/4 s8. |
        %% 7
        s8 f'8 ~ f'4*1/4 s8. s2 |
        s2 s8 d''8 ~ d''4*1/4 s8. |
        %% 9
        s8 bes' ~ bes'4*1/4 s8. s2 |
        s1*2 |
        s8 ees8 ~ ees4*1/4 s8. s2 |
        %% 13
        s1 |
        s2 \voiceTwo s16 e'8. s16 ees'8. |
        %% 15
        s16 d'8. ~ d'16 s8. s2 |
        r16 c' bes8 s2. |
        %% 17
        s1 |
        s2 \voiceOne s8 \tieDown f' ~ f'4*1/4 s8. |
        %% 19
        s1 |
        s8 \voiceOne g ~ g4*1/4 s8. s8 g' ~ g'4*1/4 s8. |
        %% 21
        s1
        s8 \voiceOne a s2. |
        %% 23
        s1
        s8 d'16 f' ~ f'4 ~ f'2 |
      }
    >>
    \new Staff <<
      \clef "bass"
      \global
      \new Voice {
        \oneVoice r2 bes,4. bes16. bes32( |
        a4) r8 a, \appoggiatura a,8 g,4 r16 f( e8) |
        %% 3
        \voiceOne r4 f g8[ bes] a[ c'] |
        s4 r8 g s4 r8 a |
        %% 5
        s4 r8 bes s4 \appoggiatura bes,8 c4^\mordent |
        r4 f2 f4 ~ |
        %% 7
        f f8 s4. f4 |
        r4 bes2 bes4 ~ |
        %% 9
        bes4 bes8 s4. bes4 |
        \oneVoice ees \clef alto ees'( d')^\mordent f'^\mordent |
        %% 11
        b \clef bass g b, g, |
        \voiceOne r4 g, c' ~ c'8 r8 |
        %% 13
        c'4 ~ c'8 r b4 ~ b8 r |
        bes4 ~ bes8 r a4 g( |
        %% 15
        fis2) g4 d |
        \oneVoice g, \clef alto bes'8 r bes' r a' r |
        %% 17
        bes' r d' r ees' r e' r |
        f' r \clef bass f r \voiceOne d4 ~ d8 r |
        %% 19
        d4 ~ d8 r d4 ~ d8 r |
        \oneVoice ees r ees, r \voiceOne e4 ~ e8 r |
        %% 21
        e4 ~ e8 r e4 ~ e8 r |
        \oneVoice f r \voiceOne d r \oneVoice g( r32 f[ ees d] c8) r |
        %% 23
        f8( r32 g[ f ees] d4)( c8)^\mordent bes, \voiceOne f4 |
        r4 r8 f ~ <f bes>2 |
      }
      \new Voice {
        s1*2
        %% 3
        \voiceTwo f,2 g4 a |
        \oneVoice bes8 r32 c bes, a, \voiceTwo g,4
        \oneVoice c'8 r32 d c bes, \voiceTwo a,4 |
        %% 5
        \oneVoice d'8 r32 ees d c \voiceTwo bes,4 ~ 
        bes,8 a,16 bes, c8 c, |
        f,2 f, |
        %% 7
        f,4 ~ f8 d ees bes, f f, |
        bes,2 bes, |
        %% 9
        bes,4 ~ bes,8 g aes ees bes bes, |
        s1 |
        %% 11
        s1 |
        c,2 s4 c8 r8 |
        %% 13
        s4 c8 r s4 b,8 r |
        s4 bes,8 r s2 |
        %% 15
        fis4 d g8[ c] d[ d,] |
        s1 |
        %% 17
        s1 |
        s2. d,8 r |
        %% 19
        s4 d,8 r s4 d,8 r |
        s2. e,8 r |
        %% 21
        s4 e,8 r s4 e,8 r |
        s4 d,8 r s2 |
        %% 23
        s2. f8 f, |
        bes,2 ~ bes,
      }
    >>
  >>
  \header {
    piece = "Septième prélude"
    titre = "Septième prélude"
    breakbefore = ##t
  }
  \layout { indent = 1.0\cm }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 52 4) } }
}