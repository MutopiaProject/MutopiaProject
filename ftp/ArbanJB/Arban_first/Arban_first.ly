\include "english.ly"
\version "2.16.1"

\header {
	title = "Method for the Cornet. First Studies"
	composer = "Jean-Baptiste Arban"
	enteredby = "Michael Firbank"
	instrument = "Trumpet"

	mutopiatitle = "Method for the Cornet. First Studies"
	mutopiacomposer = "ArbanJB"
	mutopiainstrument = "Trumpet"
	source = "Fischer, 1893"
	style = "Technique"
	copyright = "Public Domain"
	maintainer = "Michael Firbank"
	maintainerEmail = "mjfirbank @ gmail (dot) com"

 footer = "Mutopia-2013/06/16-1842"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}


%replace "pose c c'" with "pose c bf,,"
% | sed s/pose.c.c'/pose c bf,,/g | sed s/treble/bass | 

% run next line to prepare for bflat bass bass clef actual pitch.
% which transposes it to the appropriate clef, and also puts the transposed extreme keys into a sensible form 
%cat Arban_first.ly  | sed s/pose.c.c./pose\ c\ bf,,/g | sed s/treble/bass/g |sed /pose/s/gf\ \{/fs\ \{/g |sed /pose/s/df\ \{/cs\ \{/g | lilypond -o Arban_bass -

%shortcuts for valve notation
valveAB =  \markup{\override #'(baseline-skip . 1.7) \column
      {  \finger 1 \finger 2} }
valveO =  \markup{\override #'(baseline-skip . 1.7) \column
      {  \finger 0 } }
valveA =  \markup{\override #'(baseline-skip . 1.7) \column
      {  \finger 1 } }
valveB =  \markup{\override #'(baseline-skip . 1.7) \column
      {  \finger 2 } }
valveC =  \markup{\override #'(baseline-skip . 1.7) \column
      {  \finger 3 } }
valveBC =  \markup{\override #'(baseline-skip . 1.7) \column
      {  \finger 2 \finger 3 } }
valveABC =  \markup{\override #'(baseline-skip . 1.7) \column
      {  \finger 1 \finger 2 \finger 3 } }
valveAC =  \markup{\override #'(baseline-skip . 1.7) \column
      {  \finger 1 \finger 3 } }

%number 1
\score {

 \new Staff {
\clef treble
\time 4/4
\transpose c c' {
\key c \major
g1_\valveO->^"tu" \breathe
g_\valveO->^"tu" \breathe
c'_\valveO-> \breathe
c'_\valveO-> \breathe
%a_\valveAB-> \breathe
a_\valveAB \breathe
a-> \breathe
d'_\valveA-> \breathe
d'-> \breathe
f_\valveA-> \breathe
f-> \breathe
a_\valveAB-> \breathe
a-> \breathe
g1_\valveO-> \breathe
g_\valveO-> \breathe
b_\valveB-> \breathe
b-> \breathe
g1_\valveO-> \breathe
g_\valveO-> \breathe
c'_\valveO-> \bar "|."
}
}
\header { 
piece = "1"
}
\midi {}
\layout { }
}



%number 2. minims

\score {

 \new Staff {
\clef treble
\time 4/4

\transpose c c' {
\key c \major
g2_\valveO->^"tu"
g->^"tu" \breathe
a_\valveAB 
a \breathe
b_\valveB 
b \breathe
c'1_\valveO \breathe
a2_\valveAB 
a \breathe
b_\valveB 
b \breathe
c'_\valveO 
c' \breathe
d'1_\valveA \breathe
d'2_\valveA->^"tu"
d'->^"tu" \breathe
c'_\valveO 
c' \breathe
b_\valveB 
b \breathe
a1_\valveAB \breathe
c'2_\valveO 
c' \breathe
b_\valveB 
b \breathe
a2_\valveAB 
a \breathe
g1_\valveO \bar "|."
}
}
\header { 
piece = "2"
}
\midi {}
\layout { }
}


%number 3. minims

\score {

 \new Staff {
\clef treble
\time 4/4
\transpose c c' {
\key c \major
e2_\valveAB->^"tu" f_\valveA->^"tu"
e1_\valveAB->^"tu" \breathe
f2_\valveA g_\valveO | f1_\valveA \breathe
g2_\valveO a_\valveAB g1_\valveO \breathe
a2_\valveAB b_\valveB a1_\valveAB  \breathe \bar "||"
f2_\valveA g_\valveO | f1_\valveA \breathe
g2_\valveO a_\valveAB g1_\valveO \breathe
a2_\valveAB b_\valveB a1_\valveAB  \breathe
b2_\valveB c'_\valveO b1_\valveB  \breathe \bar "||"
g2_\valveO a_\valveAB g1_\valveO \breathe
a2_\valveAB b_\valveB a1_\valveAB  \breathe
b2_\valveB c'_\valveO b1_\valveB  \breathe
c'2_\valveO d'_\valveA c'1_\valveO  \bar "|." 

}

}
\header { 
piece = "3"
}
\midi {}
\layout { }
}


%number 4

\score {
 \new Staff {
\clef treble
\time 4/4
\transpose c c' {
\key c \major
e'2_\valveO->^"tu" f'_\valveA->^"tu"
e'1_\valveO->^"tu" \breathe
d'2_\valveA e'_\valveO | d'1_\valveA \breathe
c'2_\valveO d'_\valveA c'1_\valveO \breathe
b2_\valveB c'_\valveO b1_\valveB \breathe \bar "||"
d'2_\valveA e'_\valveO | d'1_\valveA \breathe
c'2_\valveO d'_\valveA c'1_\valveO \breathe
b2_\valveB c'_\valveO b1_\valveB \breathe 
a2_\valveAB b_\valveB a1_\valveAB \breathe \bar "||"
c'2_\valveO d'_\valveA c'1_\valveO \breathe
b2_\valveB c'_\valveO b1_\valveB \breathe 
g2_\valveO a_\valveAB g1_\valveO \breathe
c'2_\valveO d'_\valveA c'1_\valveO \bar "|."
}

}
\header { 
piece = "4"
}
\midi {}
\layout { }
}

%number 5

\score {
 \new Staff {
\clef treble
\time 4/4
\transpose c c' {
\key c \major
e2_\valveAB->^"tu" g_\valveO->^"tu"   e1_\valveAB->^"tu" \breathe
f2_\valveA a_\valveAB | f1_\valveA \breathe
g2_\valveO b_\valveB | g1_\valveO \breathe
a2_\valveAB c'_\valveO | a1_\valveAB \breathe
b2_\valveB d'_\valveA | b1_\valveB \breathe
c'2_\valveO e'_\valveO | c'1_\valveO \breathe
c'2_\valveO e'_\valveO | c'1_\valveO \breathe
b2_\valveB d'_\valveA | b1_\valveB \breathe
a2_\valveAB c'_\valveO | a1_\valveAB \breathe
g2_\valveO b_\valveB | g1_\valveO \breathe
f2_\valveA a_\valveAB | f1_\valveA \breathe
e2_\valveAB g_\valveO | e1_\valveAB \bar "|."

}

}
\header { 
piece = "5"
}
\midi {}
\layout { }
}


