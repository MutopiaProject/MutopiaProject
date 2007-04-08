\header {
  filename =    "o_magnum_mysterium.ly"
  title =       "O Magnum Mysterium"
  subtitle =	"for mixed chorus, a cappella"
  opus =        ""
  composer =    "Tom\\'as Luis de Victoria (1549-1611)"
  
 mutopiatitle = "O Magnum Mysterium"
 mutopiacomposer = "VictoriaTLd"
 mutopiainstrument = "Voice"
 source = "Arista Edition"
 style = "Renaissance"
 copyright = "Creative Commons Attribution-ShareAlike 2.0"
 maintainer = "jeff covey"
 maintainerEmail = "jeff.covey@pobox.com"
 maintainerWeb = "http://pobox.com/~jeff.covey/"
 lastupdated = "2005/01/22"
 
 footer = "Mutopia-2005/01/22-244"
 tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\thefooter\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright \\ The Mutopia Project \\& "+ \maintainer + " 2005.} \\makebox[188mm][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License. To view a copy of that license visit} \\makebox[188mm][c]{\\texttt{http://creativecommons.org/licenses/by-sa/2.0/} \\footnotesize or write to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}}"
}

%{ thanks to jcn for all the help on this one!  :) %}

\version "2.4.0"

global =  {
  \key aes \major
  \time 4/4
  \skip 1*39  \bar "||"
  \skip 1*13  \bar "||" \time 3/4
  \skip 2.*14 \bar "||" \time 4/4
  \skip 1*8   \bar "|."
}

sopranoMelody =  \relative c'' {
  c1 f,2 c' ~ c4 c des des c2 r4
  f des ees f4. f8 f4 c des c ~ 
   c8[ bes aes g aes bes c aes]  bes[ aes]  aes[ g16 f] g2 ~ g f 
  % 10
  %% melisma without slur -- jcn
  %% a1 bes2 a4. bes8 c4 des4. c8 bes4 ~ bes a bes  aes8[ g] f4 g aes2
  a1 bes2 a4. \melisma bes8 c4 \melismaEnd
  des4. c8 bes4 ~ bes a bes  aes8[ g] f4 g aes2
  % 15 
  r4 f' des ees f4. f8 f4 des bes c des4. des8 des4 c4. bes8 bes4 ~ bes a bes2
  % 20
  r1 r4 des4 c4. a8 bes4 c des bes des4. des8 des4 des c2 c
  % 25
  a4 c c4. c8 c4 d ees2 des?4  c8[ bes] c2 des c r1
  % 30
  r4 f, bes2 aes4 f g a bes4. c8 des!4 des c2 r r1
  % 35
  r4 bes ees2 des4 bes c d ees4.  des8[ c bes] bes4 ~
  bes  a8[ g] a4 a bes2 r
  % 40
  a2. a4  a2 bes a4. bes8 c4 des ~  des8[ c] c4. bes8 bes4
  c a2 a4 bes4. bes8 bes2 
  % 46
  r4 bes4.  c8[ des bes] c4 f ees2 des4 f ees c des4.  c8[ bes aes]  aes[ g16 f]
  % 50
  g4 g f c' ~ c aes2 des4 ~  des8[ c] bes2 a4
  % 53
  \override Staff.TimeSignature   #'style = #'single-digit
  bes2 des4 c2 a4 bes4.  aes?8[ bes c] des4 c2
  des2 bes4 aes2 f4 g4.  f8[ g aes]
  % 60
  bes2 a4 bes2. r4 r ees des4.  c8[ des bes]
  c4  aes8[ bes c des] ees2 ees4 des4 f2
  % 67
  \override Staff.TimeSignature   #'style = #'C
  f1 r4 f  f8[ ees des c] bes4 ees4.  des8[ c bes]
  %%  a4 bes2 a4 bes1 ~ bes ~ bes ~ bes
  \set Staff.melismaBusyProperties = #'(melismaBusy)
  a4 bes2 a4 bes1\melisma ~ bes ~ bes ~ \melismaEnd bes 
}

