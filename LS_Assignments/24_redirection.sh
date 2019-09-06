#!/bin/bash
echo "Before Loop"
cat hello.txt
echo "After loop"
tail -f hello.txt >> hello.txt | tail -f hello.txt