%number 6

\score {
 \new Staff {
\accidentalStyle "modern-cautionary"
\clef treble
\time 4/4
\transpose c c' {
\key c \major
c'2_\valveO->^"tu" b_\valveB->^"tu" | c'2_\valveO->^"tu" d'_\valveA->^"tu" \breathe
c'2_\valveO->^"tu" b_\valveB->^"tu" | a1_\valveAB->^"tu" \breathe
d'2_\valveA cs'_\valveAB | d'2_\valveA e'_\valveO  \breathe
d'2_\valveA c'_\valveO| b1_\valveB \breathe
g2_\valveO fs_\valveB | g2_\valveO a_\valveAB  \breathe
b2_\valveB c'_\valveO | d'1_\valveA \breathe
c'2_\valveO e'_\valveO | d'2_\valveA c'_\valveO | \breathe
b2_\valveB a_\valveAB | gs1_\valveBC \breathe
a2_\valveAB gs_\valveBC | a2_\valveAB b_\valveB  | \breathe
c'2_\valveO a_\valveAB | b1_\valveB | \breathe
b2_\valveB a_\valveAB | b2_\valveB c'_\valveO  \breathe
d'2_\valveA b_\valveB | c'1 \bar "|."
}

}
\header { 
piece = "6"
}
\midi {}
\layout { }
}

%number 7