altoMelody =  \relative c' {
  r1 r2 f2 ~ f bes, f'2. f4 ges ges f2 r4
  f des ees f4. f8 f4 c des f2  e8[ d] e2 f 
  % 10
  f1 f2 f4. g8 aes?4 aes, bes4. c8 des4 c bes f'
  f ees c4. c8 
  % 15
  %% manual melisma.  LilyPond (<<= 1.5.58 will) automatically start
  %% a melisma with a tie, but will not stop it just before or during a rest,
  %% and cannot be convinced to do so. --jcn
  %% c4 des4. c8 bes4 ~ bes a bes bes' f aes aes4. aes8 aes2 f4 ges4 f2 f ~ 
  c4 des4. c8 bes4 ~ bes a bes bes' f aes aes4. aes8 aes2 f4 ges4 f2
  \set Staff.melismaBusyProperties = #'(melismaBusy) 
  f \melisma ~
  % 20
  %% f2 r r4 bes aes4. f8 g4 a bes f f4. f8 f4 g aes2 g
  \melismaEnd f2
   \unset Staff.melismaBusyProperties 
  r2 r4 bes aes4. f8 g4 a bes f f4. f8 f4 g aes2 g
  % 25
  f4 aes? aes4. aes8 aes4 aes bes c ~  c8[ bes] bes2 a4
  bes f aes?4.  g16[ aes] bes4  aes8[ g] f4 c
  % 30
  r2 r4 bes f'2 ees4 c d ees  f8[ ees f g]
  aes4.  g16[ aes] bes4  aes8[ g] f2 r4 c
  % 35
  f2 ees4 c  des8[ ees f g] aes2 bes4.  aes8[ ges f] ges4
  f2. f4 d2 r
  % 40
  f2. f4 f2 f f1 ~ f f2 r4 f ~ f f ges4. ges8
  % 46
  f4  bes,8[ c des ees f g] aes4 aes aes2 f4 f g a
  bes4.  aes?8[ g f] f4 ~ f e f aes ~  aes8[ g f ees] f2
  des4 ees f2
  % 53
  \override Staff.TimeSignature   #'style = #'single-digit
  f2 bes4 aes2 f4 g4.  f8[ g aes] bes2 a4 bes2 f4 f2 c4 ees2 ees4
  % 60
  f4 f2 f2 des4 bes2 a4 bes2 bes'4 aes2 f4
  g4.  f8[ g aes] bes2 a4
  % 67
  \override Staff.TimeSignature   #'style = #'C
  bes2 r4 f4  f8[ ees des c] bes4 bes' ~  bes8[ aes ges f] es4 ges
  %f2 r4 c des4. ees8 f4 ges ~ ges f ees4. f8 ges2 f ~ f1
  f2 r4 c des4. ees8 f4 ges ~ ges f ees4. f8 ges2
  \set Staff.melismaBusyProperties = #'(melismaBusy)
  f \melisma ~  \melismaEnd f1
}

