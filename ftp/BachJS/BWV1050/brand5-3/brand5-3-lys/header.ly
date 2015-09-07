\version "2.18.0"

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
	 and Im glad my goal of completing this small piece is much completed.

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

%}

#(set-global-staff-size 18)

\header {
  title = "Brandenberg Concerto No.5 (Keyboard Concencerto)"
  subtitle = "3rd Movement"
  composer = "J.S. Bach"
  meter = "Allegro"

  %instrument = "Baroque Chamber"
  %dedication = "Typesetted for my Friends"
  %piece = ""
  %head = ""
  %footer = ""
  %tagline = "joshuakoo@myrealbox.com. WIP for mutopia-project"

  mutopiatitle = "Brandenburg Concerto No. 5 in D Major"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 1050"
  mutopiainstrument = "Ensemble: Flute, Two Violins, Violas, 'Cello, Bass and Harpsichord"
  date = "1719?"
  source = "Dover From the Bach-Gesellschaft Edition"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Joshua Koo"
  maintainerEmail = "zz85@users.sourceforge.net"
  lastupdated = "2005/March/31"

  footer = "Mutopia-2005/04/11-548"
  %tagline = "\\raisebox { 10mm} { \\parbox { 188mm} { \\quad\\small\\noindent " + \footer + " \\hspace { \\stretch { 1}} This music is part of the Mutopia project: \\hspace { \\stretch { 1}} \\texttt { http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c] { It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c] { Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
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
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = 8
  \tupletSpan 4
  \omit TupletBracket
  \set FiguredBass.figuredBassAlterationDirection = #RIGHT
  \override FiguredBass.BassFigure.font-size = -2
  \hide FiguredBass.BassFigureContinuation
}
