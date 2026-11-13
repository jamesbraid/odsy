Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $a1, .L0d9c5afc

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a4, .L0d9c5b58

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $a6, .L0d9c5ad8

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $a7, .L0d9c5ad8

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a4, .L0d9c5e50

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a3, .L0d9c5ee4

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a5, .L0d9c5f3c

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a1, .L0d9c5f54

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $t0, .L0d9c5e08

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a2, .L0d9c616c

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a6, .L0d9c5ff0

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $t3, .L0d9c5fc8

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $v1, .L0d9c634c

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a1, .L0d9c630c

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $v0, .L0d9c6388

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $t3, .L0d9c62f4

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a6, .L0d9c6334

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $a1, .L0d9c5afc

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a4, .L0d9c5b58

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $a6, .L0d9c5ad8

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $a7, .L0d9c5ad8

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a4, .L0d9c5e50

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a3, .L0d9c5ee4

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a5, .L0d9c5f3c

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a1, .L0d9c5f54

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $t0, .L0d9c5e08

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a2, .L0d9c616c

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a6, .L0d9c5ff0

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $t3, .L0d9c5fc8

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $v1, .L0d9c634c

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a1, .L0d9c630c

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $v0, .L0d9c6388

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1402, in <lambda>
    "bltz": lambda a: handle_bgez(a).negated(),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bltz $t3, .L0d9c62f4

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $a6, .L0d9c6334

s32 __glGenericModeFlags();                         /* extern */
? __glOdysseySetCurrentFilter(?, ? *, ? *, ?);      /* extern */
? __glValidateLighting(void *);                     /* extern */
extern ? __glCalcEyeLinear;
extern ? __glCalcMixedTexture;
extern ? __glCalcObjectLinear;
extern ? __glCalcSphereMap;
extern ? __glDrawBitmap;
extern ? __glFastDrawBitmap;
extern ? __glNop;
extern ? __glOdysseyConvolutionFilter;
extern ? __glOdysseyDrawPixels;
extern ? __glOdysseyGetSeparableFilter;
extern ? __glOdysseyRenderBitmap;
extern ? __glOdysseySeparableFilter;
extern ? __glOdysseySoftClipCalcCIColor;
extern ? __glOdysseySoftClipCalcRGBColor;
extern ? __glOdysseySoftClipCalcSphereMapS;
extern ? __glOdysseySoftClipCalcSphereMapST;
extern ? __glOdysseySoftClipCalcSphereMapT;
extern ? __glOdysseySoftClipClipLine;
extern ? __glOdysseySoftClipClipTriangle;
extern ? __glOdysseySoftClipClipTriangleFast;
extern ? __glOdysseySoftClipCopyMaterialOneSided;
extern ? __glOdysseySoftClipCopyMaterialTwoSided;
extern ? __glOdysseySoftClipFlatShade;
extern ? __glOdysseySoftClipRenderLine;
extern ? __glOdysseySoftClipRenderPoint;
extern ? __glOdysseySoftClipRenderTriangle;
extern ? __glOdysseySoftClipRenderTriangleFast;
extern ? __glSlowPickGetConvolutionFilter;

void __glOdysseyPickDepthProcs(void) {

}

void __glOdysseyPickPixelProcs(void *arg0) {
    arg0->unk316C = &__glOdysseyGetSeparableFilter;
    arg0->unk3168 = &__glSlowPickGetConvolutionFilter;
    arg0->unk3160 = &__glOdysseyConvolutionFilter;
    arg0->unk3164 = &__glOdysseySeparableFilter;
    arg0->unk3148 = &__glOdysseyDrawPixels;
    __glOdysseySetCurrentFilter(2, &__glSlowPickGetConvolutionFilter, &__glOdysseyGetSeparableFilter, 0x132BA0);
}

