\include "english.ly"
\version "2.18.2"
#(set-global-staff-size 16)

\header {
  title = "My Mother's Old Red Shawl"
  composer = "Charles Moreland"
  mutopiacomposer = "MorelandC"
  instrument = "Voice and Piano"
  source = "G. W. Warren & Co., Evansville, Ind."
  date = "1885"
  license = "Public Domain"
  enteredby = "Stan Sanderson"
  maintainer = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"
  mutopiastyle = "Song"

 footer = "Mutopia-2014/09/07-430"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
  top-margin = 6\mm
  top-markup-spacing.basic-distance = #6
  markup-system-spacing #'padding = #5
  markup-markup-spacing #'padding = #1.2
  last-bottom-spacing.basic-distance = #12
  top-system-spacing.basic-distance = #12
  bottom-margin = 10\mm
}

melody =  \relative c'' {
	\key bf\major \time 4/4
	\partial 4 s4 s1*3  s2 s4
	d8. c16
	bf4 d,8. ef16 f4 ef'8. d16 | c4 fs,8 g c4\fermata r8 g | c c bf4 ef,8 bf' a g |
	f2. d'8.\( c16\) | bf4 d,8. ef16 f4 ef'8. d16 | c4 fs,8 g c4\fermata d |
	ef8. d16 ef8. d16 a8. f16 g8. a16 | bf2 ~ bf4 r8 c | c4 a8. bf16 c8 f4 f8 |
	e4 d8. bf16 g4 r8 a | bf f' e d bf f' e d | c2. c4 |
	c4 a8 bf c f4 f8 | e4 d8 bf g4. c8 | e d c a c b bf g |
    \set Timing.measureLength = #(ly:make-moment 3/4)
    f2 ~ f4
}

textA = \lyricmode {
	It now lies on the shelf, It is fad -- ed and torn, That dear old shawl by my
	moth -- er wore. It is all that is left for this heart to a -- dore, To bring
	to mind those hap -- py days of yore. __ How of -- ten the hands to these folds
	have been press'd That now be -- neath the dai -- sy's are at rest, The tears
	come un -- bid -- den and si -- lent -- ly fall To gleam like gems on mo -- ther's
	old red shawl.
}

textB = \lyricmode {
	Oh, my heart of -- ten aches with a dull throb -- bing pain, When vi -- sions of
	child -- hood come a -- gain. And __ _ sad -- ly I think of the days that are past,
	Too bright __ _ and too hap -- _ py to last __ Oh beau -- ti -- ful child -- hood, made
	bright by the smile Of one whose love could ev'- ry care be -- guile. How glad -- ly
	I'd flee from the world's bit -- ter thrall To seek the heart that throbb'd be- neath
	the shawl.
}

textC = \lyricmode {
	How -- _ bright -- ly her face to my mem -- 'ry ap -- pears, Tho' grave dust has cov -- er'd
	it for years. How __ _ sweet sounds her voice, with a ca -- dence of love, Though now 'tis
	turn'd to mel -- o -- dies a -- bove. __ For life flees a -- way like a tale that is
	told But, joys of child -- hood nev -- er can grow old, And vis -- ions of moth -- er
	so dear to us all Come back when -- e're I see her old red shawl.

}

