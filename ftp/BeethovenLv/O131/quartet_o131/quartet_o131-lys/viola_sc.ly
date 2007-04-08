\include "english.ly"
\include "defs.ly"

\include "1global.ly"
\include "1viola.ly"

\include "2global.ly"
\include "2viola.ly"

\include "3global.ly"
\include "3viola.ly"

\include "4global.ly"
\include "4viola.ly"

\include "5global.ly"
\include "5viola.ly"

\include "6global.ly"
\include "6viola.ly"

\include "7global.ly"
\include "7viola.ly"

\paper {
	raggedbottom = ##f
	raggedlastbottom = ##f
}

\header {
	instrument = "Viola"
}

mImyspacing = {
}

mIImyspacing = {
}

mIIImyspacing = {
}

mIVmyspacing = {
}

mVmyspacing = {
}

mVImyspacing = {
}

mVIImyspacing = {
}

\book {
	\header { \include "header.ly" }
	
	\score {
		\new Staff <<
			\set Score.skipBars = ##t
			\parameters
			\mIbarlines
			\mImyspacing
			\new Voice { \mIViola }
		>>
	}

	\score {
		\new Staff <<
			\set Score.skipBars = ##t
			\parameters
			\mIIbarlines
			\mIImyspacing
			\new Voice { \mIIViola }
		>>
	}

	\score {
		\new Staff <<
			\set Score.skipBars = ##t
			\parameters
			\mIIIbarlines
			\mIIImyspacing
			\new Voice { \mIIIViola }
		>>
	}

	\score {
		\new Staff <<
			\set Score.skipBars = ##t
			\parameters
			\mIVbarlines
			\mIVmyspacing
			\new Voice { \mIVViola }
		>>
	}

	\score {
		\new Staff <<
			\set Score.skipBars = ##t
			\parameters
			\mVbarlines
			\mVmyspacing
			\new Voice { \mVViola }
		>>
	}
	
	\score {
		\new Staff <<
			\set Score.skipBars = ##t
			\parameters
			\mVIbarlines
			\mVImyspacing
			\new Voice { \mVIViola }
		>>
	}
	
	\score {
		\new Staff <<
			\set Score.skipBars = ##t
			\parameters
			\mVIIbarlines
			\mVIIkeychange
			\new Voice { \mVIIViola }
		>>
	}
}
