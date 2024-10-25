| Require: Saved intermediate variables from the forward pass: visual textual | Require: Saved intermediate variables from the forward pass: visual textual |
| --- | --- |
|  | features I E Rbxc, features T E Rbxc. the local LSE vector l E Rb. , The row-wise and column-wise size of a tile: tr and tc, |
| 1: | Divide I into Ir i = 1, 2, , Nr. |
|  | , where . . · |
| 2: | Divide T into Tj , where j = 1 2, . . · , nc. |
| 3: | Divide l into lr, where i = 1, 2, . · · , Nr. |
| 4: | Initialize gradients vectors: dI E Rtrxc and dT E Rtcxc. |
| 5: | for each In do |
| 6: | Load Ii and li from HBM to on-chip SRAM. |
| 7: | Initialize dIi = 0 E Rtrxc. |
| 8: | for j = 1 to [b//tc] do |
| 9: | Load To from HBM to on-chip SRAM. |
| 10: 11: | On chip, compute Xi,j = Ii · T⌀ E Rtrxtc. On chip, compute dXi⌀j = exp(Xi,j - lr) E Rtrxtc. |
| 12: | Update gradients dIi += dXi⌀j · T⌀. |
| 13: | Load dT) from HBM to on-chip SRAM. |
|  | dT⌀ += Ii · dXi,j. |
| 14: 15: | Write updated dT⌀ back to HBM. |
| 16: | end for |
| 17: | Write updated dI⌀ back to HBM. |
| 18: | end for |
| 19: | return dI(i.e. ai ), dT(i.e. 이정 ). |
