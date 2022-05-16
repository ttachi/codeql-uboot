import cpp

class NetworkByteSwap extends Expr {
	NetworkByteSwap() {
		exists(MacroInvocation invo |
			invo.getMacroName() in ["ntohl", "ntohll", "ntohs"] and
			this = invo.getExpr()
		)
	}
}

from NetworkByteSwap nbs
select nbs, "Network byte swap"
