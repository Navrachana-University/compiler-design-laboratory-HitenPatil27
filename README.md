# Marathi Programming Language Compiler

## Project Description

This project is a basic compiler for a Marathi-based programming language, built using **Flex (Lex)** and **Bison (Yacc)**. It supports:

- Variable declarations  
- Arithmetic expressions  
- Conditional statements (`if-else`, `switch-case`)  
- Intermediate code generation (Three Address Code - TAC)

The syntax is inspired by natural Marathi language structure, making it more intuitive for native speakers.

---

## Developed By

**Name:** Hiten Patil  
**Roll Number:** *22001005*

---

## Files Included

- `marathi.l` – Lex file defining tokens and lexical rules  
- `marathi.y` – Yacc file for grammar rules and TAC generation  
- `input.mrt` – Sample source code written in the Marathi-based language

---

## How to Run the Compiler

> Prerequisites: Install Flex and Bison

```bash
flex marathi.l
bison -d marathi.y
gcc lex.yy.c marathi.tab.c -o marathi_compiler
./marathi_compiler < input.mrt
