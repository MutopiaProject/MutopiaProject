global = {
  \time 3/8
  \key b \minor
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  s4.*59
  \bar "|."
}


\score {
  \context PianoStaff <<
    \new Staff <<
      \clef "soprano"
      \global
      \new Voice {
        \set Score.rehearsalMarkAlignSymbol = #'time-signature
        \override Score.RehearsalMark #'X-offset = #0.0
        \mark "Mesuré"
        \oneVoice
        r16 ais'16 b'16 cis''16 d''16 e''16 |
        cis''8 -\prall fis''16 e''16 d''16 cis''16 |
        \appoggiatura cis''8 b'8 e''16 d''16 cis''16 b'16 |
        \voiceOne ais'8 -\prall cis''8 fis''8 |
        %% 5
        e''8 d''8 -\prall cis''8 |
        d''16 fis'16 g'4 ~|
        g'16 e'16 fis'4 ~|
        fis'16 dis'16 e'4 ~|
        e'16 fis'16 d'8. -\prall cis'32 d'32 |
        cis'16 eis'16 fis'16 -\mordent gis'16 a'8 ~||
        %% 11
        a'16 fis'16 b'16 a'16 g'16-\prall fis'16 |
        g'16 dis'16 e'16 -\mordent fis'16 g'8 ~|
        g'16 e'16 a'16 g'16 fis'16 -\prall e'16 |
        \oneVoice fis'16 a'16 d''8. -\mordent cis''16 (|
        b'8. ) g'16 e''8-\mordent ~|
        %% 16
        e''16 d''16 ( cis''8. ) a'16 ||
        fis''8. -\mordent e''16 ( d''8 )~|
        d''16 b'16 g''8. -\mordent fis''16 (|
        e''8.) cis''16 a''16 g''16 |
        fis''16 e''16 d''16 cis''16 b'16 a'16 |
        %% 21
        g'16 ( fis'16 ) fis'16 (-4 e'16 )-3 d'16 (-3 cis'16 )-2|
        \appoggiatura cis'8 d'16 \clef treble \voiceOne cis''16[ d''16 -\mordent e''16 fis''16 g''16] |
        e''4 -\prall \oneVoice a''8 -\mordent ~|
        a''16 a''16 gis''16 fis''16 e''16 d''16 |
        \voiceOne cis''16 -\prall e''16 a''4 ~|
        %% 26
        a''4 ~ a''16 gis''16 |
        fis''8. fis''16 b''8 ~|
        b''4 ~ b''16 a''16 |
        gis''8. gis''16 cis'''8 ~|
        cis'''4 ~ cis'''16 b''16 |
        %%
        %% 31
        a''8. a''16 d'''8 ~|
        d'''16 d'''16 cis'''8.-\markup \finger "4-5" cis'''16 |
        b''16 a''16 gis''8. -\prall fis''32 gis''32 |
        fis''4. | \oneVoice
        \clef alto r16 g'16 fis'16 e'16 dis'16 -\prall cis'16 |
        %% 36
        b16 dis'16 \voiceOne e'4 ~|
        e'4 e'16 dis'16 |
        e'16 \clef treble dis''16 e''16 -\mordent fis''16 g''8 ~|
        g''4 fis''8 ~|
        fis''16 fis''16-5 e''8.-\markup \finger "4-5" e''16-5 |
        %% 41
        d''8.-\markup \finger "4-5" d''16 c''8-\markup \finger "4-5" ~|
        c''16 c''16-5 b'8.-\markup \finger "4-5" b'16 |
        ais'8 b'8 cis''8 |
        fis'16 \clef soprano ais'16 b'16-\mordent cis''16 d''8 ~|
        d''4 ~ d''16 cis''16 
        %% 46
        b'8. b'16 e''8 ~|
        e''4 ~ e''16 d''16 |
        cis''8. cis''16 fis''8 ~|
        fis''4 ~ fis''16 e''16 |
        d''8. d''16 g''8 ~|
        %% 51
        g''16 g''16 fis''8.-\markup \finger "4-5" fis''16 |
        e''16 ( d''16 ) d''16 ( cis''16 ) b'16 ( ais'16 )|
        \appoggiatura ais'8 b'16 \clef alto dis'16 e'16 -\mordent fis'16 g'8 ~|
        g'16 e'16 d'16 e'16 fis'8 ~|
        fis'16 e'16 dis'16 fis'16 e'8 ~|
        %% 56
        e'16 d'16 cis'16 e'16 d'16 ais16 |
        b4 b16 ais16 |
        b4. ~|
        b4. 
      }
      \new Voice {
        \voiceTwo
        s4.*3 |
        ais'4 d''8 |
        %% 5
        cis''8 b'8 ais'8 |
        b'16 s16 r16 fis'16 e'16 d'16 |
        cis'8 -\prall r16 e'16 d'16 cis'16 |
        b8 r16 d'16 cis'16 b16 |
        ais8 b8. s16 |
        s8 fis'4 ~|
        %% 11
        fis'16 s16 s4 |
        s8 e'4 ~|
        e'16 s16 s4 |
        s4.*2 |
        %% 16
        s4.*5 |
        %% 21
        s4. |
        s4 d''8 |
        cis''4 s8 |
        s4. |
        cis''4 ~ cis''16 cis''16 |
        %% 26
        fis''8. e''16 dis''8 ~|
        dis''4 ~ dis''16 dis''16 |
        gis''8. fis''16 eis''8 ~|
        eis''4 ~ eis''16 eis''16 |
        a''8. gis''16 fis''8 ~ |
        %%
        %% 31
        fis''4 ~ fis''16 gis''16 |
        eis''8. cis''16 fis''8 ~|
        fis''8 eis''8. r16 |
        s4.*2 |
        %% 36
        s8 <g b>4 |
        <fis c'>8 <g b>8 a8 |
        g16 s8. g''16 b'16 |
        cis''4. -\mordent |
        b'8. b'16-3 a'8-2 ~|
        %% 41
        a'16 a'16-3 g'8.-2 g'16-3 |
        fis'8.-2 fis'16-3 e'8-2  ~|
        e'16 e'16 d'8 cis'8 |
        d'16 s8. r16 fis'16 |
        b'8. a'16 gis'8 ~ |
        %% 46
        gis'4 ~ gis'16 gis'16 |
        cis''8. b'16 ais'8 ~|
        ais'4 ~ ais'16 ais'16 |
        d''8. cis''16 b'8 ~|
        b'4 ~ b'16 cis''16 |
        %% 51
        ais'8. fis'16 b'8 ~|
        b'8 s4 |
        s4 r16 d'16  |
        cis'4  ~ cis'16 d'32 cis'32  |
        b4  ~ b16 cis'32 b32  |
        %% 56
        ais16 s16 s4  |
        b16 d16  ~ d16 cis16  ~ cis8  |
        r16 e16  << { \voiceOne d16 fis16  ~ fis8  ~ | fis4.  }
                    \\ { \voiceTwo d4  ~ | d4.  } >> 
      }
    >>
    \new Staff <<
      \global
      \new Voice {
        \clef "alto"
        \oneVoice 
        b4 -\markup \finger "1-5" -\mordent b'8  (|
        ais'4  )-\prall a'8  (-\mordent |
        gis'4  )-\prall g'8  -\mordent |
        fis'16 g'16 fis'16 e'16 d'8  |
        %% 5
        e'8 fis'8 fis8  |
        b4  -\mordent \clef bass b,8(-\markup \finger "5-1" |
        ais,4 )-\prall a,8 (-\mordent |
        gis,4 )-\prall g,8 -\mordent |
        fis,8 b,8 b,,8 |
        fis,4 \clef alto r16 e'16 |
        %% 11
        dis'4 -\prall b8 |
        e4 r16 d'16 (|
        cis'4 )-\prall a8 |
        d8. d'16 g'8-\mordent ~|
        g'16 fis'16 e'8. e16 |
        %% 16
        a8.-\mordent g'16 fis'8 ~|
        fis'16 fis16 b8. -\mordent a'16 |
        g'8. g16 cis'8 -\mordent ~|
        cis'16 b16 a16 g16 fis16 e16 |
        \clef bass d16 cis16 b,16 a,16 g,16 fis,16 |
        %% 21
        e,16 d,16 a,8 a,,8 |
        d,4 d8 |
        a,16 \clef soprano gis'16[ a'16 b'16 cis''16 d''16] |
        b'8 e''16 d''16 cis''16 b'16 |
        a'8. gis'16 fis'8 ~ |
        %% 26
        fis'16 fis'16 b'4 -\mordent ~|
        b'16 a'16 gis'4 ~|
        gis'16 gis'16 cis''4 -\mordent ~|
        cis''16 b'16 a'4 ~|
        a'16 a'16 d''4 -\mordent ~ |
        %%
        %% 31
        d''16 cis''16 b'4 ~|
        b'4 a'8 |
        b'8 cis''8 cis'8 |
        fis'16 \clef bass g16 fis16 e16 dis16 -\prall cis16 |
        << { r8 b8 a8-\markup \finger "2-1" ~ | a8. } 
           \\ { b,4. | b,8. } >> g,16 fis,16 -\prall e,16 |
        a,16 fis,16 b,16 a,16 b,8 |
        << { r8 r8 e8 } \\ { e,4. } >> |
        a,16 a16 b16 cis'16 d'16 d16 |
        g8 \clef alto g'8[ fis'8] |
        %% 41
        fis8 e8 e'8 |
        d'8 \clef bass d8 cis8 |
        cis'8 b8 ais8 |
        b4 b,8 ~|
        b,16 b16 e'4 -\mordent ~|
        %% 46
        e'16 d'16 cis'4 ~|
        cis'16 cis'16 \clef alto fis'4 -\mordent ~|
        fis'16 e'16 d'4 ~|
        d'16 d'16 g'4 -\mordent ~|
        g'16 fis'16 e'4 ~ |
        %% 51
        e'4 d'8 |
        e'8 fis'8 fis8 |
        b4 -\mordent \clef bass b,8 (|
        ais,4) -\prall a,8 (-\mordent |
        gis,4 )-\prall g,8 -\mordent |
        %% 56
        fis,8 fis8 b,8 |
        e,8 fis,4 |
        b,4 -\prall b,,8 ~ |
        <b,, b,>4. -\prall
      }
    >>
  >>
  \header {
    piece = "Sixième prélude"
    titre = "Sixième prélude"
    breakbefore = ##t
  }
  \layout { indent = 1.0\cm }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 52 4) } }
}