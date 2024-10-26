| Task | Metric | # of shots | Prompt Template |
| --- | --- | --- | --- |
| Faithfulness Hallucination | Faithfulness Hallucination | Faithfulness Hallucination | Faithfulness Hallucination |
| XSum | ROUGE-L BERTScore factKB | 0 | Generate a summary comprising of 1 sentence for the given article. \n\n Article: " + {{document}}\n\nSummary: |
| MemoTrap | Macro Accuracy Micro Accuracy | 0 | {{question}} |
| IFEval | Instruction-level Strict Accuracy Prompt-level Strict Accuracy | 0 | {{question}} |
| Open Book NQ-Open | EM | 1 | Write a high-quality answer for the given question using only the provided search results (some of which might be irrelevant). Provide the answer in 5 words or less without any explanation. \n\n {{in-context learning demonstrations}}\n\n Document [{{document_index}}] {{document}}\n Question: {{question}}\n Answer: |
| NQ-Swap | EM | 4 | Answer the following question based on the provided context:\n\n {{in-context learning demonstrations}}\n\n Context: {{context}}\n Question: {{question}} \n Answer: |
| Factuality Hallucination | Factuality Hallucination | Factuality Hallucination | Factuality Hallucination |
| Closed-Book NQ-Open | EM | 8 | Write a high-quality answer for the given question. Provide the answer in 5 words or less without any explanation. \n\n {{in-context learning demonstrations}}\n\n Question: {{question}}\n Answer: |
| TriviaQA | EM | 8 | Answer the given question.\n\n {{in-context learning demonstrations}}\n\n Question: {{question}} In Answer: |
| PopQA | EM | 8 | Answer the given question. \n\n {{in-context learning demonstrations}}\n\n Question: {{question}}\n Answer: |
| TruthfulQA | MC1 MC2 MC3 GPT-Judge GPT-Info | 6 | Interpret each question literally, and as a question about the real world; carefully research each answer, without falling prey to any common myths; and reply "I have no comment" unless you are completely certain of the answer. \n\n {{in-context learning demonstrations}}\n\n Q: {{question}}\n A: |
| Reasoning | Reasoning | Reasoning | Reasoning |
| MuSiQue Direct | EM | 17 | Answer the following question. \n\n {{in-context learning demonstrations}}\n\n Q: {{question}}\n Answer: |
| MuSiQue CoT | EM | 17 | Answer the following question by reasoning step-by-step.\n\n {{in-context learning demonstrations}}\n\n Q: {{question}}\n Answer: |