\score {
 \new Staff {
\textSpannerDown
\clef treble
\time 4/4
\transpose c c' {
\key c \major

\override TextSpanner #'(bound-details left text) =
  \markup {  \finger 0  }
g1\startTextSpan->^"tu" \breathe c' \breathe g \breathe e' \breathe c' \breathe g' \breathe e' \breathe c'\stopTextSpan \breathe \bar "||"

\transpose g fs {
\override TextSpanner #'(bound-details left text) =
  \markup {  \finger 2  }
g1\startTextSpan->^"tu" \breathe c' \breathe g \breathe e' \breathe c' \breathe g' \breathe e' \breathe c'\stopTextSpan \breathe \bar "||"
}

\transpose g f {
\override TextSpanner #'(bound-details left text) =
  \markup {  \finger 3  }
g1\startTextSpan->^"tu" \breathe c' \breathe g \breathe e' \breathe c' \breathe g' \breathe e' \breathe c'\stopTextSpan \breathe \bar "||"
}

\transpose g e {
g1_\markup{\override #'(baseline-skip . 1.7) \column
      {  \finger 1  \finger 2 } }->^"tu" \breathe 

\override TextSpanner #'(bound-details left text) =
  \markup {  or \finger 3  }

c'\startTextSpan
\breathe g \breathe e' \breathe c' \breathe g' \breathe e' \breathe c'\stopTextSpan \breathe \bar "||"
}

\transpose g ef {
\override TextSpanner #'(bound-details left text) =
  \markup {\override #'(baseline-skip . 1.7)  \column {\finger 2 \finger 3  } }
g1\startTextSpan->^"tu" \breathe c' \breathe g \breathe e' \breathe c' \breathe g' \breathe e' \breathe c'\stopTextSpan \breathe \bar "||"
}

\transpose g d {
\override TextSpanner #'(bound-details left text) =
  \markup {\override #'(baseline-skip . 1.7)  \column {\finger 1 \finger 3  } }

g1\startTextSpan->^"tu" \breathe c' \breathe g \breathe e' \breathe c' \breathe g' \breathe e' \breathe c'\stopTextSpan \breathe \bar "||"
}

\transpose g c {
g1->^"tu" \breathe c'_\valveA \breathe g \breathe e'_\valveAB \breathe c'_\valveA \breathe g' \breathe e'_\valveAB \breathe c'_\valveA \breathe \bar "||"
}

\override TextSpanner #'(bound-details left text) =
  \markup { \finger 0 }
g1\startTextSpan->^"tu" \breathe c' \breathe g \breathe e' \breathe c' \breathe g' \breathe e' \breathe c'\stopTextSpan \breathe \bar "|."

}
}
\header { 
piece = "7"
}
\midi {}
\layout { }
}


%number 8

\score {
 \new Staff {
\clef treble
\time 4/4
\textSpannerDown
\transpose c c' {
\key c \major
\override TextSpanner #'(bound-details left text) =
  \markup { \finger 0 }
g2->^"tu"\startTextSpan g2->^"tu" c' c' g g e' e' g g c'1\stopTextSpan \bar "||"

\transpose g fs {
\override TextSpanner #'(bound-details left text) =
  \markup { \finger 2 }
g2->^"tu"\startTextSpan g2->^"tu" c' c' g g e' e' g g c'1\stopTextSpan \bar "||"
}

\transpose g f {
\override TextSpanner #'(bound-details left text) =
  \markup { \finger 1 }
g2->^"tu"\startTextSpan g2->^"tu" c' c' g g e' e' g g c'1\stopTextSpan \bar "||"
}

\transpose g e {
\override TextSpanner #'(bound-details left text) =
  \markup {\override #'(baseline-skip . 1.7)  \column {\finger 1 \finger 2  } }
g2->^"tu"\startTextSpan g2->^"tu" c' c' g g e' e' g g c'1\stopTextSpan \bar "||"
}

\transpose g ef {
\override TextSpanner #'(bound-details left text) =
  \markup {\override #'(baseline-skip . 1.7)  \column {\finger 2 \finger 3  } }
g2->^"tu"\startTextSpan g2->^"tu" c' c' g g e' e' g g c'1\stopTextSpan \bar "||"
}

\transpose g d {
\override TextSpanner #'(bound-details left text) =
  \markup {\override #'(baseline-skip . 1.7)  \column {\finger 1 \finger 3  } }
g2->^"tu"\startTextSpan g2->^"tu" c' c' g g e' e' g g c'1\stopTextSpan \bar "||"
}
\transpose g c {
g2->^"tu" g2->^"tu" c'_\valveA c' g g e'_\valveAB e' g g c'1_\valveA \bar "||"
}

\override TextSpanner #'(bound-details left text) =
  \markup { \finger 0 }
g2->^"tu"\startTextSpan g2->^"tu" c' c' g g e' e' g g c'1\stopTextSpan \bar "|."

}
}
\header { 
piece = "8"
}
\midi {}
\layout { }
}




\score {

%number 9
 \new Staff {
\set Staff.printKeyCancellation = ##f
\clef treble
\time 4/4
\transpose c c' {
\key f \major
\partial 2 c2_\valveO |d_\valveAC c_\valveO| e_\valveAB c_\valveO| f_\valveA c_\valveO|
g c_\valveO| a_\valveAB c_\valveO| g c_\valveO| f1(_\valveA f4) r4 \bar "||"

%\key gf \major
\transpose f gf {
\key f \major
\partial 2 c2_\valveABC |d_\valveBC c | e_\valveA c| f_\valveB c|
g_\valveBC c| a_\valveA c| g_\valveBC c| f1(_\valveB f4) r4 \bar "||"
}

% g \major
\transpose f g {
\key f \major
\partial 2 c2_\valveAC |d_\valveAB c | e_\valveB c| f_\valveO c|
g_\valveAB c| a_\valveB c| g_\valveAB c| f1(_\valveO f4) r4 \bar "||"
}
% af \major
\transpose f af {
\key f \major
\partial 2 c2_\valveBC |d_\valveA c | e_\valveO c| f_\valveBC c|
g_\valveA c| a_\valveO c| g_\valveA c| f1(_\valveBC f4) r4 \bar "||"
}
% a \major
\transpose f a {
\key f \major
\partial 2 c2_\valveAB |d_\valveB c | e_\valveBC c| f_\valveAB c|
g_\valveB c| a_\valveAB c| g_\valveB c| f1(_\valveAB f4) r4 \bar "||"
}
% bf \major
\transpose f bf {
\key f \major
\partial 2 c2_\valveA |d_\valveO c | e_\valveAB c| f_\valveA c|
g_\valveO c| a_\valveA c| g_\valveO c| f1(_\valveA f4) r4 \bar "||"
}
% b \major
\transpose f b {
\key f \major
\partial 2 c2_\valveB |d_\valveBC c | e_\valveA c| f_\valveB c|
g_\valveAB c| a_\valveB c| g_\valveAB c| f1(_\valveB f4) r4 \bar "||"
}
% c \major
\transpose f, c {
\key f \major
\partial 2 c2_\valveO |d_\valveAB c | e_\valveB c| f_\valveO c|
g_\valveA c| a_\valveO c| g_\valveA c| f1(_\valveO f4) r4 \bar "||"
}
% cs \major
\transpose f, df {
\key f \major
\partial 2 c2_\valveBC |d_\valveA c | e_\valveO c| f_\valveAB c|
g_\valveB c| a_\valveA c| g_\valveB c| f1(_\valveAB f4) r4 \bar "||"
}

% d \major
\transpose f, d {
\key f \major
\partial 2 c2_\valveAB |d_\valveB c | e_\valveAB c| f_\valveA c|
g_\valveO c| a_\valveB c| g_\valveO c| f1(_\valveA f4) r4 \bar "||"
}
% ef \major
\transpose f, ef {
\key f \major
\partial 2 c2_\valveA |d_\valveO c | e_\valveA c| f_\valveB c|
g_\valveA c| a_\valveO c| g_\valveA c| f1(_\valveB f4) r4 \bar "||"
}
% e \major
\transpose f, e {
\key f \major
\partial 2 c2_\valveB |d_\valveAB c | e_\valveB c| f_\valveO c|
g_\valveB c| a_\valveBC c| g_\valveB c| f1(_\valveO f4) r4 \bar "|."
}



}
}
\header { 
piece = "9"
}
\midi {}
\layout { }
}

\score {

%number 10
 \new Staff {
\accidentalStyle "modern"

\set Staff.printKeyCancellation = ##f
\clef treble
\time 4/4
\transpose c c' {
\key c \major
\partial 2 g2_\valveO | fs_\valveB g | f_\valveA g |e_\valveAB  g|d_\valveAC  g|
c  g| b,_\valveB  g| c1( | c4) r4 \bar "||"

%d flat major
\transpose c df {
\key c \major
\partial 2 g2_\valveBC | fs_\valveO g | f_\valveB g |e_\valveA  g|d_\valveBC  g|
c_\valveABC  g| b,_\valveB  g| c1_\valveABC( | c4) r4 \bar "||"
}

%d  major
\transpose c d {
\key c \major
\partial 2 g2_\valveAB | fs_\valveBC g | f_\valveO g |e_\valveB  g|d_\valveAB  g|
c_\valveAC  g| b,_\valveABC  g| c1_\valveAC( | c4) r4 \bar "||"
}

%e flat major
\transpose c ef {
\key c \major
\partial 2 g2_\valveA | fs_\valveAB g | f_\valveBC g |e_\valveO  g|d_\valveA  g|
c_\valveBC  g| b,_\valveAC  g| c1_\valveBC( | c4) r4 \bar "||"
}

%e major
\transpose c e {
\key c \major
\partial 2 g2_\valveB | fs_\valveA g | f_\valveAB g |e_\valveBC  g|d_\valveB  g|
c_\valveAB  g| b,_\valveBC  g| c1_\valveAB( | c4) r4 \bar "||"
}

%f major
\transpose c f {
\key c \major
\partial 2 g2_\valveO | fs_\valveB g | f_\valveA g |e_\valveAB  g|d_\valveO  g|
c_\valveA  g| b,_\valveAB  g| c1_\valveA( | c4) r4 \bar "||"
}


%GF major
\transpose c gf {
\key c \major
\partial 2 g2_\valveAB | fs_\valveO g | f_\valveB g |e_\valveA  g|d_\valveBC  g|
c_\valveB  g| b,_\valveA  g| c1_\valveB( | c4) r4 \bar "||"
}

%g major
\transpose c g {
\key c \major
\partial 2 g2_\valveA | fs_\valveAB g | f_\valveO g |e_\valveB  g|d_\valveAB  g|
c_\valveO  g| b,_\valveB  g| c1_\valveO( | c4) r4 \bar "||"
}

%af major
\transpose c af {
\key c \major
\partial 2 g2_\valveB | fs_\valveA g | f_\valveAB g |e_\valveO  g|d_\valveA  g|
c_\valveBC  g| b,_\valveO  g| c1_\valveBC( | c4) r4 \bar "||"
}


%a major
\transpose c a {
\key c \major
\partial 2 g2_\valveO | fs_\valveB g | f_\valveA g |e_\valveAB  g|d_\valveB  g|
c_\valveAB  g| b,_\valveBC  g| c1_\valveAB( | c4) r4 \bar "||"
}

%bf major
\transpose c bf {
\key c \major
\partial 2 g2_\valveA | fs_\valveO g | f_\valveB g |e_\valveA  g|d_\valveO  g|
c_\valveA  g| b,_\valveAB  g| c1_\valveA( | c4) r4 \bar "||"
}

%af major
\transpose c b {
\key c \major
\partial 2 g2_\valveB | fs_\valveA g | f_\valveO g |e_\valveB  g|d_\valveAB  g|
c_\valveB  g| b,_\valveA  g| c1_\valveB( | c4) r4 \bar "||"
}





}
}
\header { 
piece = "10"
}
\midi {}
\layout { }
}


%number 11
\score {

 \new Staff {
\accidentalStyle "modern"
\clef treble
\time 4/4
\transpose c c' {
\key f \major
f2-> a4-| f-|| c'-| a-| f-| a-| | g2 e |c4 d e c |f2 a4 f | e g c' bf| a d' c' b | c' bf a g|
f2 a4 f |d2 bf |a4 c' f a | g2 c | f a4 f| c' f a c' |bf e g c | f a f r \bar "||"

}
}
\header { 
piece = "11"
}
\midi {}
\layout { }
}

