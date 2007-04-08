\version "1.4.2"

\header {
   title = "Saltarello"
   composer = "Vincenzo Galilei (1520-1591)"
   instrument = "Guitar"
   enteredby = "Emre Akbas"
   piece = "$\begin{picture}(10,10) \put(5,4) {\circle {12}} \put(2,1) {6} \end{picture}$ = D"

   % mutopia headers
   mutopiatitle = "Saltarello"
   mutopiacomposer = "Vincenzo Galilei (1520-1591)"
   mutopiainstrument = "Guitar"

   style = "Renaissance"
   copyright = "Public Domain"
   maintainer = "Emre Akbas"
   maintainerEmail = "emreakbas@yahoo.com"
   lastupdated = "2001/Aug/26"

   footer = "Mutopia-2001/08/26-110"
   tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
}

\score {
   \notes
   \relative c'' \sequential {
   	\time 3/4
	\key d \major

	\context Staff \notes\relative c'' <
		\context Voice=one {
		   \stemUp 
		   \repeat volta 2 {
		      % 1
		      d8^"$\begin{picture}(10,10) \put(5,0) {\circle 9} \put(2.5,-2.75){2} \end{picture}$" () e fis4 g |
		      a2 \glissando b4 |
		      g4 e a |
		      fis2. |
		      % 5
		      [e8 () d] [e () fis] [g () e] |
		      fis2 g4 |
		      ~ g4 e e8 () fis |
		      \break
		      d2. |
		      d8^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){3}\end{picture}$" 
		      () e fis4^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){2}\end{picture}$"
		      g^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){2}\end{picture}$" |
		      % 10
		      a2^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){2}\end{picture}$"
		      \glissando b4^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){2}\end{picture}$" |
		      g4 e^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){3}\end{picture}$" 
		      a^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){2}\end{picture}$" |
		      fis2.^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){2}\end{picture}$" |
		      \property Voice.TextSpanner \set #'edge-text = #'("    " ."")
		      \property Voice.TextSpanner \set #'type = #'line
		      \property Voice.TextSpanner \set #'edge-height = #'(0 . 0.5)
		      [e8^"$\begin{picture}(10,10) \put(5,3) {\circle{9}} \put(2.5,0.25){2} \end{picture}$"  \spanrequest \start "text"  () d] [e () fis] [g () e] |
		      fis4  \spanrequest \stop "text" [e8 fis] [g fis] |
		      \break
		      % 15
		      [e8 d] [cis d] [e fis] |
		      d2. |
		      fis4 e d |
		      fis2. |
		      fis4^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){2}\end{picture}$" 
		      e^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){3}\end{picture}$"
		      d^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){3}\end{picture}$" |
		      % 20 
		      a'2.^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){2}\end{picture}$" |
		      fis4 e d |
		      a'2 g4 ~ |
		      g4 e4. fis8 |
		      d2.
		      % 25
		      \property Voice.TextSpanner \override #'edge-text = #'("    " . "")
		      [g8^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){2}\end{picture}$" () fis] e4^"$\begin{picture}(10,10) \put(5,0) {\circle {9}} \put(2.5,-2.75){3} \end{picture}$" \spanrequest \start "text"  d \spanrequest \stop "text"|
		      fis2.^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){2}\end{picture}$" |
		      [g8^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){2}\end{picture}$" () fis] 
		      e4^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){3}\end{picture}$" \spanrequest \start "text" d  \spanrequest \stop "text" |
		      a'2.^"$\begin{picture}(10,10)\put(5,0){\circle{9}}\put(2.5,-2.75){2}\end{picture}$" |
		      \property Voice.TextSpanner \override #'edge-text = #'("    " . "")
		      [e8^"$\begin{picture}(10,10) \put(5,3) {\circle {9}} \put(2.5,0.25){2} \end{picture}$" \spanrequest \start "text"  () d] [e () fis] [g () e] |
		      % 30 
		      fis4 \spanrequest \stop "text" [g8 fis] [e d] |
		      [cis b] [cis d] [e fis] |
		      d2. |
		      r2.
		      <d2.^"Harm.7" fis2. a,2.> |
		      <d2. \arpeggio fis2. d'2. d,,2. a2. d,2.>
		   }
		   \bar "|."
		}

		\context Voice=two {
			\stemDown
			\notes\relative c
			% 1
			d4\f_"$\begin{picture}(10,10) \put(5,11){p} \end{picture}$"  a'-p d-p |
			d,4 a' d |
			d,4 a' d |
			d,4 a' d |
			% 5
			d,4 a' d |
			d,4 a' d |
			d,4 a' d |
			d,4 a' d |
			d,4\p a' d |
			%10
			d,4 a' d |
			d,4 a' d |
			d,4 a' d |
			d,4 a' d |
			d,4 a'\f d |
			% 15
			d,4 a' d |
			d,4 a' d |
			d,4\f a' d |
			d,4 a' d |
			d,4\p a' d |
			% 20
			d,4 a' d |
			d,4\f a' d |
			d,4 a' d |
			d,4 a' d |
			d,4 a' d |
			% 25
			d,4\p a' d |
			d,4 a' d |
			d,4 a' d |
			d,4 a' d |
			d,4 a' d |
			% 30
			d,4 a'\f d |
			d,4 a' d |
			d,4 a' d |
			d,4_"Harm.12" a' d |

		}
	>
   }
   \midi {
       \tempo 4 = 96
   }
   \paper { }
}