upper = \relative c'' {
	\key bf\major \time 4/4
    \partial 4
	<d f>8. <c ef>16 |
%% 1-4
	<bf d>4 <bf d,>8. <c ef,>16 <d f,>8 <bf f> <d bf> <g ef> |
	<f d>4. <d bf>8 <e bf'>4\fermata <e a>8. <e g>16 |
	<d f>8^> r r a <d a f ef>4. <c a f ef>8 |
	<bf f d>2 ~ <bf f d>4 \bar "|." \break
    \set Timing.measureLength = #(ly:make-moment 1/4)
	<d f>8. <c ef>16
    \set Timing.measureLength = #(ly:make-moment 4/4)
    <bf d>4 <bf d,>8. <c ef,>16 <d f,>8 f,, <bf d> f |
	r8 g( <bf ef> g) r g( <c e> <bf d>) | r a( <c ef> a) r a( <c ef> a) |

	<d f>8( <f bf> <bf d> <ef g>) <d f>4 <d f>8. <c ef>16 |
	<bf d>4 <bf d,>8. <c ef,>16 <d f,>8 f,, <bf d> f | r8 g( <bf ef> g) r g( <c e> g) |

	r8 a( <c f> a) r a( <c ef> a) | bf'( f) d'( f,) bf4 r8 c |
	r8 <f, c a> <f c a> <f c a> r <f c a> <f c a> <f c a> |

	r8 <e c bf> <e c bf> <e c bf> r <e c bf g> <e c bf g> <e c bf g> |
	r8 <e c bf g> <e c bf g> <e c bf g> r <e c bf g> <e c bf g> <e c bf g> |
	<c' a>8 <a f> <c a'> <a f'> <a c> <a f'> <a f> <a c> |

	r8 a, <c f> <a f'> r a <c f> <a f'> | r g <bf d> g r <g b d f> <g b d f> <g b d f> |
	r8 g <bf c e> <g c e> r g[ <bf c e> <g c e>]
    \set Timing.measureLength = #(ly:make-moment 3/4)
	r8 a <a f'> <a f'> <a ef' f>4\fermata \bar "|."
}