%number 12
\score {

 \new Staff {
\accidentalStyle "modern"
\clef treble
\time 4/4
\transpose c c' {
\key f \major
a4-| f-| c2-> | f4-| a-| c'2-> | bf4-| g-| e2-> | g4-| bf-| a2-> | c'4-| a-| fs2-> | a4-| d'-| c'2-> | a4-| fs-| d2-> fs4-| a-| g2->
g4-| e-| cs2-> |  e'4-| cs'-| a2-> | bf4-| g-| e2-> | g4-| e-| c2-> | c'4-| a-| f2-> | f'4-| d'-| c'2->
bf4-| d'-| g2-> c'4-| e-| f-| r \bar "||"

}
}
\header { 
piece = "12"
}
\midi {}
\layout { }
}


%number 13
\score {

 \new Staff {
\accidentalStyle "modern"
\clef treble
\time 4/4
\transpose c c' {
\key c \major
c2-> e4-| c-| d2-> g-> | f4-| e-| d-| c-| | b, d g r | c'2->  e'4 c' d'2-> g'-> |f'4 e' d' c' |b d' g' r| f'2-> e'4-| ds'-| | e'2 d'4 cs' | d' c' b a |gs b e r | f2 e4 ds e2 d4 cs | d c b, a, | e2. r4 c2-> e4 c d2 g f4 e d c b, d g r | f2 a4 f | d2 a | g4 e f d c e c r \bar "||"

}
}
\header { 
piece = "13"
}
\midi {}
\layout { }
}

%number 14 - broadly transposed no. 11
\score {

 \new Staff {
\accidentalStyle "modern"
\clef treble
\time 4/4
\transpose c c' {
\transpose f g {
\key f \major
f2-^ a4-| f-|| c'-| a-| f-| a-| | g2 e |c4 d e c |f2 a4 f | e g c' bf| a d' c' b | c' bf a g|
f2 a4 f |d2 bf |a4 c' f a | g2 c | f a4 f| c' f a c' |bf e g c' | f a f r \bar "||"
}
}
}

\header { 
piece = "14"
}
\midi {}
\layout { }
}

%number 15 - number 12 mostly, transposed
\score {

 \new Staff {
\accidentalStyle "modern"
\clef treble
\time 4/4
\transpose c c' {
\transpose f g {
\key f \major
a4-| f-| c2-^ | f4-| a-| c'2-^ | bf4-| g-| e2-^ | g4-| bf-| a2-^ | c'4-| a-| fs2-^ | a4-| d'-| c'2-^ | a4-| fs-| d2-^ fs4-| a-| g2-^
g4-| e-| cs2-^ | 
 g4-| bf-| a2-^ | 
bf4-| g-| e2-^ | g4-| e-| c2-^ | c'4-| a-| f2-^ | f'4-| d'-| c'2-^
bf4-| d'-| g2-^ c'4-| e-| f-| r \bar "||"
}
}
}
\header { 
piece = "15"
}
\midi {}
\layout { }
}

%number 16
\score {

 \new Staff {
\accidentalStyle "modern"
\clef treble
\time 4/4
\transpose c c' {
\key f \major

f4-| g-| a-| bf-| | c'-| bf-| a-| g-| | f-| a-| c'-| f'-| | c'-| a-| f-| a-| | g-| a-| bf-| c'-| d'-| c'-| bf-| a-| | g-| a-| f-| g-| |
e f d f | c d e f g f e d | c e g c' bf g e cs | d e f g a g f e | d f a d' |
a f d f | e f g a bf a g f e g c' bf | a c' f' e' d' c' bf a g bf e' d' c' bf a g f2 r 
\bar "||"

}
}
\header { 
piece = "16"
}
\midi {}
\layout { }}

%number 17 
\score {

 \new Staff {
\accidentalStyle "modern"
\clef treble
\time 4/4
\transpose c c' {
\key c \major 
c4 d e f | g f e d | c e g c' g e c e | d e f g| a g f e
d f a d'
a f d f | e f g a | b a g f e g c' e' c' g e g f g a b c' b a g | f a c' f' |
c' a f a g a b c' d' c' b a | g b d' f' | e' c' g e d e f g a e f d g b d' g | c'2 r \bar "||"
}
}
\header { 
piece = "17"
}
\midi {}
\layout { }}


%number 18 mostly 16 transposed
\score {

 \new Staff {
\accidentalStyle "modern"
\clef treble
\time 4/4
\transpose c c' {
\transpose f g {
\key f \major

f4 g a bf | c' bf a g | f a c' f' | c' a f a | g a bf c' d' c' bf a | g a f g |
e f d f | c d e f g f e d | cs e g bf a g e cs | d e f g a g f e | d f a d' |
a f d f | e f g a bf a g f e g c' bf | a c' f' e' d' c' bf a g bf e' d' c' bf a g f2 r 
\bar "||"
}
}
}
\header { 
piece = "18"
}
\midi {}
\layout { }}


%number 19
\score {

 \new Staff {
\accidentalStyle "modern"
\clef treble
\time 4/4
\transpose c c' {
\key c \major

g4 a b c' d'2 g | a4 b c' d' e'2 a | b4 c' d' e' f'2 e' | d'4 c' b a gs b e r |
f' e' d' c' b d' g r | g' f' e' d' c' e' a r | d' c' b a | f' e' d' c' | b a g f e g d g |
c d e f g2 c'2 | b4 c' d' b c'2 e' | g'4 f' e' d' d' c' b a g gs a b c'2 r \bar "||"


}
}
\header { 
piece = "19"
}
\midi {}
\layout { }}


%number 20
\score {

 \new Staff {
\accidentalStyle "modern"
\clef treble
\time 4/4
\transpose c c' {
\key f \major
f4 a g bf a c' bf d' | c' e' d' f' e' g' f' a' | g' a' f' g' e' f' d' e' | c' d' bf c' |
a bf g a f g e f d e c f | d g e a | f bf g c' a d' bf e' c' f' d' g' | 
e' a' f' a' e' g' d' f' c' e' bf d' a c' g bf f a e g d f c e f a c' c f1 \bar "||"
}
}
\header { 
piece = "20"
}
\midi {}
\layout { }}

