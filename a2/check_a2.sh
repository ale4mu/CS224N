#!/bin/bash

echo "start parser_model.py -e..."
python parser_model.py -e
if [ $? -ne 0 ]; then
  echo "error:parser_model.py -e"
  exit 1
fi

echo "start parser_model.py -f..."
python parser_model.py -f
if [ $? -ne 0 ]; then
  echo "error:parser_model.py -f"
  exit 1
fi

echo "start parser_transitions.py part_c..."
python parser_transitions.py part_c
if [ $? -ne 0 ]; then
  echo "error:parser_transitions.py part_c"
  exit 1
fi

echo "start parser_transitions.py part_d..."
python parser_transitions.py part_d
if [ $? -ne 0 ]; then
  echo "error:parser_transitions.py part_d"
  exit 1
fi

echo "All checks passed!"