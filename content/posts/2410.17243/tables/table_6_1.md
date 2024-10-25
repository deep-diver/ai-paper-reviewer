| Require: Visual features: I E Rbsxc and textual features: T E Rbsxc, the row-wise and column- wise size of a tile: tr and tc. | Require: Visual features: I E Rbsxc and textual features: T E Rbsxc, the row-wise and column- wise size of a tile: tr and tc. |
| --- | --- |
| 1: | Divide I into Ir where i = 1,2, . . . , nr. |
| 2: | Divide T into Tj where j = 1, 2, · · . , nc. |
| 3: | parallel for each Ir do |
| 4: | Load Ii from HBM to on-chip SRAM. |
| 5: | Initialize in = 0 E Rtr. |
| 6: | for j = 1 to nr do |
| 7: | Load Tj from HBM to on-chip SRAM. |
| 8: | On chip, compute Xi⌀ = Ii · Th E Rtrxtc. |
| 9: | On chip, calculate tile LSE li⌀j based on Equation 5: |
| 10: | li⌀s = mi⌀j + LSE(Xi,j - mi,j), where mi⌀i rowmax( Xi,j). |
| 11: | On chip, update LSE li based on Equation 4: |
| 12: | li ← 12 + log(1 + exp(livi - lr)). |
| 13: | end for |
| 14: | Write li to HBM. |
| 15: | end parallel for |
| 16: | Return l. |