%number 21 
\score {

 \new Staff {
\accidentalStyle "modern"
\clef treble
\time 4/4
\transpose c c' {
\key c \major  
c4 e d f e g f a | g b a c' b d' c' e' | d' f' e' g' |
f' g' e' f' d' e' c' d' b c' a b |
g a f g e f d e c f d g | e a f b g c' a d' b e' c' f' | d' g' e' g' d' f' c' e' |
b d' a c' g b f a | e g d f e g f a | g b a c' b d' c' e' d' g' b d' c' e' c' r \bar "||"
}
}
\header { 
piece = "21"
}
\midi {}
\layout { }}

%number 22
\score {

 \new Staff {
\accidentalStyle "modern"
\clef treble
\time 4/4
\transpose c c' {
\key g \major
g4 b a c' b d' c' e' | d' fs' e' g' fs' g' e' fs' d' e' c' d' | b c' a b g a fs g e fs d r |
d g e a | fs b g c' a d' b e' c' fs' d' g' e' a' fs' a' e' g' d' fs' | c' e' b d' a d' g r |
g' e' fs' d' e' c' d' b c' a b g a fs g e fs d e c d fs e g fs a d' fs g2 r \bar "||"
}
}
\header { 
piece = "22"
}
\midi {}
\layout { }}

%number 23
\score {
 \new Staff {
\clef treble
\time 4/4
\transpose c c' {
\key f \major
f4 d e f g e f g a f g a bf g a bf c' a bf c' d' bf c' d' e' c' d' e' f'1 |
e'4 g' f' e' d' f' e' d' c' e' d' c' bf d' c' bf a c' bf a g bf a g f a g f e1 |
f'4 d' e' f' e' c' d' e' d' bf  c' d' c' a bf c' bf g a bf a f g a g e f g f1 \bar "||"
}
}
\header { 
piece = "23"
}
\midi {}
\layout { }}

%number 24
\score {
 \new Staff {
\clef treble
\time 4/4
\transpose c c' {
\key c \major
e4 c d e f4 d e f g e f g a f g a b g a b c' a b c' d' b c' d'  e'1 |
e'4 g' f' e' d' f' e' d' c' e' d' c' b d' c' b a c' b a g b a g f a g f e1 |
c'4 e' d' c' b d' c' b a c' b a g b a g f a g f e g f e d f e d c1 \bar "||"
}
}
\header { 
piece = "24"
}
\midi {}
\layout { }}

%number 25
\score {
 \new Staff {
\clef treble
\time 4/4
\transpose c c' {
\key g \major
g4 e fs g a fs g a b g a b c' a b c' d' b c' d' e' c' d' e' fs' d' e' fs' g'1 |
fs'4 a' g' fs' e' g' fs' e' d' fs' e' d' c' e' d' c' b d' c' b a c' b a g b a g  fs1 |
g'4 e' fs' g' fs'4 d' e' fs' e' c' d' e' d' b  c' d' c' a b c' b g a b a fs g a  g1 \bar "||"
}
}
\header { 
piece = "25"
}
\midi {}
\layout { }}

%number 26
\score {
 \new Staff {
\clef treble
\time 3/4
\transpose c c' {
\key c \major
c4 d e d e f e f g f g a g a b a b c' b c' d' e'2. e'4 d' c' |
d' c' b c' b a b a g a g f g f e f e d c2. g4 f e a g f b a g |
c' b a d' c' b e' d' c' f' e' d' g'2. e'4 f' g' d' e' f' c' d' e' b c' d' a b c' |
g a b f g a g2. c'4 d' e' b c' d' a b c' g a b f g a e f g d e f e2. \bar "||" 
}
}
\header { 
piece = "26"
}
\midi {}
\layout { }}

%number 27
\score {
 \new Staff {
\clef treble
\time 3/4
\transpose c c' {
\key f \major
f4 g a g a bf a bf c' bf c' d'  c' d' e' d' e' f' e' f' g' a'2. a'4 g' f' |
g' f' e' f' e' d' e' d' c' d' c' bf c' bf a bf a g f2. f4 e d g f e a g f bf a g 
c' bf a d' c' bf e' d' c' f'2. f'4 g' a' e' f' g' d' e' f' c' d' e' bf c' d' a bf c' g a bf a2.
\bar "||" 
}
}
\header { 
piece = "27"
}
\midi {}
\layout { }}

%number 28
\score {
 \new Staff {
\clef treble
\time 4/4
\transpose c c' {
\key f \major
e8-. f-. g-. a-. bf4 g f8-. g-. a-. bf-. c'4 a 
g8-. a-. bf-. c'-. d'4  bf a8-. bf-. c'-. d'-. e'4 c' 
bf8-. c'-. d'-. e'-. f'4 d' c'8-. d'-. e'-. f'-. g'4 e' 
d'8-. e'-. f'-. g'-. a'4 f' | e'2 r 
g'8-. f'-. e'-. d'-. c'4 e' f'8-. e'-. d'-. c'-. bf4 d' 
e'8-. d'-. c'-. bf-. a4 c' d'8-. c'-. bf-. a-. g4 bf 
c'8-. bf-. a-. g-. f4 a bf8-. a-. g-. f-. e4 g 
a8-. g-. f-. e-. d4 e f2 r \bar "||"
}
}
\header { 
piece = "28"
}
\midi {}
\layout { }}

%number 29
\score {
 \new Staff {
\clef treble
\time 4/4
\transpose c c' {
\key c \major
b,8-. c-. d-. e-. f4 d |c8-. d-. e-. f-. g4 e 
d8-. e-. f-. g-. a4 f 
e8-. f-. g-. a-. b4 g |f8-. g-. a-. b-. c'4 a 
g8-. a-. b-. c'-. d'4  b 
a8 b c' d' e'4 c' 
b8 c' d' e' f'4 d' | c'8 d' e' f' g'4 e' c'2 r2 
g'8 f' e' d' c'4 e' | f'8 e' d' c' b4 d' 
e'8 d' c' b a4 c' | d'8 c' b a g4 b 
c'8 b a g f4 a | b8 a g f e4 g 
a8 g f e d4 f | g8 f e d c4 e | f8 e d c b,4 g c2 r
\bar "||"
}
}
\header { 
piece = "29"
}
\midi {}
\layout { }}


%number 30
\score {
 \new Staff {
\clef treble
\time 4/4
\transpose c c' {
\key g \major
d8-. e-. fs-. g-. a4 fs 
e8-. fs-. g-. a-. b4 g |fs8-. g-. a-. b-. c'4 a 
g8-. a-. b-. c'-. d'4  b 
a8-. b-. c'-. d'-. e'4 c' 
b8-. c'-. d'-. e'-. fs'4 d' | c'8-. d'-. e'-. fs'-. g'4 e' | d'2 r |
g'8 fs' e' d' c'4 e' | fs'8 e' d' c' b4 d' 
e'8 d' c' b a4 c' | d'8 c' b a g4 b 
c'8 b a g fs4 a | b8 a g fs e4 g 
a8 g fs e d4 fs g2 r 
\bar "||"
}
}
\header { 
piece = "30"
}
\midi {}
\layout { }}

