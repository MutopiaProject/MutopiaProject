\version "2.19.26"

#(set-global-staff-size 22)

\paper {
    top-margin = 8\mm                              %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #5      %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
    %last-bottom-spacing.basic-distance = #12      %-pads music from copyright block on one-page scores only
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

\header {
  title = "Praeludium 24 - BWV 869"
  composer = "Johann Sebastian Bach"
  style = "Baroque" 
  source = "Manuscript copy, n.d.(ca.1733-40)"
  % http://imslp.org/wiki/Prelude_and_Fugue_in_B_minor,_BWV_869_%28Bach,_Johann_Sebastian%29
  %
  % Manuscript copy, n.d.(ca.1733-40).
  % D B Mus. ms. Bach P 202 (Berlin, Staatsbibliothek)

  maintainer = "Heikki Junes"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Das Wohltemperierte Clavier I, Praeludium 24"
  mutopiaopus = "BWV 869"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Harpsichord, Piano"
  
 footer = "Mutopia-2015/09/07-2049"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\layout {
  \context {
    \Score
    autoBeaming = ##f
  }
}
PartPOneVoiceOne =  \relative cis'' {
  \voiceOne
  \repeat volta 2 {
    \clef "treble" \key d \major \time 4/4 \tempo "Andante" | % 1
    d2\rest cis4 fis4 ~ | % 2
    fis4 e4 d2 ~ | % 3
    d4 cis8 [ b8 ] ais4 b8 [ cis8 ] | % 4
    fis,4 b2 a4 | % 5
    g2 fis2 | % 6
    b4 e4 a,4 d4 ~ | % 7
    d4 cis4 d16 [ cis16 b16 a16 ] d4 ~ | % 8
    d4 cis4 b4 e4 ~ | % 9
    e4 d4 cis4 fis4 ~ | \barNumberCheck #10
    fis4 eis4 fis4 gis4 | % 11
    cis,4 fis2 eis4 | % 12
    fis4 b4\rest e,!4 a4 ~ | % 13
    a4 g4 fis4 b4 ~ | % 14
    b4 ais4 b4. a16 [ g16 ] | % 15
    fis4. g8 d4 cis4 | % 16
    b8 g'4 fis8 ~ fis8 [ b16 ais16 ] b4 | % 17
    ais8 [ b8 e,8 d8 ] cis2\prall
  }
  \repeat volta 2 {
    | % 18
    a'!2 ~ a8 [ fis8 b8 a8 ] | % 19
    g4 fis4 g2 ~ | \barNumberCheck #20
    g8 [ e8 a8 g8 ] fis4 e4 | % 21
    fis2 ~ fis8 [ fis8 gis8 a8 ] | % 22
    b4 a2 g!8 [ fis8 ] | % 23
    eis8 [ cis8 fis8 e8 ] d2 ~ | % 24
    d4 cis8 [ b8 ] a8 [ b8 ] cis4 ~ | % 25
    cis4 b2 a4 ~ | % 26
    a4 gis8 [ fis8 ] eis8 [ d'8 cis8 b8 ] | % 27
    a4 gis4 fis4 a'4\rest | % 28
    dis,4 e8 [ fis8 ] b,8 [ c'8 b8 a8 ] | % 29
    g4 fis4 e4 bes'4 ~ | \barNumberCheck #30
    bes4 a8 [ g8 ] fis8 [ cis8 d8 e8 ] | % 31
    a,8 d4 cis8 fis,8 b4 a8 | % 32
    d,8 g4 fis8 gis4 ais8 [ b8 ] | % 33
    cis2 ~ cis8 [ b8 cis8 d8 ] | % 34
    e2 ~ e8 [ d8 e8 fis8 ] | % 35
    g2. fis4 ~ | % 36
    fis8 [ a8 g8 fis8 ] g4 gis4 ~ | % 37
    gis8 [ b8 a8 gis8 ] a4 ais4 ~ | % 38
    ais8 [ c8 b8 ais8 ] b4. a8 | % 39
    g2 fis2 | \barNumberCheck #40
    e2 d2 ~ | % 41
    d4 cis8 [ b8 ] ais8 [ g'8 fis8 e8 ] | % 42
    d4 cis4 b2 ~ | % 43
    b8 b4 ais8 e'2 ~ | % 44
    e8 e4 dis8 g2 ~ | % 45
    g8 fis4 eis8 b'8 [ e,16 dis16 ] e8 [ g8 ] | % 46
    d4 cis4 dis8 [ e8 ais,8 b8 ] | % 47
    g2 \once \override NoteColumn.force-hshift=#0.3 fis2
  }
}

PartPOneVoiceThree =  \relative ais' {
  \voiceOne
  \repeat volta 2 {
    \clef "treble" \key d \major \time 4/4 | % 1
    s1*17
  }
  \repeat volta 2 {
    s1*29 | % 47
    a'4\rest a8\rest ais,8 b2
  }
}

PartPOneVoiceTwo =  \relative fis' {
  \voiceTwo
  \repeat volta 2 {
    \clef "treble" \key d \major \time 4/4 | % 1
    fis4 b2 a4 | % 2
    gis4 cis2 b8 [ a8 ] | % 3
    g2 ~ g8 [ fis8 ] e4 ~ | % 4
    e4 d4 cis4 fis4 ~ | % 5
    fis4 e2 d4 ~ | % 6
    d4 g2 fis4 | % 7
    e2 fis4 r4 | % 8
    e4 a2 g4 | % 9
    fis4 b2 a4 | \barNumberCheck #10
    gis4 cis2 b4 ~ | % 11
    b4 a4 gis2 | % 12
    a4 d2 cis4 | % 13
    b4 e2 d4 | % 14
    cis4 fis4 ~ fis8 [ b,8 ] e4 ~ | % 15
    e8 [ d16 cis16 ] d8 [ b8 ] b4 ais4 | % 16
    b4 cis4 d4. e8 ~ | % 17
    e8 [ d8 cis8 b8 ] ais2
  }
  \repeat volta 2 {
    s8 cis8 [ fis8 e8 ] dis2 | % 19
    e4 dis4 e8 [ b8 e8 d8 ] | \barNumberCheck #20
    cis2 d4 cis4 | % 21
    d8 [ a8 b8 cis8 ] d2 ~ | % 22
    d8 [ cis8 fis8 e8 ] d8 [ cis8 ] b4 ~ | % 23
    b4 a4 ~ a8 [ a8 gis8 fis8 ] | % 24
    f8 [ fis8 ] gis2 fis8 [ e8 ] | % 25
    d2 cis2 | % 26
    b2 ~ b8 [ eis!8 fis8 gis8 ] | % 27
    cis,8 fis4 eis8 fis4 c'4 ~ | % 28
    c4 b8 [ a8 ] g8 [ dis'8 e8 fis8 ] | % 29
    b,8 e4 dis8 e4 a,4\rest | \barNumberCheck #30
    cis4 d8 [ e8 ] a,8 [ bes8 a8 g8 ] | % 31
    fis4 e4 d4 cis4 | % 32
    b4 a4 b4 e4 ~ | % 33
    e8 [ g8 fis8 e8 ] d4 g4 ~ | % 34
    g8 [ b8 a8 g8 ] fis4 b4 ~ | % 35
    b8 [ d8 cis8 b8 ] cis8 [ e8 d8 cis8 ] | % 36
    d4 b4 ~ b8 [ d8 cis8 b8 ] | % 37
    e4 cis4 ~ cis8 [ e8 d8 cis8 ] | % 38
    fis4 d4 ~ d8 [ e8 ] fis4 ~ | % 39
    fis4 e2 d4 ~ | \barNumberCheck #40
    d4 cis2 b8 [ a8 ] | % 41
    g2 ~ g8 [ ais!8 b8 cis8 ] | % 42
    fis,8 b4 ais8 b8 e,4 dis8 | % 43
    g2 ~ g8 g4 fis8 | % 44
    b2 ~ b8 b4 ais8 | % 45
    d2 ~ d8 [ c8 ] b4 ~ | % 46
    b4 ais4 a8 g4 fis8 ~ | % 47
    fis8 [ e8 ] cis4 dis2
  }
}

PartPOneVoiceFive =  \relative b, {
  \repeat volta 2 {
    \clef "bass" \key d \major \time 4/4 b8 [
    cis8 d8 e8 ] fis8 [ gis8 a8 b8 ] | % 2
    cis8 [ b8 ais8 fis8 ] b8 [ a8 g8 fis8 ] | % 3
    e8 [ cis8 d8 e8 ] fis8 [ fis,8 gis8 ais8 ] | % 4
    b8 [ cis8 d8 e8 ] fis8 [ gis8 a8 fis8 ] | % 5
    b8 [ b,8 cis8 a8 ] d8 [ cis8 b8 a8 ] | % 6
    g8 [ fis'8 e8 d8 ] cis8 [ a'8 b8 fis8 ] | % 7
    g8 [ e8 a8 a,8 ] d8 [ e8 fis8 g8 ] | % 8
    a,8 [ b8 cis8 d8 ] e8 [ fis8 g8 a8 ] | % 9
    b,8 [ cis8 d8 e8 ] fis8 [ gis8 a8 b8 ] | \barNumberCheck #10
    cis8 [ b8 cis8 a8 ] d8 [ cis8 d8 b8 ] | % 11
    eis,8 [ cis'8 d8 a8 ] b8 [ gis8 cis8 cis,8 ] | % 12
    fis8 [ e8 fis8 gis8 ] a8 [ b8 cis8 d8 ] | % 13
    e,8 [ fis8 g!8 a8 ] b8 [ cis8 d8 e8 ] | % 14
    fis,8 [ e8 fis8 d8 ] g8 [ fis8 g8 e8 ] | % 15
    ais8 [ fis8 b8 e,8 ] fis8 [ e8 fis8 fis,8 ] | % 16
    b4 a4 g2\trill | % 17
    fis1
  }
  \repeat volta 2 {
    | % 18
    fis'8 [ g!8 a8 fis8 ] b8 [ a8 g8 fis8 ] | % 19
    e8 [ g,8 a8 b8 ] e,8 [ fis8 g8 e8 ] | \barNumberCheck #20
    a8 [ g8 fis8 e8 ] d8 [ fis8 g8 a8 ] | % 21
    d,8 [ e'8 d8 cis8 ] b8 [ a8 gis8 fis8 ] | % 22
    eis8 [ fis'8 gis8 a8 ] b8 [ cis8 d8 b8 ] | % 23
    cis8 [ fis,,8 gis8 a8 ] b8 [ cis8 d8 b8 ] | % 24
    cis8 [ dis8 eis8 cis8 ] fis8 [ gis8 a8 fis8 ] | % 25
    b8 [ a8 gis8 fis8 ] f8 [ cis8 fis8 e8 ] | % 26
    d8 [ cis8 d8 b8 ] cis8 [ b8 a8 b8 ] | % 27
    cis8 [ b8 cis8 cis,8 ] fis8 [ cis'8 dis8 e8 ] | % 28
    fis8 [ a8 g8 fis8 ] e8 [ fis8 g8 a8 ] | % 29
    b8 [ a8 b8 b,8 ] e8 [ b'8 cis8 d8 ] | \barNumberCheck #30
    e8 [ g,8 fis8 e8 ] d8 [ e8 fis8 g8 ] | % 31
    a8 [ g8 a8 a,8 ] b8 [ d8 fis8 fis,8 ] | % 32
    g8 [ b8 ] d4 ~ d8 [ d8 cis8 b8 ] | % 33
    ais8 [ fis8 gis8 ais8 ] b8 [ fis'8 e8 d8 ] | % 34
    cis8 [ a8 b8 cis8 ] d8 [ a'8 g8 fis8 ] | % 35
    e8 [ cis8 d8 e8 ] ais,8 [ fis'8 gis8 ais8 ] | % 36
    b8 [ b,8 cis8 d8 ] e8 [ fis8 e8 d8 ] | % 37
    cis8 [ cis'8 d8 e8 ] fis8 [ g8 fis8 e8 ] | % 38
    d8 [ d,8 e8 fis8 ] g8 [ fis8 e8 dis8 ] | % 39
    e8 [ d8 cis8 b8 ] ais8 [ fis'8 b8 a8 ] | \barNumberCheck #40
    gis8 [ fis8 gis8 ais8 ] b8 [ b,8 cis8 d8 ] | % 41
    e8 [ fis8 g8 e8 ] fis8 [ e8 d8 e8 ] | % 42
    fis8 [ e8 fis8 fis,8 ] g4 fis4 | % 43
    e4 d4 cis8 [ b''8 ais8 a8 ] | % 44
    gis8 [ g8 fis8 b8 ] e,8 [ e'8 d8 cis8 ] | % 45
    b8 [ c8 cis8 d8 ] eis,8 [ fis8 g!8 e8 ] | % 46
    fis8 [ e8 fis8 fis,8 ] b2 ~ | % 47
    b1
  }
}


% The score definition
\score {
  <<
    \new PianoStaff <<
      \context Staff = "1" <<
        \context Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne 
        \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
        \mark \markup { \musicglyph #"scripts.ufermata" }
        }
        \context Voice = "PartPOneVoiceThree" { \voiceTwo \PartPOneVoiceThree }
        \context Voice = "PartPOneVoiceTwo" { \voiceThree \PartPOneVoiceTwo }
      >> \context Staff = "2" <<
        \context Voice = "PartPOneVoiceFive" { \PartPOneVoiceFive 
        \override Staff.RehearsalMark.direction = #DOWN
        \mark \markup { \musicglyph #"scripts.dfermata" }
        }
      >>
    >>

  >>
  \layout {
   \context {
     \Score
     % removed from Score context to allow rehearsal marks (in this case, fermatas)
     % on each stave
     \remove "Mark_engraver"

   }
   \context {
     \Staff
     \consists "Mark_engraver"     
   }
  }
  \midi { 
    \tempo 4=90 
  }
}

