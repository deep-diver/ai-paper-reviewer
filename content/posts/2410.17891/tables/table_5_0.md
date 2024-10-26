| Algorithm 1 Adaptation Training | Algorithm 1 Adaptation Training | Algorithm 2 Sampling |
| --- | --- | --- |
| 1: | Input: network f⌀ initialized by existing models, training corpus Pdata (x1⌀n ), mask token m. | 1: Input: Trained diffusion model f⌀, sampling al- gorithm T, mask token m, start token S. |
| 2: | Output: model parameters 0. | 2: Output: generated sample X⌀. |
| 3: | repeat | 3: Initialize x1in = m. |
| 4: | Draw x1⌀n ~ Pdata and set labels ← xJ:N | 4: for t = T, · · · , do 1 |
| 5: | Sample t E Uniform(0, 1) | 5: Forward logits ← f⌀(x1:N) |
| 6: | Sample x1:N ~ q(xt|xo) | 6: Sample ⌀1:N ~ Categorical(T (logits)) |
| 7: | Anneal the attention mask attn_mask | 7: for n = 1, · · · , N do |
| 8: | Forward logits ← f⌀ (x1in) with attn_mask | 8: xt-1 = q(xt-1|x7, x⌀ ) ▷ Eq.4 |
| 9: | Right shift logits by one position | 9: end for |
| 10: | Lt = 1/8xt,m CE(logits, labels) ▷ Eq.7 | 10: Right shift x1iN = [s, x]=1] |
| 11: | Backprop with Lt and update 0 | 11: end for |
| 12: | until end training | 12: Return x2⌀n |
