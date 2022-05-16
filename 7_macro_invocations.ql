import cpp

from MacroInvocation invo
where
	invo.getMacroName() in ["ntohl", "ntohll", "ntohs"]
select invo