tenorMelody =  \relative c' {
  r1 r r r r r r r2 
  c2 ~ c f,2 
  % 10
  c'2. c4 des des c2 r4 f des ees
  f4. f8 f4 c des c4.  bes8[ aes g] 
  % 15
  aes2 bes c des4 f des ees f4. f8 f4 ees des ees c2 bes4 des
  % 20
  c4. a8 bes4 c des bes f'4. f8 ees4 c bes des des4. des8 des4 des
  ees f2 e4
  % 25
  f f, f'4. f8 f4 f ees2 ges f r4 bes, f'2 ees4 c d ees
  % 30
   f8[ ees des c bes c des bes] c2. c4 bes2 r4 bes
  f'2 ees4 c des c4.  bes8[ aes g]
  % 35
  aes4 bes2 a4 bes des ees f ges4.  f8[ ees des] ees4
  des  c8[ bes] c4 c bes2 r
  % 40
  c2. c4 c2 des c2. bes4 c2 des c4 c2 c4
  % 45
  d4. d8 ees4  bes8[ c des ees] f2 des4
  ees des2 c4 des des ees f bes,2. des4 c1 aes bes2 c
  % 53
  \override Staff.TimeSignature   #'style = #'single-digit
  bes2 bes4 f'2 f4 ees2 ees4 bes4 f'2 bes,2 des4
  c2 aes4 bes4.  aes8[ bes c]
  % 60
  des4 c2 bes2 f4 g4 ees2 f2 des'4 c2 aes4 bes2 bes4 bes4 c2
  % 67
  \override Staff.TimeSignature   #'style = #'C
  bes4 des  c8[ bes aes g] f4  bes8[ c des ees f des]
  ees4. f8  ges[ f ees des] c4 bes c f  f8[ es des c] bes4 des
  %%ees f ges4. f8 ees2.  d?8[ \( c]  d1\) 
  ees f ges4. f8 ees2.  d?8[ \( \melisma
  \set Staff.melismaBusyProperties = #'(melismaBusy)
  c] \melismaEnd  d1\) 
}

bassMelody =  \relative c {
  r1 r r r r r r r r
  % 10
  f1 bes,2 f' ~ f4 f ges ges f2 r4 f des ees f4. f8 
  % 15
  f4 des ges2 f2 bes,4 bes bes' aes des,4. des8 des4 aes' bes ees, f2
  bes,4 bes'
  % 20
  aes4. f8 g4 a bes2 r r r4 bes, bes'4. bes8 bes4 bes aes4. bes8 c2
  % 25
  f,2 r r1 r2 r4 f4 bes2 aes4 f4 g aes bes  aes8[ g]
  % 30
  f4. aes8 ges4 ges f2 r
  r4 ees4 bes'2 aes4 f g aes bes  aes8[ g] f4. ees8
  % 35
  des4  c8[ bes] c4 c bes bes' aes f ees1 f2. f4 bes,2 r
  % 40
  f'2. f4 f2 bes, f'4. g8 a4 bes ~  bes8[ a] a4 bes2
  f4 f2 f4 bes4. bes8 ees,2
  % 46
  bes'2. bes4 aes des, aes'2 des, r
  r1 r2 f ~ f des ges f
  % 53
  \override Staff.TimeSignature   #'style = #'single-digit
  bes,2 r4 r2. r r r2 bes4 f'2 f4 ees2 ees4
  % 60
  bes f'2 bes,2 bes4 ees4 c2 bes2 bes4 f'2 f4
  ees2 ees4 ges4 f2
  % 67
  \override Staff.TimeSignature   #'style = #'C
  bes,4 bes'  aes8[ g f ees des c bes aes] bes2 ees1 f
  %%bes,4 bes'  bes8[ aes ges f] ees4 d ees2 ~ ees bes ~ bes1
  bes,4 bes'  bes8[ aes ges f] ees4 d ees2 ~ ees
  \set Staff.melismaBusyProperties = #'(melismaBusy)
  bes \melisma ~ \melismaEnd bes1
}