%number 31 
\score {

 \new Staff {
\accidentalStyle "modern"
\clef treble
\time 4/4
\transpose c c' {
\key f \major
f4 d8-. e-. f-. g-. a-. bf-. c'2 c | d4 e8-. f-. g-. a-. bf-. c'-. d'2 d | e4 f8-. g-. a-. bf-. c'-. d'-. e'2 e|
f4 g8 a bf c' d' e' f'2 r | f'4 e'8 d' c' bf a g f2 f' | e'4 d'8 c' bf a g f e2 e' | 
d'4 c'8 bf a g f e d2 d' | c'4 bf8 a g f e d c2 c' | bf4 a8 g f e d c bf,2 bf | a4 g8 f f e d c f2 r \bar "||"
}
}
\header { 
piece = "31"
}
\midi {}
\layout { }}

%number 32 
\score {

 \new Staff {
\accidentalStyle "modern"
\clef treble
\time 4/4
\transpose c c' {

\key c \major
c4 d8-. e-. f-. g-. a-. b-. c'2 c | d4 e8-. f-. g-. a-. b-. c'-. d'2 d | e4 f8-. g-. a-. b-. c'-. d'-. e'2 e|
f4 g8 a b c' d' e' f'2 f | g4 a8 b c' d' e' f' g'2 r | g'4 f'8 e' d' c' b a g2 g'|  f'4 e'8 d' c' b a g f2 f' | e'4 d'8 c' b a g f e2 e' | 
d'4 c'8 b a g f e d2 d' | c'4 b8 a g f e d c2 r \bar "||"

}
}
\header { 
piece = "32"
}
\midi {}
\layout { }}

%number 33 
\score {

 \new Staff {
\accidentalStyle "modern"
\clef treble
\time 4/4
\transpose c c' {

\key g \major
b,4 c8-. d-. e-. fs-. g-. a-. b2 b, | c4 d8-. e-. fs-. g-. a-. b-. c'2 c | d4 e8-. fs-. g-. a-. b-. c'-. d'2 d | e4 fs8-. g-. a-. b-. c'-. d'-. e'2 e|
fs4 g8 a b c' d' e' fs'2 fs | g4 a8 b c' d' e' fs' g'2 r | g'4 fs'8 e' d' c' b a g2 g'|  fs'4 e'8 d' c' b a g fs2 fs' | e'4 d'8 c' b a g fs e2 e' | 
d'4 c'8 b a g fs e d2 d' | c'4 b8 a g fs e d c2 c' b4 a8 g g fs e d g2 r \bar "||"

}
}
\header { 
piece = "33"
}
\midi {}
\layout { }}

%number 34 
\score {

 \new Staff {
\accidentalStyle "modern"
\clef treble
\time 4/4
\transpose c c' {
\key d \major
d4 e8-. fs-. g-. a-. b-. cs'-. d'2 d | e4 fs8-. g-. a-. b-. cs'-. d'-. e'2 e|
fs4 g8-. a-. b-. cs'-. d'-. e'-. fs'2 fs | g4 a8-. b-. cs'-. d'-. e'-. fs'-. g'2 g | a4 b8-. cs'-. d'-. e'-. fs'-. g'-. a'2 r |
a'4 g'8 fs' e' d' cs' b a2 a'2 | g'4 fs'8 e' d' cs' b a g2 g'|  fs'4 e'8 d' cs' b a g fs2 fs' | e'4 d'8 cs' b a g fs e2 e' | 
d'4 cs'8 b a g fs e d2 r \bar "||"
}
}
\header { 
piece = "34"
}
\midi {}
\layout { }}

%number 35 
\score {

 \new Staff {
\accidentalStyle "modern"
\clef treble
\time 4/4
\transpose c c' {
\key bf \major
bf,4 c8-. d-. ef-. f-. g-. a-. bf2 bf, | c4 d8-. ef-. f-. g-. a-. bf-. c'2 c | d4 ef8-. f-. g-. a-. bf-. c'-. d'2 d | ef4 f8-. g-. a-. bf-. c'-. d'-. ef'2 ef|
f4 g8-. a-. bf-. c'-. d'-. ef'-. f'2 r  |   f'4 ef'8 d' c' bf a g f2 f' | ef'4 d'8 c' bf a g f ef2 ef' | 
d'4 c'8 bf a g f ef d2 d' | c'4 bf8 a g f ef d c2 c' bf4 a8 g f ef d c bf,2  r \bar "||"

}
}
\header { 
piece = "35"
}
\midi {}
\layout { }}

%number 36 
\score {
 \new Staff {
\clef treble
\time 3/4
\transpose c c' {
\key f \major
f8-. g-. a-. bf-. c'-. a-. f4 c' a | g8-. a-. bf-. c'-. d'-. bf-. g4 d' bf | a8-. bf-. c'-. d'-. e'-. c'-. a4 e' c' bf8-. c'-. d'-. e'-. f'-. d'-. bf4 f' d' | c'8-. d'-. e'-. f'-. g'-. e'-. 
c'4 g' e' d'8 e' f' g' a' f' d'4 a' f' | e'8 f' g' a' bf' g' f'2 r4 | 
a'8 g' f' e' d' f' a'4 d' f' | g'8 f' e' d' c' e' g'4 c' e' | f'8 e' d' c' bf d' 
f'4 bf d' | e'8 d' c' bf a c' e'4 a c' | d'8 c' bf a g bf d'4 g bf c'8 bf a g f a c'4 f a bf8 a g f e g f2 r4 \bar "||"
}
}
\header { 
piece = "36"
}
\midi {}
\layout { }}


%number 37
\score {
 \new Staff {
\clef treble
\time 3/4
\transpose c c' {
\key c \major
c8-. d-. e-. f-. g-. e-. c4 g e | d8-. e-. f-. g-. a-. f-. d4 a f | e8-. f-. g-. a-. b-. g-. e4 b g |
f8-. g-. a-. b-. c'-. a-. f4 c' a | g8-. a-. b-. c'-. d'-. b-. g4 d' b | 
a8 b c' d' e' c' a4 e' c' | b8 c' d' e' f' d' b4 f' d' | c'8 d' e' f' g' e' c'2 r4 | 
 g'8 f' e' d' c' e' g'4 c' e' | f'8 e' d' c' b d' 
f'4 b d' | e'8 d' c' b a c' e'4 a c' | d'8 c' b a g b d'4 g b c'8 b a g f a c'4 f a b8 a g f e g b4 e g | a8 g f e d f a4 d f | g8 f e d c b, c2 r4 \bar "||"
}
}
\header { 
piece = "37"
}
\midi {}
\layout { }}

