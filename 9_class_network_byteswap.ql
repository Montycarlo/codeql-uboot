import cpp

class NetworkByteSwap extends Expr{
    NetworkByteSwap(){
        exists(MacroInvocation macro_invoke |
            macro_invoke.getMacro().getName().regexpMatch("(ntohs|ntohl|ntohll)") and
            this = macro_invoke.getExpr()
        )
    }

}

from NetworkByteSwap n
select n, "Network byte swap"
