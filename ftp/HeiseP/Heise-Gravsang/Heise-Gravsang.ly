\version "2.19.36" 

\paper{%#(set-paper-size "a4")
	line-width = 170
	top-margin = 5
	bottom-margin =5
	ragged-bottom = ##t
	ragged-last-bottom = ##t
	systemSeparatorMarkup = ##t
	system-system-spacing = 
	    #'((basic-distance . 18) 
	       (minimum-distance . 14) 
	       (padding . 1) 
	       (stretchability . 60))
	print-page-number = ##f
}

\header {
  title = "Gravsang af Shakespeare's Cymbeline"
  mutopiatitle = "Gravsang af Shakespeare's Cymbeline"
  subtitle = " "
  composer = "Peter Heise (1830-1879)"
  mutopiacomposer = "HeiseP"
  poet = \markup{\column
                 {
                 {"William Shakespeare"}
                 {"Danish Trans. Carsten Hauch"}
                 {" "}
  }} 
  mutopiapoet = "William Shakespeare, Danish Trans. Carsten Hauch"
  opus = ""
%  instrument = "For male choir TTBB"
  mutopiainstrument = "Male choir TTBB"
  source = "The Royal Library of Denmark"
  style = "Classical"
  maintainer = "Niels CCM Moes"
  maintainerEmail = "ccm.moes@xs4all.nl"
  license = "Creative Commons Attribution 4.0"

 footer = "Mutopia-2016/04/10-2107"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by/4.0/" "Creative Commons Attribution 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

sdu = \override Stem #'direction = #UP
sdd = \override Stem #'direction = #DOWN

%#(set-global-staff-size 18.0)

global = {
  \key  d \major
  \time 6/4
  \autoBeamOff
  \override Hairpin.to-barline =##f
  \numericTimeSignature
}

Tenora = \relative c' { 
  \global
  \clef "G_8"
  \tempo "molto tranquillo"
\sdu 
\partial 2. fis2^\p fis4 e2^\markup{\italic "cresc"}
fis4 g2 a4 fis2
s4 fis2^\markup{\italic "dimin"} fis4 e2 d4 cis( e) d 
\break
cis s2 cis2 d4 e2^\markup{\italic "cresc"} eis4 fis2 fis4
fis2^(eis4) a^\f^(gis) fis^\> fis2^\fp e4 e^\>^(d)cis 
\break
b2.^\pp b4^(e)^\< d\! d^(cis^\>) e\! fis2 fis4^\< fis2.\! g4^\f^(fis) e
d4.^\>^( fis8)\! e[ d]  d2^\p cis4 d2.
\bar "|."\mark \markup \center-column { \fermata }
}
Tenorb = \relative c' { 
  \global
  \clef "G_8"
\sdd 
\partial 2. d2 d4 cis2 dis4 e_(d) cis  d2 r4 d2 d4 cis2 a4 a( cis) b a r4 r a2 a4 a2 a4 a_(b) bis
cis2. cis2 cis4 d2 d4 cis_(b) a a2_(gis4) g2 g4 e2 a4 a_(d) c b2. b2 b4
b4_(fis) gis a2 a4 a2.
\bar "|."
}

Bassa = \relative c' {
  \global \clef "F"
  \sdu
\partial 2. a2 a4 a2 a4 b2 a4 a2 s4 a2 a4 a2 a4 a^(e) fis8[gis] a4 s2 g!2 fis4 a2 g4 fis2 fis4
gis^(a b) a2 a4 b2 b4 a2 e4 e2. e2 b'4 a2 g4 fis2 fis4 fis^(b a) g2 g4
fis2 d4 e^(fis) g fis2.
}
Bassb = \relative c {
  \global \clef "F"
\sdd
\partial 2. d2 fis4 a_(g) fis e2 a,4 d2 r4 a'2 a4 g2 fis4 e2 e4 a, r4 r e'2 d4 cis2 a4 d2 d4 
cis2. fis2 fis4 gis2 gis4 a2 a,8[cis] e2. e2 e4 a,2 a4 d2 d4 dis2. e2 e4
b2 b4 a2 a4 d2.
}