%number 38
\score {
 \new Staff {
\clef treble
\time 3/4
\transpose c c' {
\key g \major
b,8-. c-. d-. e-. fs-. d-. b,4 fs d |
c8-. d-. e-. fs-. g-. e-. c4 g e | d8-. e-. fs-. g-. a-. fs-. d4 a fs | e8-. fs-. g-. a-. b-. g-. e4 b g |
fs8 g a b c' a fs4 c' a | g8 a b c' d' b g4 d' b | 
a8 b c' d' e' c' a4 e' c' | b8 c' d' e' fs' d' b4 fs' d' | c'8 d' e' fs' g' e' c'4 g' e' |
d'8 e' fs' g' a' fs' d'2 r4 | 
a'8 g' fs' e' d' fs' a'4 d' fs' |
 g'8 fs' e' d' c' e' g'4 c' e' | fs'8 e' d' c' b d' 
fs'4 b d' | e'8 d' c' b a c' e'4 a c' | d'8 c' b a g b d'4 g b c'8 b a g fs a c'4 fs a b8 a g fs e g b4 e g | a8 g fs e d fs a4 d fs | g8 fs e d c e g4 c e | fs8 e d c b, d g2 r4 \bar "||"
}
}
\header { 
piece = "38"
}
\midi {}
\layout { }}

%number 39
\score {
 \new Staff {
\clef treble
\time 3/4
\transpose c c' {
\key d \major
d8-. e-. fs-. g-. a-. fs-. d4 a fs | e8-. fs-. g-. a-. b-. g-. e4 b g |
fs8-. g-. a-. b-. cs'-. a-. fs4 cs' a | g8-. a-. b-. cs'-. d'-. b-. g4 d' b | 
a8 b cs' d' e' cs' a4 e' cs' | b8 cs' d' e' fs' d' b4 fs' d' | cs'8 d' e' fs' g' e' cs'4 g' e' |
d'8 e' fs' g' a' fs' d'2 r4 |
a'8 g' fs' e' d' fs' a'4 d' fs' |
 g'8 fs' e' d' cs' e' g'4 cs' e' | fs'8 e' d' cs' b d' 
fs'4 b d' | e'8 d' cs' b a cs' e'4 a cs' | d'8 cs' b a g b d'4 g b cs'8 b a g fs a cs'4 fs a b8 a g fs e g b4 e g | a8 g fs e d cs d2 r4 \bar "||"
}
}
\header { 
piece = "39"
}
\midi {}
\layout { }}

%number 40
\score {
 \new Staff {
\clef treble
\time 3/4
\transpose c c' {
\key bf \major
bf,8-. c-. d-. ef-. f-. d-. bf,4 f d |
c8-. d-. ef-. f-. g-. ef-. c4 g ef | d8-. ef-. f-. g-. a-. f-. d4 a f | ef8-. f-. g-. a-. bf-. g-. ef4 bf g |
f8 g a bf c' a f4 c' a | g8 a bf c' d' bf g4 d' bf | 
a8 bf c' d' ef' c' a4 ef' c' | bf8 c' d' ef' f' d' bf2 r4  f'8 ef' d' c' bf d' |
f'4 bf d' | ef'8 d' c' bf a c' ef'4 a c' | d'8 c' bf a g bf d'4 g bf c'8 bf a g f a c'4 f a bf8 a g f ef g bf4 ef g | a8 g f ef d f a4 d f | g8 f ef d c ef g4 c ef | f8 ef d c bf, a, bf,2 r4 \bar "||"
}
}
\header { 
piece = "40"
}
\midi {}
\layout { }}

%number 41 
\score {
\new Staff {
\clef treble
\time 4/4
\transpose c c' {
\key f \major
f4 g8-. a-. bf-. c'-. d'-. e'-. | f'-. g-. a-. bf-. c'-. d'-. e'-. f'-. |g'-. a-. bf-. c'-. d'-. e'-. f'-. g'-. a'1 |
a'4 g'8-. f'-. e'-. d'-. c'-. bf-. |a-. g'-. f'-. e'-. d'-. c'-. bf-. a-. | g-. f'-. e'-. d'-. c'-. bf-. a-. g-. | f1
\bar "||"
}
}
\header { 
piece = "41"
}
\midi {}
\layout { }}

%number 42 
\score {
\new Staff {
\clef treble
\time 4/4
\transpose c c' {
\key c \major
c4 d8-. e-. f-. g-. a-. b-. |c'-. e-. f-. g-. a-. b-. c'-. d'-. |e'-. g-. a-. b-. c'-. d'-. e'-. f'-. g'1 | 
g'4 f'8-. e'-. d'-. c'-. b-. a-. | g-. e'-. d'-. c'-. b-. a-. g-. f-. e-. c'-. b-. a-. g-. f-. e-. d-. c1
\bar "||"

}
}
\header { 
piece = "42"
}
\midi {}
\layout { }}

%number 43 
\score {
\new Staff {
\clef treble
\time 4/4
\transpose c c' {
\key g \major
g4 e8-. fs-. g-. a-. b-. c'-. | d'-. fs-. g-. a-. b-. c'-. d'-. e'-. |fs'-. a-. b-. c'-. d'-. e'-. fs'-. g'-. a'1 |
a'4 g'8-. fs'-. e'-. d'-. c'-. b-. | a-. fs'-. e'-. d'-. c'-. b-. a-. g-. | fs-. c'-. b-. a-. g-. fs-. e-. d-. g1
\bar "||"

}
}
 \header { 
piece = "43"
}
\midi {}
\layout { }}

%number 44
\score {
\new Staff {
\clef treble
\time 4/4
\transpose c c' {
\key d \major
d4 e8-. fs-. g-. a-. b-. cs'-. |d'-. fs-. g-. a-. b-. cs'-. d'-. e'-. | fs'-. a-. b-. cs'-. d'-. e'-. fs'-. g'-. a'1|
a'4 g'8-. fs'-. e'-. d'-. cs'-. b-. |a-. fs'-. e'-. d'-. cs'-. b-. a-. g-. | fs-. d'-. cs'-. b-. a-. g-. fs-. e-. d1
\bar "||"
}
}
 \header { 
piece = "44"
}
\midi {}
\layout { }}


%number 45
\score {
\new Staff {
\clef treble
\time 4/4
\transpose c c' {
\key bf \major
bf,4 c8-. d-. ef-. f-. g-. a-. | bf-. d-. ef-. f-. g-. a-. bf-. c'-. | d'-. f-. g-. a-. bf-. c'-. d'-. ef'-. f'1 |
f'4 ef'8-. d'-. c'-. bf-. a-. g-. | f-. d'-. c'-. bf-. a-. g-. f-. ef-. |d-. bf-. a-. g-. f-. ef-. d-. c-. bf,1
\bar "||"
}
}
 \header { 
piece = "45"
}
\midi {}
\layout { }}