sopranoLyrics = \lyricmode {
  O ma -- gnum __ my -- ste -- ri -- um
  et ad -- mi -- ra -- bi -- le sa -- cra -- men --
  _ _ _ -- _ _ _ -- _ _ _ -- _ _ -- _ _ --
  % (yikes, that's a kludge!)
  tum,
  % remove extra extenders between gnum and my -- jcn
  %o ma -- gnum __ _ _ my -- _ _ -- _ -- ste -- _ _ _ ri -- um
  o ma -- gnum __ my -- _ _ -- _ -- ste -- _ _ _ ri -- um
  et ad -- mi -- ra -- bi -- le, et ad -- mi -- ra -- bi -- le
  sa -- cra -- men -- _ -- tum,
  % 21
  ut a -- ni -- ma -- li -- a vi -- de -- rent Do -- mi -- num na --
  tum, vi -- de -- rent Do -- mi -- num na -- _ _ _ -- _ -- tum
  % 30
  ja -- cent -- tem in prae -- _ se -- _ _ -- pi -- o,
  % 35
  ja -- cent -- tem in prae -- _ se -- _ _ _ -- _ _ -- _ _ pi -- o,
  % 40
  O be -- a -- ta Vir _ -- _ -- _ -- _ _ -- _ _ go,  cu -- jus
  % 45
  vi -- sce -- ra me -- _ _ -- _ _ -- ru -- e -- runt por -- ta -- re
  % 49
  Do -- _ _ _ -- _ _ -- _ _ -- mi -- num Je -- sum Chri  -- _ _ -- _ --
  % 53
  stum.
  Al -- le -- lu -- ja, al _ -- _ -- le -- lu -- ja,
  al -- le -- lu -- ja, al _ -- _   le -- lu -- ja,
  % 62
  al -- le _ -- _ _ -- _ lu _ _ -- _ ja, al -- le -- lu --
  % 67
  ja, al -- le _ _ -- _ _ -- lu -- _ _ -- _ _ -- _ -- _ --
  ja. __ _
}

altoLyrics = \lyricmode {
  % 2
  O __ ma  -- gnum my -- ste -- ri -- um
  et ad -- mi -- ra -- bi -- le sa -- cra -- men -- _ _ _ tum,
  % 10
  o ma -- gnum __ _ _ my -- ste -- _ -- _ ri -- um,
  et ad -- mi -- ra -- bi -- le sa -- cra -- men -- _ tum,
  %% move ut --jcn
  %% et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum, __
  et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum, __ _
  % 21
  ut a -- ni -- ma -- li -- a
  vi -- de -- rent Do -- mi -- num  na -- tum,
  vi -- de -- rent Do -- mi -- num na -- _ _ -- _ tum,
  ja -- cen _ _ _ -- _ _ -- _ tem
  % 30
  ja -- cent -- tem in prae -- se _ -- _ _ _ -- _ -- _ _ -- _ pi _ -- o,
  ja -- cen -- tem in prae _ _ -- _ _ -- se _ -- _ _ _ -- _ -- pi -- o.
  % 40
  O be -- a -- ta Vir -- go,
  cu -- jus vi -- sce -- ra me _ -- _ _ _ -- _ _ -- ru -- e -- runt por -- ta -- re
  % 49
  Do -- _ _ _ -- _ -- mi -- num Je -- _ _ -- _ _ -- sum __ _ Chri --
  % 53
  stum.
  Al -- le -- lu -- ja, al _ -- _ le -- lu -- ja,
  al -- le -- lu -- ja, al -- le -- lu -- ja,
  al -- le -- lu -- ja, al -- le -- lu -- ja,
  al _ -- _ le -- lu --
  % 67
  ja, al -- le _ -- _ _ _ -- lu -- _ -- _ _ -- _ _ -- ja,
  al -- le -- _ _ -- lu -- _ -- _ -- _ _ -- ja. __ _
}

tenorLyrics = \lyricmode {
  % 8
  O __ ma -- gnum my -- ste -- ri -- um
  et ad -- mi -- ra -- bi -- le sa -- cra -- men --
  _ _ -- _ _ -- _ -- _ -- tum,
  et ad -- mi -- ra -- bi -- le sa -- cra -- _ men -- tum, 
  % 19
  ut a -- ni -- ma -- li -- a,
  ut a -- ni -- ma -- li -- a,
  vi -- de -- rent Do -- mi -- num na -- _ --
  % 25
  tum, vi -- de -- rent Do -- mi -- num na -- tum
  % 28
  ja -- cen -- tem in prae _ -- se _ _ -- _ _ _ -- _ _ -- _ -- pi -- o,
  ja -- cen -- tem in prae -- se -- _ _ _ -- _ _ -- pi -- o,
  in prae -- se -- _ _ -- _ _ _ -- _ -- _ _ _ -- pi --o.
  % 40
  O be -- a -- ta Vir -- _ -- _ -- _ -- go, cu -- jus vi -- sce -- ra
  me _ -- _ _ _ -- ru -- e _ -- _ -- runt por -- ta -- re
  % 49
  Do -- mi -- num Je -- sum Chri --
  % 53
  stum.
  Al -- le -- lu -- ja, al -- le -- lu -- ja, al -- le -- lu -- ja, al _ -- _ le -- lu -- ja,
  al -- le -- lu -- ja, al -- le -- lu ja, al -- le -- lu --
  % 67
  ja, al -- le _ -- _ _ _ -- lu _ _ -- _ _ -- _ _ -- _ -- _ _ _ -- _ -- _ -- _ ja,
  al -- le _ -- _ _ _ -- lu -- _ _ -- _ _ -- _ -- ja. __ _
}

bassLyrics = \lyricmode {
  % 10
  O ma -- gnum __ my -- ste -- ri -- um
  et ad -- mi -- ra -- bi -- le sa -- cra -- men -- tum,
  et ad -- mi -- ra -- bi -- le sa -- cra -- _ men -- tum,
  % 19
  ut a -- ni -- ma -- li -- a,
  vi -- de -- rent Do -- mi -- num __ _ na --
  % 25
  tum,
  % 27
  ja -- cen -- tem in prae -- se -- _ _ -- _ _ -- _ -- _ pi -- o,
  ja -- cen -- tem in prae _ -- se _ -- _ _ -- _ _ -- _ _ -- _ -- pi --
  o, in prae -- se -- _ -- _ -- pi -- o.
  % 40
  O be -- a -- ta Vir _ -- _ _ -- _ _ -- _ -- go,
  cu -- jus vi -- sce -- ra me -- ru -- e _ -- _ -- runt
  % 50
  Je -- sum Chri -- _ --
  % 53
  stum.
  al -- le -- lu -- ja, al -- le -- lu -- ja,
  al -- le -- lu -- ja, al -- le -- lu -- ja,
  al -- le -- lu --
  % 67
  ja, al -- le _ -- _ _ _ -- _ _ _ -- _ -- lu -- _ -- ja,
  al -- le _ -- _ _ -- _ _ -- lu -- ja. __ _
}


sopranoTotal = \simultaneous {
              \oldaddlyrics
	      \context Staff = "soprano" { 
                \set Staff.instrument = "Soprano"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "violin"
		 \unset Staff.melismaBusyProperties 
				 \context Voice=soprano<< 
						\global
						\sopranoMelody
						>>
					}
		     \context Lyrics = "soprano" \sopranoLyrics
	      }

altoTotal = \simultaneous {
              \oldaddlyrics
	      \context Staff = "alto" { 
                \set Staff.instrument = "Alto"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "violin"
		 \unset Staff.melismaBusyProperties 
				 \context Voice=alto<< 
						\global
						\altoMelody
						>>
					}
		     \context Lyrics = "alto" \altoLyrics
	      }

tenorTotal = \simultaneous {
              \oldaddlyrics
	      \context Staff = "tenor" { 
                \set Staff.instrument = "Tenor"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "violin_8"
		 \unset Staff.melismaBusyProperties 
				 \context Voice=tenor<< 
						\global
						\tenorMelody
						>>
					}
		     \context Lyrics = "tenor" \tenorLyrics
	      }

bassTotal = \simultaneous {
              \oldaddlyrics
	      \context Staff = "bass" { 
                \set Staff.instrument = "Bass"
	      	\set Staff.midiInstrument = "voice oohs"
		\clef "bass"
		 \unset Staff.melismaBusyProperties 
				 \context Voice=bass<< 
						\global
						\bassMelody
						>>
					}
		     \context Lyrics = "bass" \bassLyrics
	      }

        
\score {
     \context ChoirStaff = "choir" <<
       \sopranoTotal
       \altoTotal
       \tenorTotal
       \bassTotal
     >>

  \layout { interscoreline = 5 }
  \midi  { \tempo 4=110 }
}

\paper { raggedbottom = ##t }

% EOF