stanzai = \lyricmode {
  \set stanza = #"1. " 
Frygt ej som -- mer -- so -- lens magt!
Frygt ej vin -- ter -- stor -- mens drøn!
Du din ger -- ning har fuld -- bragt,
du går hjem at få din løn,
gyld -- ne lok -- ker, pi -- ges kunst,
alt skal vor -- de støv og dunst.  
}

stanzaii = \lyricmode {
  \set stanza = #"2. " 
Frygt ej for ty -- ran -- ners kiv!
Du står langt fra vold og svig,
e -- gen og det mind -- ste siv,
er det sam -- me nu for dig;
Kon -- gen og de lær -- des kunst,
alt skal vor -- de støv og dunst.

}

stanzaiii = \lyricmode {
  \set stanza = #"3. " 
Frygt ej tor -- den -- ki -- lens brag!
Frygt ej for la -- vi -- nens lyd!
Frygt ej ond -- skab og be -- drag!
Du har endt din sorg og fryd;
had og els -- kov var om -- sonst,
alt skal vor -- de støv og dunst.
}


\score {
      <<
    \new StaffGroup
     \new Staff {\set Staff.instrumentName = #"Tenor"
                 <<
                 \new Voice = "upper" << \Tenora >>
                 \new Voice = "lower" << \Tenorb >>
                 \new Lyrics \lyricsto "upper" {\stanzai}
                 \new Lyrics \lyricsto "upper" {\stanzaii}
                 \new Lyrics \lyricsto "upper" {\stanzaiii}
                 >>
                 
                 }
     \new Staff {\set Staff.instrumentName = #"Bass"
                 <<
                 \new Voice = "upper" \Bassa
                 \new Voice = "lower" \Bassb
                 >>
                 } 

      >>
\midi {
  \tempo 4 = 100
      }
\layout {}
}

\markup{
	\fontsize #1
		\column{"  " "Frygt ej sommersolens magt!"
                        "Frygt ej vinterstormens drøn!"
                        "Du din gerning har fuldbragt,"
                        "du går hjem at få din løn,"
                        "gyldne lokker, piges kunst,"
                        "alt skal vorde støv og dunst."
                        "  "
                        "Frygt ej for tyranners kiv!"
                        "Du står langt fra vold og svig,"
                        "egen og det mindste siv,"
                        "er det samme nu for dig;"
                        "Kongen og de lærdes kunst,"
                        "alt skal vorde støv og dunst."
                        "  "
                        "Frygt ej tordenkilens brag!"
                        "Frygt ej for lavinens lyd!"
                        "Frygt ej ondskab og bedrag!"
                        "Du har endt din sorg og fryd;"
                        "had og elskov var omsonst,"
                        "alt skal vorde støv og dunst."
                        }
		\hspace #2
        \fontsize #1
		\column{"  " "Fear no more the heat o’ the sun,"
		        "Nor the furious winter’s rages;"
		        "Thou thy worldly task hast done,"
		        "Home art gone and ta’en thy wages;"
		        "Golden lads and girls all must,"
		        "As chimney sweepers, come to dust."
		        "  "
		        "Fear no more the frown o’ th’ great;"
		        "Thou art past the tyrant’s stroke:"
		        "Care no more to clothe and eat;"
		        "To thee the reed is as the oak:"
		        "The sceptre, learning, physic, must"
		        "all follow this, and come to dust."
		        "  "
		        "Fear no more the lightning flash,"
		        "The all dreaded thunder stone;"
		        "Fear no slander, censure rash;"
		        "Thou has finished joy and moan."
		        "All lovers young, all lovers must"
		        "consign to thee, and come to dust."
		}
		
	}


