
global = {
  \time 6/8
  \key e \minor
  \override Staff.NoteCollision #'merge-differently-dotted = ##t
  s2.*2 \break
  s2.*3 \break
  s2.*3 \break
  s2.*3 \break
  s2.*2 s4. \bar "" \break
  s4. s2.*2 \pageBreak
  s2.*3 \break
  s2.*3 \break
  s2.*3 \break
  s2.*3 \break
  s2.*3 \bar "|."
}

\score {
  \context PianoStaff <<
    \new Staff <<
      \clef "soprano"
      \global
      \new Voice {
        \override Score.RehearsalMark #'X-offset = #0.0
        \mark "Inspiré et léger"
        r16 g'16 fis'16 g'16 e'16 g'16 dis'16-\prall fis'16 e'16 fis'16 dis'16 fis'16 |
        b16 b'16 a'16 b'16 e'16 b'16 c''16 b'16 a'16 g'16 a'16 fis'16 |
        %% 3
        g'8 -\mordent \voiceOne r8 g''8 g''8 r8 fis''8 |
        fis''8 r8 r8 b'8 ~ b'8 b'16 a'16 | %% ais'16 ??
        b'16 d''16 c''16 d''16 fis'16 a'16 ( \oneVoice gis'4)-\prall ~ \voiceTwo gis'8 |
        %% 6
        \voiceOne c''16 a'16 g'16 a'16 e'16 g'16 ( \oneVoice fis'4 )-\prall ~ \voiceTwo fis'8 |
        \voiceOne b'16 g''16 fis''16 g''16 d''16 f''16 \oneVoice e''16 d''16 c''16 b'16 a'16 g'16 |
        fis'16 -\prall e'16 d'16 c'16 \voiceOne b16 d'16 ~ <d' g'>4 g'16 fis'16 |
        %% 9
        g'16 d''16 c''16 d''16 b'16 d''16 \oneVoice a'16 d''16 cis''16 d''16 a'16 d''16 |
        g'16 d''16 cis''16 e''16 a'16 g'16 \voiceOne fis'16 d''16 ~ d''8 d''16 cis''16 |
        d''8 r8 fis''8 fis''8 r8 e''8 |
        %% 12
        \slurDown e''16 d''16 cis''16 e''16 ( d''16 )-\prall cis''16 d''8 cis''8 b'8 |
        ais'16 \clef treble fis''16 e''16 fis''16 b'16 fis''16 ( \oneVoice gis''16 ) gis''16 fis''16 gis''16 cis''16 gis''16 (|
        ais''16 ) fis''16 gis''16 -\mordent ais''16 b''16 fis''16 
        %%
        e''16 ( d''16 ) d''16 ( cis''16 ) b'16 ( ais'16 )|
        \appoggiatura ais'8 b'8 r8 \voiceOne d''8 d''16 b'16 gis'16 b'16 e'16 b'16 |
        c''8 r8 c''8 c''16 a'16 fis'16 a'16 d'16 d''16 |
        %%
        %% 17
        \oneVoice b'8( -\prall g'8 e'8) cis''8 ( a'8 fis'8 )|
        dis''8 ( b'8 g'8 ) e''16 dis''16 e''16 g''16 fis''16 e''16 |
        dis''16 -\prall fis''16 e''16 fis''16 dis''16 fis''16 b''16 b'16 e''16 dis''16 e''16 dis''16 |
        %% 20
        cis''16 -\prall e''16 d''16 e''16 cis''16 e''16 a''16 a'16 d''16 cis''16 d''16 cis''16 |
        b'16 -\prall d''16 cis''16 d''16 b'16 d''16 g''16 g'16 c''16 b'16 c''16 b'16 |
        a'16 -\prall cis''16 b'16 cis''16 a'16 cis''16 fis''16 c''16 b'16 a'16 g'16 -\prall fis'16 |
        %% 23
        g'8 -\mordent \voiceOne r8 g''8 g''8 r8 fis''8 |
        fis''16 e''16 dis''16 fis''16 e''16 d''16 \oneVoice c''16 b'16 a'16 g'16 fis'16 e'16 |
        dis'4 -\prall \voiceOne \clef soprano fis'8 g'16 e''16 d''16 e''16 b'16 d''16 |
        %% 26
        \oneVoice cis''4 -\prall \voiceOne e'8 fis'16 d''16 c''16 d''16 a'16 c''16 |
        \oneVoice b'8 -\prall \clef treble r8 \voiceOne b''8 b''8 r8 a''8 |
        a''16 g''16 fis''16 a''16 g''16 dis''16 e''4 e''16 dis''16 |
        %% 29
        e''8 \clef alto r8 b'8 b'8 r8 a'8 |
        a'16 g'16 fis'16 a'16 g'16 dis'16 e'4 e'16 dis'16 |
        e'4.( % TODO: ~
        e'4.) |
      }
      \new Voice {
        s2.*2
        %% 3
        s8 \voiceTwo r b' b' r a' |
        a' r r16 g'8 fis'16 ~ fis'8 e' |
        dis'16 s16*5 s4 \voiceOne b'8 |
        %% 6
        \voiceTwo a'16 s16*5 s4 \voiceOne a'8 |
        \voiceTwo g'16 s16*5 s4. |
        s4 b8 ~ b16 b8 b16 ~ b8 |
        %% 9
        b16 s16*5 s4. |
        s4. fis'8. e'16 ~ e'8 |
        fis'8 r a' gis' r gis' |
        %% 12
        fis'16 s16*5 d''16 fis'8 fis' e'16 |
        fis' s16*5 s4. |
        s4.
        %%
        s4. |
        s4 fis'8 e'16 s16*5 |
        e'8 r e' d'16 s16*5 |
        %%
        %% 17
        s2.*3 |
        %% 20
        s2.*3 |
        %% 23
        s8 r b' b' r a' |
        a'16 s16*5 s4. |
        s4 dis'8 e'16 s16*5 |
        %% 26
        s4 cis'8 d'16 s16*5 |
        s4 b'8 c'' r cis'' |
        dis''16 s16*5 r16 g'8 fis'16 ~ fis'8 |
        %% 29
        g'8 r b c' r cis' |
        dis'16 s16*5 r16 g8 fis16 ~ fis8 |
        << \new Voice { s8 \voiceOne g16[ b16] ~ b8 ~ b4. }
           { r16 a g8 ~ g ~ g4. } >>
      }
    >>
    \new Staff <<
      \clef "bass"
      \global
      \new Voice {
        \voiceOne e4-\mordent e8 fis4 fis8 |
        g4-\mordent g8 s8 b4 |
        %% 3
        \oneVoice e16 \clef alto e'16 d'16 e'16 b16 d'16 cis'16-\prall fis'16 e'16 fis'16 cis'16 e'16 |
        dis'16 -\prall b16 cis'16 dis'16 e'8 d'8 ( cis'4 )-\prall |
        \voiceOne b4( \clef bass b8) \oneVoice e16 e'16 d'16 e'16 e16 e'16 |
        %% 6
        \voiceOne a4. \oneVoice d16 d'16 c'16 d'16 d16 d'16 |
        \voiceOne g4. ~ g4. |
        \oneVoice d16 e16 fis16 d16 g8 ~ \voiceOne g8 d4 |
        %% 9
        g,8 g8[ b8] fis8 a8 d'8 |
        \oneVoice e8 e'8 cis'8 \voiceTwo d'8 a8 a,8 |
        \oneVoice d16 d'16 cis'16 d'16 d16 d'16 e16 cis'16 b16 cis'16 gis16 b16 |
        %% 12
        \set tieWaitForNote = ##t
        \voiceOne \tieDown ais8~ cis'4*1/2 ais8 \oneVoice b8 ( a8 ) g8 |
        fis8 \clef alto d'8 b8 e8 e'8 cis'8 |
        fis8 fis'8 d'8
        %%
        \voiceTwo e'8 fis'8 fis8 |
        \oneVoice b16 \clef bass b16 a16 b16 fis16 a16 \voiceTwo gis8 e8 e,8 |
        \oneVoice a,16 a16 g16 a16 e16 g16 \voiceTwo fis8 d8 d,8 |
        %%
        %% 17
        \oneVoice g,16 g16 e16 g16 cis16 e16 a,16 a16 fis16 a16 dis16 fis16 |
        b,16 b16 g16 b16 e16 g16 \voiceOne c8 e8 a8 |
        b,8 \voiceTwo b8 a8 gis4 e8 |
        %% 20
        a,8 a g fis4 d8 |
        g,8 g8 fis8 e4 c8 |
        fis,8 fis8 e8 dis4 b,8 |
        %% 23
        \oneVoice e16 e'16 dis'16 e'16 e16 e'16 fis16 dis'16 cis'16 dis'16 fis16 dis'16 |
        g8 \clef alto \voiceOne g'4 a8 b8 c'8 |
        \oneVoice b16 \clef bass b16 a16 b16 b,16 b16 \voiceOne e4. |
        %% 26
        \oneVoice a,16 a16 g16 a16 a,16 a16 \voiceOne d4. |
        \oneVoice g,16  \clef alto g'16 fis'16 g'16 g16 g'16 a16 fis'16 e'16 fis'16 a16 fis'16 |
        \voiceOne b8 b'8 e'8 \clef bass \oneVoice a8 b8 b,8 |
        %% 29
        e16 g16 fis16 g16 g,16 g16 a,16 fis16 e16 fis16 a,16 fis16 |
        \voiceOne b,8 b8 e8 a,8 b,4 |
        r8 r8 b,8 e4. -\mordent |
      }
      \new Voice {
        \voiceTwo e8 e,4 fis8 fis,4 |
        g8 g,4 a8 b b, |
        %% 3
        s2.*2 |
        b4 b,8 s4. |
        %% 6
        a4 a,8 s4. |
        g8 b, g, c d e |
        s4. c8 d d, |
        %% 9
        s8 g4 fis4. |
        s4. \voiceOne s8 a4 |
        s2. |
        %% 12
        fis4 fis8 s4. |
        s2. |
        s4.
        %%
        \voiceOne s8 fis'4 |
        s4. s8 e4 |
        s4. s8 d4 |
        %%
        %% 17
        s2. |
        \voiceTwo s4. c4.*1/3 e4 |
        \voiceOne s8 b4 ~ b8 b4 |
        %% 20
        s8 a4 ~ a8 a4 |
        s8 g4 ~ g8 g4 |
        s8 fis4 ~ fis8 fis4 |
        %% 23
        s2. |
        \voiceTwo s8 g' g a4. |
        s4. e4 e,8 |
        %% 26
        s4. d4 d,8 |
        s2. |
        b4 s8 s4. |
        %% 29
        s2. |
        b,4 s8 s8 b, b,, |
        e,4. ~ e, |
      }
    >>
  >>
  \header {
    piece = "Huitième prélude"
    titre = "Huitième prélude"
    breakbefore = ##t
  }
  \layout { indent = 1.0\cm }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 52 4) } }
}
  