import cpp

from MacroInvocation macro_invoke
where macro_invoke.getMacro().getName().regexpMatch("(ntohs|ntohl|ntohll)")
select macro_invoke, "Macro Invocation"


