| Input: text Xt, image Xi, low-rank projection matrix W', | Input: text Xt, image Xi, low-rank projection matrix W', |
| --- | --- |
| Output: | scales S E Zn, drop ratio 2 fused feature XI |
|  |  |
|  | 1: Xl ← Tokenizer(xt) |
| 2: | X v , Xv,cls ← CLIP(xi) |
|  | 3: X ← concat( [X. v,cls, Xi]) 1 |
| 4: | X v ← Xv W' |
| 5: | X' ← X v v |
| 6: | for S in S do |
| 7: | さ ← pooling(Xv, s) v,s |
| 8: | ← concat( [X'⌀, |
|  | X'o s]) v |
| 9: | end for ▷ Multiscale visual prompt (Sec. III-C) |
| 10: | for layer in LLM do |
| 11: | Xl ← layer(Xi) |
| 12: 13: | attention A ← silu(Xt)silu(X.)T ▷ Parameter-free cross- attention (Sec. III-B) |
| 14: | Asorted ← torch.sort(A, dim=1) |
| 15: | Index 2 ← int(y x A.size(dim=1)) |
| 16: | threshold T ← Asorted [:,2] |
| 17: | mask M ← torch.ones. _like(A) |
| 18: 19: | M [torch.where(A < T)] ← 0 Adaptine fusion (Sec. III-D) |
|  | A ← A · M▷ |
| 20: | X1 ← Xl + AX⌀T |
| 21: | end for |
