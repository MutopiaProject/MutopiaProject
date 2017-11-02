\version "2.18.2"

\bookpart {

   \header { title = "Errata" }
   \header { maintainer = "Steve Shorter" }
   \include "../mutopia-header.ily"

   \paper { print-page-number = ##t }

   \tocItem \markup { Errata }

   \markup { \column {
	" "
	" "
	" "
	" "
	" "
	\fontsize #1 {
	"     * Aria                - bar 23, missing Schleifer"
	" "
	"     * Variation 27  - bar 23, \"c#\" not playable under given intstrument limitations"
	" "
	"     * Variation 23  - bar 31, \"c\" not playable under given instrument limitations"
	" "
	" "
	" "
	" "
	" "
	"     All other errata should be sent to steve@linuxsuite.org"
        }
    }
  }
}