lower = \relative c {
	\key bf\major \time 4/4
    \partial 4
	\override Staff.NoteCollision.merge-differently-headed = ##t
	r4 | <<{bf2}\\{bf8 f' <bf d> f}>> bf, f' <bf d> f |
	<<{bf,2}\\{bf8 f' <bf d> f}>> <e g cs>4\fermata <e bf' d>8. <e bf' cs>16 |
	<f bf d>8^> r r4 <<{f2}\\{\slurUp f8[( f <a c> f])}>> | <bf bf,>8[ g f d] bf4

    \set Timing.measureLength = #(ly:make-moment 1/4)
	r4
    \set Timing.measureLength = #(ly:make-moment 4/4)
    << { bf2 } \\ { bf8 f' <bf d> f } >> bf,2 | ef c | f f |
	<<{bf,2}\\{bf8 f' <bf d> f}>> <<{bf,2}\\{bf8 f' <bf d> f}>> |
	<<{bf,2}\\{bf8 f' <bf d> f}>> bf,2 | ef c |

	f2 f | <<{bf,2}\\{\slurUp bf8( f') <bf d>( f)}>> <bf bf,>4 r | f2 f |

	g2 e | c c4 e | f c' a f |

	f2 f | bf, d | e c4 e |
    \set Timing.measureLength = #(ly:make-moment 3/4)
    f2 ~ f4
}

\score {
  <<
    \new Staff \with {
      midiInstrument = #"choir aahs"
    } <<
      \tempo "Moderato"
      \context Voice = "mel" {
        \autoBeamOff
        \melody
      }
    >>
    \new Lyrics { \lyricsto "mel" { \set stanza = "1." \textA } }
    \new Lyrics { \lyricsto "mel" { \set stanza = "2." \textB } }
    \new Lyrics { \lyricsto "mel" { \set stanza = "3." \textC } }

    \new PianoStaff \with {
      midiInstrument = #"acoustic grand"
    } <<
      \new Staff = "upper" \upper
      \new Staff = "lower" <<
        \clef bass
        \lower
      >>
    >>
  >>
  \layout {
      \context {
        \Staff \RemoveEmptyStaves
        \override VerticalAxisGroup.remove-first = ##t
      }
  }

  \midi {
    \tempo 4 = 60
  }
}


%%% Chorus

Chorus = \lyricmode {
	It is use -- ful no more, yet I fond -- ly a -- dore, That
	dear old shawl my moth -- er wore __ And thro' life it shall be a lov'd
	treas -- ure to me That lit -- tle old red shawl my moth -- er wore __
}

BassChorus = \lyricmode {
	_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
	_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ my moth -- er wore
}

SopMel =  \relative c'' { \set Staff.instrumentName = #"Sop."
	\key bf\major \time 4/4
	\partial 4 d8.\fermata c16 |
	bf4 d,8. ef16 f4 ef'8. d16 | c4 fs,8. g16 c4\fermata r8 g |
	bf4 a ef8 bf' a8. g16 | f2 ~ f4 d'8. c16 | bf4 d,8. ef16 f4 ef'8. d16 |
	c4 fs,8. g16 c4 r8 d | ef16 d8. ef c16 a r f8\fermata g\fermata a\fermata | bf2 ~ bf4 \bar "|."
}

AltoMel =  \relative c'' { \set Staff.instrumentName = #"Alto"
	\key bf\major \time 4/4 \partial 4
	bf8. a16 | bf4 f8. a16 bf4 c8. bf16 | g4 fs8. g16 g4\fermata r |
	d'4 c a8 a c8. c16 | bf2 ~ bf4 bf8. a16 | bf4 f8. a16 bf4 c8. bf16 |
	g4 fs8. g16 g4 r | c16 bf8. c f,16 f r a8\fermata bf\fermata c\fermata | f,2 ~ f4
}

TenMel =  \relative c' { \set Staff.instrumentName = #"Tenor"
	\key bf\major \time 4/4 \partial 4 \clef "treble_8"
	f8.\fermata ef16 | d4 bf8. c16 bf4 g8. f16 | ef4 ef8. ef16 e4\fermata r8 e |
	f4 ef c8 g' f8. ef16 | d2 ~ d4 f8. ef16 | d4 bf8. c16 d4 g8. f16 |
	ef4 ef8. ef16 e4 r8 e | g16 f8. g f16 c r f8\fermata e\fermata ef\fermata | d2 ~ d4
}

BassMel =  \relative c { \set Staff.instrumentName = #"Bass"
	\key bf\major \time 4/4 \partial 4 \clef bass
	f8.\fermata f16 | bf4 bf8. bf16 bf4 r | ef, ef8. ef16 c4\fermata r |
	f4 f f8 f f8. f16 | bf2 ~ bf4 bf8. bf16 | bf4 bf8. bf16 bf4 r |
	ef,4 ef8. ef16 c4 r | ef16 ef8. c c16 f r f8\fermata f\fermata f\fermata | bf g f d bf4
}


ChorusUp = \relative c'' {
	\key bf\major \time 4/4 \partial 4
	<f d>8.\fermata <ef c>16 | <d bf>4 <bf d,>8. <c ef,>16 <d f,>8[ f,, <bf d> f] |
		r g( <bf ef> g) r g <c e> <bf d> |
	r8 a( <c ef> a) r a( <c ef> a) | <d f> <f bf> <bf d> <ef g> <d f>4 <d f>8. <c ef>16 |
		<d f>4 <bf d,>8. <c ef,>16 <d f,>8[ f,, <bf d> f] |
	r8 g <bf ef> g r g <c e> g |
		r a( <c f> a) <c f a>16 r <f f'>8\fermata <g e'>\fermata <a ef'>\fermata |
			<bf f d>2 ~ <bf f d>4
}

ChorusDown = \relative c {
	\key bf\major \time 4/4 \partial 4
	\override Staff.NoteCollision.merge-differently-headed = ##t
	r4 | <<{bf2}\\{bf8 f' <bf d> f}>> bf,2 | ef c |
	f2 f | <<{bf,2}\\{bf8 f' <bf d> f}>>  <<{bf,2}\\{bf8 f' <bf d> f}>> | bf,2 d |
	ef2 c | f <f a>16 r f8\fermata f\fermata f\fermata | bf( g f d) bf4
}


\score {
  <<
    \new Voice = "melA" { \autoBeamOff \SopMel }
    \new Lyrics { \lyricsto "melA" { \Chorus } }

    \new Voice = "melB" { \autoBeamOff \AltoMel }

    \new Voice = "melC" { \autoBeamOff \TenMel }
    \new Lyrics { \lyricsto "melC" { \Chorus } }

    \new Voice = "melD" { \autoBeamOff \BassMel }
    \new Lyrics { \lyricsto "melD" { \BassChorus } }

    \new PianoStaff <<
      \new Staff = "upper" \ChorusUp
      \new Staff = "lower" <<
        \clef bass
        \ChorusDown
      >>
    >>
  >>
  \header { piece = "Chorus" }
  \layout { }
  \midi {
    \tempo 4 = 60
  }
}