void __glOdysseyPickRenderBitmapProcs(void *arg0) {
    arg0->unk3118 = &__glOdysseyRenderBitmap;
    if (arg0->unk4A8 == 0) {
        if ((arg0->unk4AC == 0) && (arg0->unk4B0 == 0)) {
            if (arg0->unk4A5 != 0) {
                goto block_4;
            }
            arg0->unk3114 = &__glFastDrawBitmap;
            return;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        arg0->unk3114 = &__glDrawBitmap;
        return;
    }
block_4:
    arg0->unk3114 = &__glDrawBitmap;
}

void __glOdysseyPickTextureProcs(void *arg0, s32 arg2) {
    s32 temp_a3;
    s32 temp_a4;
    s64 var_v1;

    temp_a3 = arg0->unk700;
    if ((0xC0000 & temp_a3) != 0xC0000) {
        var_v1 = (s64) temp_a3 << 0x2D;
        goto block_2;
    }
    // Error: negative shift count
    // At instruction: bltz $a6, .L0d9c5ad8
    if (M2C_ERROR() && (// Error: negative shift count, // At instruction: bltz $a7, .L0d9c5ad8, M2C_ERROR()) && (temp_a4 = arg0->unk7C0, var_v1 = (s64) temp_a3 << 0x2D, (arg0->unk83C == temp_a4))) {
        switch (temp_a4) {                          /* irregular */
        case 0x2402:
            arg0->unk2F14 = &__glCalcSphereMap;
            return;
        case 0x2400:
            arg0->unk2F14 = &__glCalcEyeLinear;
            return;
        case 0x2401:
            arg0->unk2F14 = &__glCalcObjectLinear;
            return;
        }
    } else {
block_2:
        if (var_v1 >= 0) {
            // Error: negative shift count
            // At instruction: bltz $a1, .L0d9c5afc
            if (M2C_ERROR()) {
                if (arg2 >= 0) {
                    // Error: negative shift count
                    // At instruction: bgez $a4, .L0d9c5b58
                    if (M2C_ERROR()) {
                        goto block_6;
                    }
                    arg0->unk2F14 = (? *) M2C_ERROR(/* Read from unset register $t9 */);
                    return;
                }
                /* Duplicate return node #7. Try simplifying control flow for better match */
                arg0->unk2F14 = &__glCalcMixedTexture;
                return;
            }
        }
block_6:
        arg0->unk2F14 = &__glCalcMixedTexture;
    }
}

void __glOdysseyPickAllProcs(void *arg0) {
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_a5;
    s32 temp_s1;
    s32 temp_t1;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a1;
    s32 var_a4;
    s32 var_t1;
    s64 temp_a3;
    s64 temp_a3_2;
    s64 temp_a3_3;
    s64 var_a3;
    s64 var_a5;
    s64 var_at;
    s64 var_t3;
    s8 var_a2;
    u32 temp_a0;
    u32 var_a0;
    void *var_a2_2;

    temp_s1 = arg0->unk700;
    arg0->unk771C = __glGenericModeFlags();
    if (arg0->unk2E24 & 0x21) {
        var_a1 = 0x10000;
        if (arg0->unkC94 != 0) {
            var_a1 = arg0->unk16418;
            var_a2 = 0;
            if (var_a1 != 0) {
                var_a2 = 1;
            }
        } else {
            var_a2 = 0;
        }
        arg0->unk6E70 = var_a2;
        arg0->unk2E4C(arg0, var_a1, var_a2);
        var_a5 = (s64) temp_s1 << 0x2D;
        if (arg0->unkC84 != 0x1C01) {
            // Error: negative shift count
            // At instruction: bgez $a4, .L0d9c5e50
            if (M2C_ERROR()) {
                var_a5 = (s64) temp_s1 << 0x2D;
                goto block_8;
            }
            // Error: negative shift count
            // At instruction: bgez $a3, .L0d9c5ee4
            if (M2C_ERROR()) {
                // Error: negative shift count
                // At instruction: bgez $a5, .L0d9c5f3c
                if (M2C_ERROR()) {
                    temp_a2 = arg0->unk7C0;
                    if (temp_a2 != 0x2400) {
                        var_a3 = ((temp_a2 ^ 0x2402) == 0) ? M2C_ERROR(/* Read from unset register $t0 */) : ((s64) temp_s1 << 0x2E);
                    } else {
                        var_a3 = 0x14;
                    }
                } else {
                    var_a3 = 0;
                }
                var_a0 = 2;
                if (0x80000 != 0) {
                    goto block_12;
                }
                var_a0 = 2;
                goto block_14;
            }
            // Error: negative shift count
            // At instruction: bgez $a1, .L0d9c5f54
            if (M2C_ERROR()) {
                if (temp_a0 != 0) {
                    temp_a2_2 = arg0->unk7C0;
                    if (temp_a2_2 != 0x2400) {
                        var_a3 = ((temp_a2_2 ^ 0x2402) == 0) ? 0x1C : 4;
                    } else {
                        var_a3 = 0x14;
                    }
                } else {
                    var_a3 = 0;
                }
            } else {
                var_a3 = 0;
            }
            var_t3 = (s64) temp_s1 << 0x2B;
            if (0x80000 != 0) {
                var_t3 = (s64) temp_s1 << 0x2B;
                if (temp_a0 >= 2U) {
                    goto block_12;
                }
            }
        } else {
block_8:
            if (var_a5 < 0) {
                temp_a2_3 = arg0->unk7C0;
                var_a3 = 0x14;
                if (temp_a2_3 != 0x2400) {
                    var_a3 = ((temp_a2_3 ^ 0x2402) == 0) ? 0x1C : 4;
                }
            } else {
                var_a3 = 0;
            }
            // Error: negative shift count
            // At instruction: bgez $t0, .L0d9c5e08
            if (M2C_ERROR()) {
block_12:
                temp_a2_4 = arg0->unk83C;
                temp_a3 = var_a3 | 4;
                if (temp_a2_4 != 0x2400) {
                    var_a3 = ((temp_a2_4 ^ 0x2402) == 0) ? (temp_a3 | 0x18) : temp_a3;
                } else {
                    var_a3 = temp_a3 | 0x10;
                }
            } else {
                var_a0 = 3;
            }
block_14:
            var_t3 = (s64) temp_s1 << 0x2B;
        }
        var_at = (s64) temp_s1 << 0x2A;
        if (var_t3 < 0) {
            var_at = (s64) temp_s1 << 0x2A;
            if (var_a0 >= 3U) {
                temp_a3_2 = var_a3 | 4;
                var_a3 = ((arg0->unk8B8 ^ 0x2400) == 0) ? (temp_a3_2 | 0x10) : temp_a3_2;
                var_at = (s64) temp_s1 << 0x2A;
            }
        }
        if (var_at < 0) {
            var_a0_2 = temp_s1 & 0x40;
            if (var_a0 != 0) {
                temp_a3_3 = var_a3 | 4;
                var_a3 = ((arg0->unk934 ^ 0x2400) == 0) ? (temp_a3_3 | 0x10) : temp_a3_3;
                goto block_21;
            }
        } else {
block_21:
            var_a0_2 = temp_s1 & 0x40;
        }
        if (var_a0_2 != 0) {
            var_a0_3 = 0x18;
            if (arg0->unk584 == 0) {
                temp_a5 = arg0->unkE04;
                var_a0_4 = 0;
                var_a2_2 = arg0->unk630;
                if (temp_a5 > 0) {
loop_49:
                    temp_t1 = arg0->unk708 & (1 << var_a0_4);
                    var_a0_4 += 1;
                    if ((temp_t1 != 0) && (var_a2_2->unk4C != 0.0f)) {
                        var_a0_3 = 0x18;
                    } else {
                        var_a2_2 += 0x74;
                        if (var_a0_4 < temp_a5) {
                            goto loop_49;
                        }
                        goto block_53;
                    }
                } else {
block_53:
                    var_a0_3 = 8;
                }
            }
            temp_a2_5 = var_a3 | var_a0_3;
            arg0->unk6DEC = temp_a2_5;
            arg0->unk6DE4 = (s32) var_a3;
            var_a4 = temp_a2_5 | 1;
            arg0->unk6DE8 = var_a4;
            if (arg0->unk585 != 0) {
                var_a3 = temp_a2_5 | 2;
                arg0->unk6DEC = (s32) var_a3;
            } else {
                var_a3 = (s64) var_a4;
                arg0->unk6DEC = var_a4;
            }
        } else {
            arg0->unk6DEC = (s32) var_a3;
            arg0->unk6DE8 = (s32) var_a3;
            var_a4 = (s32) var_a3;
            arg0->unk6DE4 = (s32) var_a3;
        }
        if (arg0->unk570 != 0x1D01) {
            arg0->unk6DF0 = 0;
        } else {
            arg0->unk6DF0 = (s32) (var_a4 | var_a3);
        }
        arg0->unk2E54(arg0);
        __glValidateLighting(arg0);
        arg0->unk2E5C(arg0);
        arg0->unk2E58(arg0);
        arg0->unk2E48(arg0);
        arg0->unk2E70(arg0);
        arg0->unk2E6C(arg0);
        arg0->unk2EC4(arg0);
    }
    var_t1 = arg0->unk2E24 & 0x31;
    if (arg0->unk2E24 & 0x25) {
        arg0->unk2E80(arg0);
        arg0->unk2E60(arg0);
        var_t1 = arg0->unk2E24 & 0x31;
    }
    if (var_t1 != 0) {
        arg0->unk2E64(arg0);
        arg0->unk2E68(arg0);
    }
    arg0->unk2E24 = 0;
    arg0->unk2E20 = 0;
}

void __glOdysseySoftClipPickAllProcs(void *arg0, s64 arg2, s64 arg3, s32 arg4, s32 arg5, s64 arg6, s32 arg7) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_a1;
    s32 temp_ra;
    s32 temp_s1;
    s32 var_a4;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a7;
    s64 temp_t1;
    s64 var_a2;
    s64 var_a3;
    s64 var_a6;
    u32 temp_a4;
    u32 var_a2_2;
    u8 temp_at;
    void *var_a3_2;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_a1 = arg0->unk704;
    sp0 = (s64) temp_a1;
    temp_s1 = arg0->unk700;
    temp_at = arg0->unkC94;
    sp18 = temp_at == 0;
    if (temp_at != 0) {
        // Error: negative shift count
        // At instruction: bgez $a2, .L0d9c616c
        if (M2C_ERROR()) {
            var_a3 = (s64) temp_s1 << 0x2D;
            goto block_3;
        }
        // Error: negative shift count
        // At instruction: bltz $t3, .L0d9c5fc8
        if (M2C_ERROR()) {
            var_a3 = (s64) temp_s1 << 0x2D;
            if (M2C_ERROR(/* Read from unset register $t8 */) >= 0) {
                goto block_7;
            }
        }
block_3:
        var_a5 = 0x2402;
        if ((var_a3 >= 0) || (var_a4 = arg0->unk7C0, var_a6 = (s64) temp_s1 << 0x2C, (var_a4 != 0x2402))) {
            // Error: negative shift count
            // At instruction: bgez $a6, .L0d9c5ff0
            if (M2C_ERROR() || (var_a7 = arg0->unk83C, (var_a7 != 0x2402))) {
                goto block_7;
            }
            goto block_22;
        }
block_22:
        sp8 = 1;
    } else {
block_7:
        sp8 = 0;
    }
    __glOdysseyPickAllProcs(arg0, temp_a1, var_a2, var_a3, var_a4, var_a5, var_a6, var_a7);
    temp_t1 = temp_s1 & 0x40;
    var_a5_2 = 0;
    sp10 = temp_t1;
    if (temp_t1 != 0) {
        var_a5_2 = (arg0->unk585 == 0) ? 9 : 0xB;
        if (arg0->unk584 != 0) {
            goto block_10;
        }
        temp_a4 = arg0->unkE04;
        var_a2_2 = 0;
        var_a3_2 = arg0->unk630;
        if (temp_a4 != 0) {
loop_34:
            temp_ra = arg0->unk708 & (1 << var_a2_2);
            var_a2_2 += 1;
            if ((temp_ra != 0) && (var_a3_2->unk4C != 0.0f)) {
block_10:
                var_a5_2 |= 0x10;
            } else {
                var_a3_2 += 0x74;
                if (var_a2_2 < temp_a4) {
                    goto loop_34;
                }
            }
        }
    }
    if (sp0 & 0x1000) {
        var_a5_2 = (sp18 == 0) ? (var_a5_2 | 8) : var_a5_2;
    }
    if (sp8 & 0xFF) {
        var_a5_2 = (sp18 == 0) ? (var_a5_2 | 0x1C) : var_a5_2;
    }
    arg0->unk6DF0 = 0;
    arg0->unk6DEC = 0;
    arg0->unk6DE8 = 0;
    arg0->unk6DE4 = var_a5_2;
    __glOdysseyPickAllProcs(arg0);
    arg0->unk2E48(arg0);
    arg0->unk2E5C(arg0);
    arg0->unk2E70(arg0);
    arg0->unk2E58(arg0);
    arg0->unk2E4C(arg0);
    arg0->unk2E60(arg0);
    arg0->unk2E80(arg0);
    if (sp10 != 0) {
        if (arg0->unkC94 != 0) {
            arg0->unk2F1C = &__glOdysseySoftClipCalcRGBColor;
        } else {
            arg0->unk2F1C = &__glOdysseySoftClipCalcCIColor;
        }
        if (arg0->unk585 != 0) {
            arg0->unk19E9C = &__glOdysseySoftClipFlatShade;
            arg0->unk19E8C = &__glOdysseySoftClipCopyMaterialTwoSided;
            return;
        }
        arg0->unk19E8C = &__glOdysseySoftClipCopyMaterialOneSided;
        /* Duplicate return node #20. Try simplifying control flow for better match */
        arg0->unk19E9C = &__glOdysseySoftClipFlatShade;
        return;
    }
    arg0->unk2F1C = &__glNop;
    arg0->unk19E8C = &__glNop;
    arg0->unk19E9C = &__glOdysseySoftClipFlatShade;
}

void __glOdysseySoftClipPickClipProcs(void *arg0) {
    arg0->unk2F70 = &__glOdysseySoftClipClipTriangle;
    arg0->unk30FC = &__glOdysseySoftClipClipLine;
}

void __glOdysseySoftClipPickClipProcsFast(void *arg0) {
    arg0->unk2F70 = &__glOdysseySoftClipClipTriangleFast;
    arg0->unk30FC = &__glOdysseySoftClipClipLine;
}

void __glOdysseySoftClipPickLineProcs(void *arg0) {
    arg0->unk30F0 = &__glOdysseySoftClipRenderLine;
}

void __glOdysseySoftClipPickPointProcs(void *arg0) {
    arg0->unk3108 = &__glOdysseySoftClipRenderPoint;
}

void __glOdysseySoftClipPickTriangleProcs(void *arg0) {
    arg0->unk2F60 = &__glOdysseySoftClipRenderTriangle;
}

void __glOdysseySoftClipPickTriangleProcsFast(void *arg0) {
    arg0->unk2F60 = &__glOdysseySoftClipRenderTriangleFast;
}

void __glOdysseySoftClipPickTextureProcs(void *arg0) {
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4;

    if (arg0->unkC94 != 0) {
        // Error: negative shift count
        // At instruction: bgez $v1, .L0d9c634c
        if (M2C_ERROR()) {
            var_a4 = 1;
            goto block_3;
        }
        // Error: negative shift count
        // At instruction: bltz $t3, .L0d9c62f4
        if (M2C_ERROR()) {
            var_a4 = 1;
            if (M2C_ERROR(/* Read from unset register $t8 */) >= 0) {
                goto block_13;
            }
        }
block_3:
        // Error: negative shift count
        // At instruction: bgez $a1, .L0d9c630c
        if (M2C_ERROR() || (arg0->unk7C0 != 0x2402)) {
            goto block_5;
        }
        // Error: negative shift count
        // At instruction: bgez $v0, .L0d9c6388
        if (M2C_ERROR() && (arg0->unk83C == 0x2402)) {
            var_a3 = var_a4;
        }
        if (var_a3 & 0xFF) {
            arg0->unk2F14 = &__glOdysseySoftClipCalcSphereMapST;
            return;
        }
        arg0->unk2F14 = &__glOdysseySoftClipCalcSphereMapS;
        return;
    }
block_13:
    var_a4 = 0;
block_5:
    if (!(var_a4 & 0xFF) || (// Error: negative shift count, // At instruction: bgez $a6, .L0d9c6334, M2C_ERROR()) || (arg0->unk83C != 0x2402)) {
        var_a3_2 = 0;
    }
    if (var_a3_2 & 0xFF) {
        arg0->unk2F14 = &__glOdysseySoftClipCalcSphereMapT;
        return;
    }
    arg0->unk2F14 = (? *) M2C_ERROR(/* Read from unset register $t9 */);
}
