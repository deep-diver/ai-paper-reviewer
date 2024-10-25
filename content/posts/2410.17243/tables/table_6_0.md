| Require: Number of GPUs n, in-memory visual features Ir E Rbsxc and textual features Ti E Rbsxc for each GPU. | Require: Number of GPUs n, in-memory visual features Ir E Rbsxc and textual features Ti E Rbsxc for each GPU. |
| --- | --- |
| 1: | for counter = 1 to n do |
| 2: | Update LSE: |
| 3: | Each GPU computes the local LSE vector via Algorithm 2 with in-memory features. |
| 4: | Each GPU updates the LSE vector via Equation 4. |
| 5: | Asynchronously Communication: |
| 6: | Each GPU sends the in-memory textual feature to the next GPU in the ring. |
| 7: | Each GPU receives the textual feature from the previous GPU in the ring. |
| 8: | end for |
| 9: | Return the final LSE vector li for each GPU . |
