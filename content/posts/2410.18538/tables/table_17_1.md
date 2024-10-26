| 1: Input: X: a pixel at frame t, W: window size |
| --- |
|  |
| 2: Xs ← Correspondence of X at frame s (obtained by CoTracker (X, s)) |
| 3: Vis(Xs, s): visibility of Xs (obtained by CoTracker) |
| 4: Visible_Set ← {i E range (- W ツ) if Vis(Xsi) == 1} 2 , |
| 5: P ← Most_Occurrence (S(X:).argmax(dim = O)) where i E Visible_Set |
| 6: total ← 0, count ← 0 |
| 7: for all p E Visible_Set do |
| 8: if S(Xi).argmax(dim=0) == P then |
| 9: total ← total + S(Xi) |
| 10: count ← count + 1 |
| 11: end if |
| 12: end for |
| total ← |
| 13: Stracked (X) count |
