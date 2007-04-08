global = {
  \time 4/4
  \key a \major
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  s1*24
  \bar "|."
}

\score {
  \context PianoStaff <<
    \new Staff <<
      \clef "alto"
      \global
      \new Voice {
        \oneVoice
        r8 r16\voiceOne e'16 d'16 cis'16 b16 cis'16 d'4-\mordent ~ d'16 d'16 cis'16 b16 ~|
        b16 b16-2 cis'8-\markup { \finger "3-4"} ~ cis'16 cis'16 d'16 -\mordent e'16
        r16 cis'16 b8 \oneVoice r32 gis128 fis gis a \voiceOne b8. ~|
        b4 ~ b16 b16 e'8 ~ e'8.[ \compressMusic #'(2 . 3) { d'32 cis'32 d'32] } d'8. -\prall cis'16 |
        cis'2 \oneVoice r16 eis'16 fis'16 -\mordent gis'16 ~ \voiceOne gis'16 gis'16 a'8 ~|
        a'8. a'16 ~ a'16 a'16-5 gis'8-\markup \finger "4-5" ~ gis'8. gis'16 ~ gis'16 gis'16-5 fis'8-\markup \finger "4-5" ~|
        fis'8. gis'32 dis'32 \appoggiatura dis'8 e'8. -\mordent fis'16 dis'8-\prall \appoggiatura cis'8 b8 \appoggiatura { cis'16[ dis'16 e'16 fis'16 gis'16 a'16] } b'8. b'16 |
        b'8. cis''32 gis'32 \appoggiatura gis'8 a'4-\markup \finger "4-5" ~ a'8. b'32 fis'32 \appoggiatura fis'8 gis'4-\markup \finger "4-5" ~|
        gis'8 s8 \appoggiatura dis'8 e'4 ~ e'4 ~ e'8 e'16 dis'16 ~|
        dis'16 dis'16 e'8 ~ e'16 e'16 fis'16 g'16 ~ g'16 g'16 fis'8 ~ fis'16 fis'16 gis'16-\mordent a'16 ~|
        a'16 a'16 gis'16 e'16 a'4 ~ a'8. a'16 gis'4-\markup \finger "4-5" |
        s8 cis'8-\prall \clef soprano r16 a'16 b'16 cis''16 ~ cis''16 cis''16 b'8 ~ b'16 b'16 cis''16-\mordent d''16 ~|
        d''16 d''16 cis''16 a'16 d''4 ~ d''8. d''16 cis''4 ~|
        cis''16 cis''16 d''16 cis''16 b'16 a'16 g'16 fis'16 g'16 fis'16 g'8 ~ g'4 ~|
        \clef alto g'16 cis'16 d'16-\mordent e'16 \oneVoice \appoggiatura e'8 fis'4 ~ fis'8. b16 e'4 -\mordent ~|
        e'4 r16 d'16 e'16 -\mordent fis'16 r16 \voiceOne b16 d'16 cis'16 ~ cis'16 b16 d'16 cis'16 ~|
        cis'16 b16 d'16 cis'16 ~ cis'16 b16 d'16 cis'16 ~ cis'8 cis'8 ~ cis'8 cis'8 ~|
        cis'8 cis'8 r16 b16 cis'16 d'16 ~ d'16 d'16 cis'8 ~ cis'16 e'16 dis'8 ~|
        dis'16 dis'16 e'8 ~ e'16 e'16 d'16 -\prall cis'16 ~ cis'16 cis'16 d'8 ~ d'16 d'16 cis'16 ais16 ~|
        ais16 ais16 b8 ~ b16 \clef soprano ais'16 b'16 cis''16 \appoggiatura cis''8 \oneVoice d''8.(-\mordent \compressMusic #'(2 . 3) { cis''32 d''32 e''32  } e''8.  -\prall d''32 e''32)|
        fis''16-4 g''16-5 fis''16-4 e''16-3 d''16-3 cis''16-2 b'16-3 a'16-2 gis'8\( -\prall -3 \appoggiatura fis'8 e'32-1 b'32 cis''32 d''32 d''8.-\prall cis''32 d''32  \)| 
        e''16 fis''16 e''16 d''16 cis''16 b'16 a'16 gis'16 fis'8.-\prall \compressMusic #'(2 . 3) { gis'32 fis'32 gis'32 } \voiceOne \appoggiatura gis'8 \voiceOne a'8. b'16 |
        gis'16-\prall fis'32 e'32-1 fis'32-2 gis'32-3 a'32-3 b'32-4 \appoggiatura b'8 cis''4-5 ~ cis''8. d''16 ~ d''16 cis''16-5 b'8-4 ~|
        b'8. cis''16 \appoggiatura b'8 a'4 ~ a'4-5 << { b16 d'16 ~ d'8 } { s8 a'16-5 gis'16-4 ~ } >> |
        gis'16 gis'16( a'8)~ a'4 ~ a'2 |
      }
      \new Voice {
        \voiceTwo s4 s8 b8 ~ b4 ~ b16 s8. |
        s16 b16 ~ b16 b16 a16 s8. a4 s32 s128 \stemUp fis4*1/32_( s128 a4*1/32 ~ \stemDown <fis a>8.\noBeam_) ~| 
        <fis a>8. \compressMusic #'(2 . 3) { a32[ gis fis] } fis8.-\markup \finger "3-2"-\mordent fis16 ~ fis16 fis16 gis8 s4 |
        cis'16 ( b16 a8 )~ a4 s4 s8 a'16 cis'16 ~|
        cis'16 cis'16 b8 ~ b8. b16 ~ b16 b16 cis'8 ~ cis'8. cis'16 ~|
        cis'16 cis'16 b8 ~ b4 s4 <b dis' gis'>4 |
        <e' gis'>8. r16 r8 r16 fis'32 cis'32 \appoggiatura cis'8 dis'8 s8 r8 r16 e'32 b32 |
        \appoggiatura b8 cis'8.[ \compressMusic #'(2 . 3) { dis'32 cis'32 dis'32] } r16 b16 ais8 r8 b8 ~ b16 ais16 ~ ais8 |
        s8 e'16 gis16 ~ gis16 e'8. ~ e'8. d'16 ~ d'4 ~|
        d'4 r16 a16-1 b16-2 cis'16-3 ~ cis'16 cis'16-2 b8-1 ~ b16 b16 cis'16 d'16 ~|
        d'16 d'16 cis'16 ( a16 ) s16 a'8. ~ a'8. g'16 ~ g'4 |
        %%
        g'4 r16 d'16 e'16 fis'16 ~ fis'16 fis'16 e'8 ~ e'16 e'16 fis'16 g'16 |
        \appoggiatura g'8 fis'16 r16 r8 r4 s8 g'16 fis'16 e'16 d'16 cis'16 b16 |
        ais16 s8. s4 s2 |
        s2 s16 b8. ~ b16 b8. ~|
        b16 b8. ~ b16 b8. ~ b16 b8 b16 ~ b16 b8 b16 ~ |
        b16 b8 ais16 s16 b8. ~ b8. b16 ~ b8. b16 ~ |
        b8. b16 ~ b16 s8. s8 d'16 b16 ~ b16 s8. |
        s8 b16 fis16 ~ fis16 s8. s2 |
        s1 |
        s2. s16 e'16 dis'8 |
        s16 s32 e'32 e'8 ~ e'8. e'16 ~ e'16 e'16 fis'8 ~ fis'8. fis'16 ~|
        fis'16 fis'16 e'8 ~ e'4 ~ e'16. gis'32-4 fis'32-3 e'32-2 d'32-3 cis'32-2 \slurUp \appoggiatura cis'8 b4 
        << {s8 a'16 e'16 ~ e'4 ~ e'2 } { s4 cis'4 ~ cis'2 } >>
      }
    >>
    \new Staff <<
      \clef "bass"
      \global
      \new Voice {
        \voiceOne a,2-\prall \oneVoice r16 a gis fis \voiceOne gis4-\mordent |
        \oneVoice a4-\mordent \voiceOne r8 e8 fis4 s4 |
        e2 ( \oneVoice fis4 )-\mordent \voiceOne gis4 |
        s2 d4\rest fis |
        e2*1/2 cis4 a2 ~ |
        a4 gis8 d8\rest b,4 ~ b,8 a,16-\prall gis,-4 |
        r8 cis' fis4-\markup \finger "3-1" r8 b8 e4 ~ |
        e4 ~ e8. \compressMusic #'(2 . 3) { fis32 e fis } \appoggiatura fis8 gis4(-1 fis)-2 |
        e2-\mordent s4 b4 ~ |
        b4 s2. |
        a,4 a e e' ~ |
        %%
        e'4 s2. |
        r4 d' ~ d' cis'8 r8 |
        s4 r16 fis gis-\mordent a ~ a a gis8 ~ gis16 gis ais b ~ |
        b16 b ais fis b4 s2 |
        s1 |
        s1 |
        s2 fis2-\mordent |
        \voiceTwo b,4 \voiceOne cis, b cis' |
        d'1 |
        cis'2 ~ cis'4. b8 ~ |
        b4 a2 a4 |
        gis4 a16 s8. e2 |
        a,2*1/2-\mordent g,8\rest e, a,2-\mordent |
      }
      \new Voice {
        \voiceTwo
        a,8 a,, ~ a,,4 s4 gis8 e |
        a4 cis4 d8. e16 dis8. b,16 |
        e4-\mordent e,4 s4 gis8 e8 |
        a8.[ \voiceOne \compressMusic #'(2 . 3) { a,32 gis,32 a,32] } a,8.-\prall gis,16 \voiceTwo \slurUp \appoggiatura gis,8 \voiceTwo fis,2 | \slurDown
        fis,2 s4 fis,4 |
        gis,4. e,8 b,8[ b,,] ~ b,, r |
        cis4-\markup \finger "2-5" fis8 fis, b,4 e8 e, |
        a,8 b,8 cis4-\markup \finger "3-5" b,2 |
        e4 e, b,2-\markup \finger "3-5" |
        e4( fis)-\mordent d( e)-\mordent |
        a,2 e2 | 
        %%
        a4( b)-\mordent \slurNeutral g( a)-\mordent |
        d2 e |
        fis4 dis e cis |
        d2 e4( fis)(-\mordent |
        g)-\mordent fis( eis)-\mordent cis |
        e-\mordent d( e)(-\mordent fis)(-\mordent |
        g)-\mordent \slurDown e( fis) fis, |
        \voiceOne b,2-\mordent ~ \voiceTwo b,2 ~ |
        b,4. b,8 cis2 ~ |
        cis4. cis8 d e fis4 |
        e4 ~ e8 e dis2 |
        d4 e16.( d32 d16.-\prall cis64 d) e4 e, |
        a,4 a,, ~ a,,2 |
      }
    >>
  >>
  \header {
    piece = "Cinquième prélude"
    titre = "Cinquième prélude"
    breakbefore = ##t
  }
  \layout { indent = 1.0\cm }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 52 4) } }
}