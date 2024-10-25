| Require: Number of GPUs n, saved intermediate variables from the forward | Require: Number of GPUs n, saved intermediate variables from the forward |
| --- | --- |
|  | pass: in-memory visual features Ir E Rbsxc and textual features T2 E Rbsxc for each GPU, global LSE vectors li E Rbs. |
| 1: | Initialize vector: dIi = 0 E Rbsxc. dTcache = 0 E Rbsxc on each GPUi. , |
| 2: | for j = 1 to n do |
| 3: | Asynchronously Text Feature Communication: |
| 4: | Each GPU sends in-memory textual feature to the next GPU and receive the textual feature from the previous GPU in the ring. |
| 5: | Backward Calculation: |
| 6: | Index of current text feature tile for each GPU: k = (i+j - 1) mod n |
| 7: | Call Algorithm 4 with (Ir, , Tk li) , obtaining gradients dItemp and dTtemp. , |
| 8: | Update gradients dIi += dItemp. |
| 9: | Update gradients dTcache += dTk |
| 10: | Asynchronously Gradient Communication: |
| 11: | Each GPU sends in-memory dTcache to the next GPU in the ring. |
| 12: | Each GPU receive the gradient feature from the previous GPU and write to dTcache. |
| 13: | end for |
| 14: | dTi = dTcache in each GPU. |
| 15: | Return the gradients dIi dTi for each GPU. , |
