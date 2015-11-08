\version "2.18.2"

%{
	 Let all glory be for God

	 This typeset is for anyone, but especially for my friends,
	 and to the NYP String Ensemble and Piano Ensemble
	 (I look forward watching a combined performance)

	 Reasons why I chose this piece.
	 	This is one of my favorite best songs.
		So parts can be printed, and that could be played by my friends or my school ensemble
		A challenge and learning experience for me to understand and use lilypond.

	 In short about this song,
	 it is one of the concertos Bach written for Margrave of Brandenburg,
	 although Margrave didnt seemed to opened his gift,
	 and this piece could be considered the earliest keyboard concerto.
	 You read more from wikipedia (http://en.wikipedia.org/wiki/Brandenburg_concerti#Brandenburg_Concerto_.235_in_D_major)
	 or by searching (http://google.com).
	 Scanned scores can be found here: http://www.gutenberg.org/music/available/brandenburg/

	 If I do recall correct, I took long time to complete this,
	 dating back the lilypond versions 1.6.8 to 2.2.0 to 2.4.2,
	 spanning a duration around 3 years.
	 I started with little or no experienced in lilypond,
	 and I'm glad my goal of completing this small piece is much completed.

	 Some software that helped mes, includes
	 	jEdit with LilyTool
		xml2ly (converting some portions from xml)

	 Thanks to those gave me their support and encouragement,
		 My family (my father, mother, brother and sisters)
		 My relatives (my aunts & my cousins)
		 My teachers (music teachers, lecturers, tutors)
		 My friends (music friends, school friends)
		 My church (brethren in Christ)
		 Friendly net pals (who helped me along)
	 and in one or many other aspects in my life

	 I'd love to hear any comments. Email me at joshuakoo@myrealbox.com or zz85@users.sourceforge.net

	 Joshua Koo

         --------------
         I updated this piece to LilyPond 2.18. After contacting Joshua Koo, we
         agreed that I can contribute to this piece in addition to updating it.
         The musical content is still what Joshua entered and I left the above
         dedication and comments. Main change to the content was to make use of
         the A-B-A structure of the piece and fix some typos where the two A
         parts showed differences.

         Joram Berger
%}

#(set-global-staff-size 18)

\header {
  title = "Brandenburg Concerto No. 5 in D Major"
  subtitle = "3rd Movement"
  composer = "Johann Sebastian Bach"

  mutopiatitle = "Brandenburg Concerto No. 5 (3rd Movement: Allegro)"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 1050"
  mutopiainstrument = "Ensemble: Flute, Two Violins, Violas, 'Cello, Bass and Harpsichord"
  mutopiadate = "1720-21?"
  date = "1719?"
  source = "Bach-Gesellschaft"
  style = "Baroque"
  copyright = ##f
  license = "Public Domain"
  maintainer = "Joshua Koo"
  maintainerEmail = "zz85@users.sourceforge.net"
  lastupdated = "2015-09-27"

 footer = "Mutopia-2015/09/29-548"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%some fuctions
forteB = \markup { \italic "(forte)" }
pianoB = \markup { \italic "(piano)" }
forte = \markup { \italic "forte" }
piano = \markup { \italic "piano" }
pianissimo = \markup { \italic "pianissimo" }
pianissimoB = \markup { \italic "(pianissimo)" }
trillB = \markup { "(" \musicglyph #"scripts.trill" ")"}
cantabile = \markup { \italic "cantabile" }
cantabileB = \markup { \italic "(cantabile)" }
forteI = \markup \italic { \dynamic "f" "orte" }

onceShowTupletNumber = \once \override TupletNumber.stencil = #ly:tuplet-number::print
staffUp = { \change Staff = harpsichordUp \voiceTwo }
staffDown = { \change Staff = harpsichordDown \oneVoice }

\layout {
  % compressed rests
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = 8
  % invisble (implicit) tuplets - with some exceptions inline
  \tupletSpan 4
  \omit TupletBracket
  % figured bass - hidden continuation line used for number ordering
  \set FiguredBass.figuredBassAlterationDirection = #RIGHT
  \override FiguredBass.BassFigure.font-size = -2
  \hide FiguredBass.BassFigureContinuation
}

\paper {
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 0.8\cm
  bottom-margin = 0.7\cm
}
