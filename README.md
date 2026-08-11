# CSE 751 Notes: Neural Network Foundations, RNNs, and LSTMs

LaTeX notes covering neural network foundations (perceptrons, backpropagation, gradient
descent), Recurrent Neural Networks (RNNs), Bidirectional RNNs, and LSTMs, including fully
worked numerical examples (forward pass, BPTT, and weight updates) for POS tagging.

## Files

- `main.tex` — main document (Neural Network Foundations, RNNs, Bidirectional RNNs).
- `rnn_lstm_overview.tex` — RNN/LSTM conceptual Q&A plus three worked examples (vanilla RNN,
  bidirectional RNN, LSTM), included into `main.tex` via `\input`.
- `compile.sh` — compiles the notes to `cse751.pdf`.

## Compiling

```sh
./compile.sh
```

Requires `pdflatex`. Output is `cse751.pdf`.