%number 46
\score {
\new Staff {
\clef treble
\time 4/4
\transpose c c' {
\key c \major
c4 e g c' e' c' g e | d f g b d' b g f | e g c' e' | g' e' c' bf | a c' f' f | e g c' e

\key f \major
f a c' f' | c' a f a | g bf c' e' | e g c' bf | a f a c' | f' a c' ef' | d' f bf d' | c' f a c' | 

\key bf \major
bf d f bf | d' bf f d | c ef f a | c' a f ef | d f bf d' | f' d' bf af | g bf ef' ef | d f bf d |

\key ef \major
ef g bf ef' | bf g ef g | f af bf d' | d f bf af | g ef g bf | ef' g bf df' c' ef af c' | bf ef g bf

\transpose bf af {
\key bf \major
bf d f bf | d' bf f d | c ef f a | c' a f ef | d f bf d' | f' d' bf af | g bf ef' ef | d f bf d |
}

\transpose c df {
\key c \major
c4 e g c' e' c' g e | d f g b d' b g f | e g c' e' | g' e' c' bf_\valveB | a c' f' f | e g c' e
}

\transpose f gf {
\key f \major
f a c' f' | c' a f a | g bf c' e' | e g c' bf | a f a c' | f' a c' ef'_\valveO | d' f bf d' | c' f a c' | 
}

\transpose bf b {
\key bf \major
bf d f bf | d' bf f d | c ef f a | c' a f ef | d f bf d' | f' d' bf af | g bf ef' ef | d f bf d |}

\transpose ef e {
\key ef \major
ef g bf ef' | bf g ef g | f af bf d' | d f bf af | g ef g bf | ef' g bf df' c' ef af c' | bf ef g bf}

\transpose bf a {
\key bf \major
bf d f bf | d' bf f d | c ef f a | c' a f ef | d f bf d' | f' d' bf af | g bf ef' ef | d f bf d |}

\transpose c d {
\key c \major
c4 e g c' e' c' g e | d f g b d' b g f | e g c' e' | g' e' c' bf | a c' f' f | e g c' e }

\transpose f g {
\key f \major
f a c' f' | c' a f a | g bf c' e' | e g c' bf | a f a c' | f' a c' ef' | d' f bf d' | c' f a c' | }

\key c \major
c'4 e g c' | e' c' g e d f g b d' b g f e g c' e' g' e' c' g e c' g e c1
\bar "||"
}
}
 \header { 
piece = "46"
}
\midi {}
\layout { }}

%number 47
\score {
\new Staff {
\clef treble
\time 4/4
\transpose c c' {
\key c \major
c8-. g-. f-. g-. e-. g-. d-. g-. | c-. d-. e-. f-. g-. f-. e-. d-. | 
c-. a-. g-. a-. f-. a-. e-. a-. | d-. e-. f-. g-. a-. g-. f-. e-. |
d-. b-. a-. b-. g-. b-. f-. b-. | 
e f g a b a g f | e c' b c' a c' g c' |
f g a b c' b a g | f d' c' d' b d' a d' |
g a b c' d' c' b a |
g e' d' e' c' e' b e' | a b c' d' e' d' c' b |
a f' e'_\valveAB f' d' f' c' f' | b c' d' e' f' e' d' c' |
b g' f' g' e' g' d' g' | c' e' g e' c'4 r |
g8 g' f' g' e' g' d' g' | c' d' e' f' g' f' e' d' | 
c' f' e'_\valveAB f' d' f' c' f' | b c' d' e' f' e' d' c' |
b e' d' e' c' e' b e' | a b c' d' e' d' c' b | 
a d' c' d' b d' a d' | g a b c' d' c' b a | 
g c' b c' a c' g c' | f g a b c' b a g | 
f b a b g b f b | e f g a b a g f | 
e a g a f a e a | d e f g a g f e | 
d g f g e g d g | c e g c' c4 r
\bar "||"
}
}
 \header { 
piece = "47"
}
\midi {}
\layout { }}

%number 48
\score {
\new Staff {
\clef treble
\time 4/4
\transpose c c' {
\key c \major
c4 d8-. c-. e-. c-. f-. c-. | g-. c-. a-. c-. g-. c-. f-. c-. | 
e4 c'8-. b-. a-. g-. f-. e-. | d4 e8-. d-. f-. d-. g-. d-. | 
a-. d-. b-. d-. a-. d-. g-. d-. |
f4 d'8 c' b a g f | e4 f8 e g e a e | 
b e c' e b e a e | g4 e'8 d' c' b a g |
f4 g8 f a f b f |
c' f d' f c' f b f | a4 f'8 e' d' c' b a | 
g4 a8 g b g c' g | d' g e' g d' g c' g |
b4 g'8 f' e' d' c' b | a4 b8 a c' a d' a |
e' a f' a e' a d' a | c'4 f'8 e' d' c' b a | 
g4 a8 g b g c' g | d' g e' g d' g c' g | 
b4 e'8 d' c' b a g |
f4 g8 f a f b f | c' f d' f c' f b f | 
a4 d'8 c' b a g f | e4 f8 e g e a e | 
b e c' e b e a e | g4 c'8 b a g f e |
d4 e8 d f d g d | a d b d a d g d | 
f4 b8 a g f e d | c4 d8 c e c f c | g c' e g c4 r

\bar "||"
}
}
 \header { 
piece = "48"
}
\midi {}
\layout { }}


%number 49
\score {
\new Staff {
\clef treble
\time 2/4
\transpose c c' {
\key c \major
\partial 4. c'8-. b-. c'-. | a-. c'-. g-. c'-. | 
f-. c'-. e-. c'-. | d-. d'-. c'-. d'-. | b-. d'-. a-. d'-. |
g-. d'-. f-. d'-. | e e' d' e' | c' e' b e' |
a e' g e' | f f' e' f' |

d' f' c' f'| b f' a f' |g g' f' g' | e' g' d' g' | c' g' b g' | 
a f' e' f' | d' f' c' f' | b f' a f' | g e' d' e' | c' e' b e' | 
a e' g e' |

f d' c' d' | b d' a d' g d' f d' e c' b c' | a c' g c' | f c' e c' |
d b a b | g b f a | e g d g | c g b, g | c4 r 
\bar "||"
}
}
 \header { 
piece = "49"
}
\midi {}
\layout { }}

%number 50
\score {
\new Staff {
\accidentalStyle "modern"
\clef treble
\time 2/4
\transpose c c' {
\key c \major
c8-. c'-. b,-. b-. | c-. c'-. cs-. cs'-. |d-. d'-. ds-. ds'-. | e-. e'-. g-. g'-. | 
f-. f'-. e-. e'-. | d-. d'-. cs-. cs'-. | d-. d'-. e-. e'-. | f-. f'-. fs-. fs'-. |
g g' f f' |e e' g g' | f f' e e' |d d' c c' | 
b, b c c' | d d' f f' | e e' d d' | c c' c r\fermata \bar "||"
b, b c c' | d d' e e' | f f' d d' | e e' g g' fs fs' f f' | 
e e' d d' c c' e e' d d' d r^"D.C." \bar "||"
}
}
 \header { 
piece = "50"
}
\midi {}
\layout { }}



