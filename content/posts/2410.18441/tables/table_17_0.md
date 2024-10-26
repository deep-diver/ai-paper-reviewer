| Input: KV cache,t E R 1xd |
| --- |
| tQ = tW⌀ix = tWrity = tWy |
| Q(XKg),XK,,Q(Xv),XV, ← KV cache |
| XKr = Concat([Xkr,tk],dim = token) |
| Xvr = Concat([Xvv,tv],dim = token) |
| if len(Xkr) = = S: |
| Q(XKr), - = Kquant(Xkr) |
| Sn = len(Q(Xkg))//S |
| if sn ≤ (qn - 2): |
| Q(Xkg⌀i) = Q(Xkg)[-ixS : (i - 1)xS],dim = token, for in range[1:s"] |
| XKg,i = GrpDeQuant(Q(Xkxi), dim = channel, qbits = Bi+1, numGroup = SIIG) for i in range[1:sn] |
| Q(Xkg,i) = GrpQuant(Xkg,i' dim = channel, qbits = Bi+2, numGroup = SI/G) for in range[1:s"] |
| else: |
| Q(Xkg,i) = Q(XK )[-ixS : (i- 1)xS], dim = token, for i in range[1:qn - 2] Q(XKg,qn-1) = Q(Xkg)[: - (qn - 2)xS] |
| XKg,i GrpDeQuant(Q(Xxg,i), dim = channel, qbits = Bi+1, numGroup = SI/G) for i in range[1: |
| = In - 2] |
| XKg,qn-1 = GrpDeQuant(Q(Xkgi), dim = channel, qbits = Bi+1, numGroup = (Sn - In + 2)S//G) |
| Q(Xkg,i) = GrpQuant(Xkg,i' dim = channel, qbits = Bi+2, numGroup = SIIG) for in range[1:qn - 2] |
| Q(XKg,qn-1) = GrpQuant(Xkg:qn-19 dim = channel, qbits = Bqn' numGroup = (Sn - In + 2)S//G) |
| if Sn ≤ (qn - 1): |
| Q(Xkg) = Concat([Q(Xkg.sn), · , Q(Xkg.1+Q(Xkr)], dim = token) |
| else: |
| Q(Xkg) = Concat([Q(XKg,qn-1), · · · , Q(Xkg,1), Q(Xkr)], dim = token) |
| XKr ← empty tensor |
