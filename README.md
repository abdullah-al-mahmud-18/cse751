# CSE 751 Notes: Neural Networks to Transformers

LaTeX notes covering the arc from neural network foundations through RNNs, LSTMs,
encoder-decoder attention, and the Transformer architecture. Mixes conceptual Q&A
with fully worked numerical examples (forward pass, BPTT, attention weights, masked
self-attention) for tasks like POS tagging and English-to-Spanish translation.

## Files

- `src/main.tex` — main document; assembles all sections below via `\input`.
- `src/neural_networks.tex` — perceptrons, backpropagation, gradient descent, epochs.
- `src/rnn.tex` — vanilla RNNs, BPTT, weight matrices (U/W/V), and Bidirectional RNNs.
- `src/lstm.tex` — LSTM gates, cell/hidden state, BPTT gradient highway, LSTM vs. RNN.
- `src/rnn_lstm_overview.tex` — RNN/LSTM conceptual Q&A plus three worked examples
  (vanilla RNN, bidirectional RNN, LSTM) for POS tagging.
- `src/encoder_decoder_attention_01.tex`, `src/encoder_decoder_attention_02.tex` —
  encoder-decoder architecture, teacher forcing, the bottleneck problem, and attention
  (additive and bilinear), with a worked English-to-Spanish translation example.
- `src/transformer_overview.tex` — introduction to the Transformer architecture.
- `src/transformer_positional_encoding.tex` — sinusoidal positional encoding.
- `src/transformer_attention.tex` — self-attention and multi-head attention.
- `src/transformer_add_norm.tex` — residual connections and layer normalization.
- `src/transformer_encoder_to_decoder.tex` — encoder-decoder data flow, shifted-right
  decoder inputs.
- `src/transformer_application_bpe.tex` — Byte Pair Encoding and a worked masked
  multi-head attention example inside the decoder.
- `compile.sh` — compiles the notes to `cse751.pdf` (macOS/Linux).
- `compile.ps1` — compiles the notes to `cse751.pdf` (Windows/PowerShell).
- `questions.md` — scratch file for open questions.

## Compiling

macOS/Linux:

```sh
./compile.sh
```

Windows (PowerShell, with MiKTeX installed):

```powershell
./compile.ps1
```

Requires `pdflatex`. Output is `cse751.pdf`.
