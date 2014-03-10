\version "2.18.0"

\header {
  title = "Greensleeves"
  composer = "Traditional"
  mutopiacomposer = "Traditional"
  arranger = "David Kastrup"
  instrument = "vocals, guitar"
  style = "Renaissance"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "David Kastrup"
  maintainerEmail = "dak@gnu.org"

 mutopiainstrument = "Voice, Guitar"
 mutopiasource = "Voice and guitar arranged from memory"

 footer = "Mutopia-2014/03/10-1943"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

"\\<" =
#(define-event-function (parser location pos) (markup?)
  #{
     -\tweak outside-staff-horizontal-padding #0.7
     -\tweak bound-details.left.padding #0
     -\tweak bound-details.right.padding #-0.5
     -\tweak bound-details.left.text \markup \normal-text #pos
     -\tweak style #'line
     -\tweak bound-details.right.attach-dir #RIGHT
     \startTextSpan
  #})

"\\>" = \stopTextSpan

lyricsI = \lyricmode {
  \set stanza = "1."
  A -- las, my love, you do me wrong
  to cast me off dis -- cour -- teous -- ly.
  For I have lov'd thee well and long,
  de -- ligh -- ting in your com -- pa -- ny.
}

lyricsII = \lyricmode {
  \set stanza = "2."
  I have been rea -- dy at your hand,
  to grant what e -- ver thou wouldst crave,
  I have both wa -- gered life and land
  thy love and good -- will for to have.
}

lyricsIII = \lyricmode {
  \set stanza = "3."
  My men were cloth -- ed all in green,
  and they did e -- ver wait on thee.
  All this was gal -- lant to be seen,
  and yet thou wouldst not love __  _ me.
}

lyricsIV = \lyricmode {
  \set stanza = "4."
  Now I shall pray to God on high
  that thou my con -- stancy may -- est see
  and that once more be -- fore I die
  thou wilt vouch -- safe to love __ _ me.
}

lyricsV = \lyricmode {
  \set stanza = "5."
  Ah Green -- _ sleeves,
  \set ignoreMelismata = ##t now \unset ignoreMelismata
  fare -- well a -- dieu, __ _
  God I pray to pro -- sper thee.
  For I am still thy lo -- ver true,
  come once a -- gain and love __ _ me.
}

refrain = \lyricmode {
  Green -- sleeves was all my joy
  Green -- sleeves was my de -- light.
  Green -- sleeves was my heart of gold,
  and who but my la -- dy Green -- sleeves.
}

pattern =
#(define-music-function (parser location bass1 bass2 chord1 chord2)
  (ly:pitch? ly:pitch? ly:pitch? ly:pitch?)
  (make-relative (bass1 bass2 chord1 chord2)
   (make-event-chord (list bass1 bass2 chord1 chord2))
   #{ <<
        { r8 $bass2 [ <$chord1 $chord2 > $bass2 <$chord1 $chord2 > $bass2 ] | } \\
        $bass1 2.
      >>
   #}))
      
guitar = \relative {
  \key d \dorian
  \time 3/4
  \pattern d a' d f
  \pattern d a' d f
  \repeat volta 5 {
    \pattern f a d f
    \pattern d a' d f
    \pattern e g c e
    \pattern c g' c e
    \pattern f a d f
    \pattern d a' d f
    \pattern c g' c e
    \pattern a g' c e
    \pattern f' a d f
    \pattern d a' d f
    \pattern e g c e
    \pattern c g' c e
    \pattern d a' d f
    %%  \pattern a g' c e
    \pattern c a' c e
    \pattern d a' d f
    %%  \pattern a g' c e
    %%  \pattern f, a' c f
    d8 e f g a b\3
    << { c a <c f> a <c f> a } \\
       f,2.
    >>
    \pattern f' a c f
    \pattern e g c e
    \pattern c g' c e
    \pattern f a d f
    \pattern d a' d f
    \pattern c g' c e
    %%  \pattern a g' c e
    %%  \pattern f, a' c f
    \tuplet 3/2 4 { a8[ b c d e f g a b]_\3 }
    << { c a <c f> a <c f> a } \\
       f,2.
    >>
    \pattern f' a c f
    \pattern e g c e
    \pattern c g' c e
    \pattern d a' d f
    \pattern c a' c e
  } \alternative {
    { \pattern d a' d f
      \pattern d a' d f
    }
    { \pattern d a' d f
      << { \set tieWaitForNote = ##t
	   r8 a' d e f\3~\<X a\2~ | <f a d>2\> } \\
	 { d,2.~ | d2 }
      >> r4
    }
  }
}

melody = \relative {
  \key d \dorian
  r2. | r2 d'4 |
  \repeat volta 5
  { f2 g4 | a4. b8( a4) |
    g2 e4 | c4. d8( e4) |
    f2 d4 | d4. c8( d4) |
    e2 c4 | a2 d4 |
    f2 g4 | a4. b8( a4) |
    g2 e4 | c4. d8( e4) |
    f4. e8( d4) | c4. a8( c4) |
    d2 d4 | d2 r4 |
    c'2. | c4.( b8) a4 |
    g2 e4 | c4.( d8 e4) |
    f2( d4) | d4.( c8) d4 |
    e2 c4 | a2 r4 |
    c'2. | c4. b8 a4 |
    g2 e4 | c4.( d8) e4 |
    f4. e8 d4 | c4.( a8) c4 |
  } \alternative {
    { d2. | d4 r4 d4 | }
    { d2. | d2 r4 | r2. }
  }
  \bar "|."
}



\score {
  <<
    \new Staff { \melody }
    \addlyrics { \lyricsI \break \refrain
		 \set stanza = "2." I
		 Green -- sleeves.
	       }
    \addlyrics { \lyricsII \repeat unfold 27 \skip 1
		 \set stanza = "3." My }
    \addlyrics { \lyricsIII \repeat unfold 27 \skip 1
		 \set stanza = "4." Now }
    \addlyrics { \lyricsIV \repeat unfold 27 \skip 1
		 \set stanza = "5." Ah }
    \addlyrics { \lyricsV }
    \new StaffGroup <<
      \new Staff \with {
	\clef "treble_8"
	\omit StringNumber
      } { \guitar }
      \new TabStaff { \guitar }
    >>
  >>
  \layout { }
}

\score {
  <<
    \new Staff \with { midiInstrument = "violin" } \unfoldRepeats { \melody }
    \addlyrics { \lyricsI \refrain \lyricsII \refrain \lyricsIII \refrain
		 \lyricsIV \refrain \lyricsV \refrain }
    \new TabStaff \unfoldRepeats { \guitar }
  >>
  \midi { \tempo 2. = 40 }
}
