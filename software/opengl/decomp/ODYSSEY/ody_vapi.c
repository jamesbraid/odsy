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
Error occurred while processing instruction: bgez $a6, .L0d9db07c

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
Error occurred while processing instruction: bgez $a7, .L0d9db18c

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
Error occurred while processing instruction: bgez $a6, .L0d9db2bc

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
Error occurred while processing instruction: bgez $a7, .L0d9db3d0

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
Error occurred while processing instruction: bgez $t0, .L0d9db4e4

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
Error occurred while processing instruction: bgez $a7, .L0d9db600

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
Error occurred while processing instruction: bgez $t0, .L0d9db718

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
Error occurred while processing instruction: bgez $a7, .L0d9db830

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
Error occurred while processing instruction: bgez $a6, .L0d9db970

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
Error occurred while processing instruction: bgez $a7, .L0d9dba90

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
Error occurred while processing instruction: bgez $a6, .L0d9dbbd0

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
Error occurred while processing instruction: bgez $a7, .L0d9dbcec

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
Error occurred while processing instruction: bgez $t1, .L0d9dbe10

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
Error occurred while processing instruction: bgez $a7, .L0d9dbf20

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
Error occurred while processing instruction: bgez $t1, .L0d9dc040

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
Error occurred while processing instruction: bgez $a7, .L0d9dc150

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
Error occurred while processing instruction: bgez $a6, .L0d9dc2b0

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
Error occurred while processing instruction: bgez $a7, .L0d9dc3d0

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
Error occurred while processing instruction: bgez $a6, .L0d9dc540

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
Error occurred while processing instruction: bgez $a7, .L0d9dc664

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
Error occurred while processing instruction: bgez $t2, .L0d9dc79c

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
Error occurred while processing instruction: bgez $a7, .L0d9dc8b4

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
Error occurred while processing instruction: bgez $t2, .L0d9dc9ec

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
Error occurred while processing instruction: bgez $a7, .L0d9dcb04

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
Error occurred while processing instruction: bgez $a6, .L0d9db07c

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
Error occurred while processing instruction: bgez $a7, .L0d9db18c

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
Error occurred while processing instruction: bgez $a6, .L0d9db2bc

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
Error occurred while processing instruction: bgez $a7, .L0d9db3d0

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
Error occurred while processing instruction: bgez $t0, .L0d9db4e4

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
Error occurred while processing instruction: bgez $a7, .L0d9db600

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
Error occurred while processing instruction: bgez $t0, .L0d9db718

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
Error occurred while processing instruction: bgez $a7, .L0d9db830

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
Error occurred while processing instruction: bgez $a6, .L0d9db970

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
Error occurred while processing instruction: bgez $a7, .L0d9dba90

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
Error occurred while processing instruction: bgez $a6, .L0d9dbbd0

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
Error occurred while processing instruction: bgez $a7, .L0d9dbcec

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
Error occurred while processing instruction: bgez $t1, .L0d9dbe10

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
Error occurred while processing instruction: bgez $a7, .L0d9dbf20

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
Error occurred while processing instruction: bgez $t1, .L0d9dc040

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
Error occurred while processing instruction: bgez $a7, .L0d9dc150

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
Error occurred while processing instruction: bgez $a6, .L0d9dc2b0

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
Error occurred while processing instruction: bgez $a7, .L0d9dc3d0

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
Error occurred while processing instruction: bgez $a6, .L0d9dc540

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
Error occurred while processing instruction: bgez $a7, .L0d9dc664

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
Error occurred while processing instruction: bgez $t2, .L0d9dc79c

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
Error occurred while processing instruction: bgez $a7, .L0d9dc8b4

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
Error occurred while processing instruction: bgez $t2, .L0d9dc9ec

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
Error occurred while processing instruction: bgez $a7, .L0d9dcb04

? __glOdyim_Vertex2d(?, f64);                       /* extern */
? __glOdyim_Vertex2d_mag(?, f64);                   /* extern */
? __glOdyim_Vertex2dv(s64);                         /* extern */
? __glOdyim_Vertex2dv_mag(s64);                     /* extern */
? __glOdyim_Vertex2dv_mag_line0(s64);               /* extern */
? __glOdyim_Vertex2f(s64, f64);                     /* extern */
? __glOdyim_Vertex2f_mag(s64, f64);                 /* extern */
? __glOdyim_Vertex2fv(s64);                         /* extern */
? __glOdyim_Vertex2fv_mag(s64);                     /* extern */
? __glOdyim_Vertex2i(s64, f64);                     /* extern */
? __glOdyim_Vertex2i_mag(s64, f64);                 /* extern */
? __glOdyim_Vertex2i_mag_line0(s64, f64);           /* extern */
? __glOdyim_Vertex2iv(s64);                         /* extern */
? __glOdyim_Vertex2iv_mag(s64);                     /* extern */
? __glOdyim_Vertex2s(s64, f64);                     /* extern */
? __glOdyim_Vertex2s_mag(s64, f64);                 /* extern */
? __glOdyim_Vertex2sv(s64);                         /* extern */
? __glOdyim_Vertex2sv_mag(s64);                     /* extern */
? __glOdyim_Vertex3d(?, f64, f64, ?);               /* extern */
? __glOdyim_Vertex3d_mag(?, f64, f64, ?);           /* extern */
? __glOdyim_Vertex3d_mag_line0(?, f64, f64, ?);     /* extern */
? __glOdyim_Vertex3dv(s64);                         /* extern */
? __glOdyim_Vertex3dv_mag(s64);                     /* extern */
? __glOdyim_Vertex3f(s64, f64, f64);                /* extern */
? __glOdyim_Vertex3f_mag(s64, f64, f64);            /* extern */
? __glOdyim_Vertex3f_mag_line0(s64, f64, f64);      /* extern */
? __glOdyim_Vertex3fv(s64);                         /* extern */
? __glOdyim_Vertex3fv_mag(s64);                     /* extern */
? __glOdyim_Vertex3fv_mag_line0(s64);               /* extern */
? __glOdyim_Vertex3i(s64, f64, f64);                /* extern */
? __glOdyim_Vertex3i_mag(s64, f64, f64);            /* extern */
? __glOdyim_Vertex3iv(s64);                         /* extern */
? __glOdyim_Vertex3iv_mag(s64);                     /* extern */
? __glOdyim_Vertex3s(s64, f64, f64);                /* extern */
? __glOdyim_Vertex3s_mag(s64, f64, f64);            /* extern */
? __glOdyim_Vertex3sv(s64);                         /* extern */
? __glOdyim_Vertex3sv_mag(s64);                     /* extern */
? __glOdyim_Vertex4d(?, f64, ?, f64);               /* extern */
? __glOdyim_Vertex4d_mag(?, f64, ?, f64);           /* extern */
? __glOdyim_Vertex4d_mag_line0(?, f64, ?, f64);     /* extern */
? __glOdyim_Vertex4d_smallw(?, f64, ?, f64);        /* extern */
? __glOdyim_Vertex4dv(s64);                         /* extern */
? __glOdyim_Vertex4dv_mag(s64);                     /* extern */
? __glOdyim_Vertex4dv_mag_line0(s64);               /* extern */
? __glOdyim_Vertex4dv_smallw(s64);                  /* extern */
? __glOdyim_Vertex4f(f64, f64, f64, f64);           /* extern */
? __glOdyim_Vertex4f_mag(f64, f64, f64, f64);       /* extern */
? __glOdyim_Vertex4f_mag_line0(f64, f64, f64, f64); /* extern */
? __glOdyim_Vertex4f_smallw(f64, f64, f64, f64);    /* extern */
? __glOdyim_Vertex4fv(s64);                         /* extern */
? __glOdyim_Vertex4fv_mag(s64);                     /* extern */
? __glOdyim_Vertex4fv_smallw(s64);                  /* extern */
? __glOdyim_Vertex4i(s64, f64, f64, s64);           /* extern */
? __glOdyim_Vertex4i_mag(s64, f64, f64, s64);       /* extern */
? __glOdyim_Vertex4i_smallw(s64, f64, f64, s64);    /* extern */
? __glOdyim_Vertex4iv(s64);                         /* extern */
? __glOdyim_Vertex4iv_mag(s64);                     /* extern */
? __glOdyim_Vertex4iv_smallw(s64);                  /* extern */
? __glOdyim_Vertex4s(s64, f64, f64, s64);           /* extern */
? __glOdyim_Vertex4s_mag(s64, f64, f64, s64);       /* extern */
? __glOdyim_Vertex4s_smallw(s64, f64, f64, s64);    /* extern */
? __glOdyim_Vertex4sv(s64);                         /* extern */
? __glOdyim_Vertex4sv_mag(s64);                     /* extern */
? __glOdyim_Vertex4sv_smallw(s64);                  /* extern */
? sub_0d9e0000(s64, f64, f64, s64);                 /* extern */
extern s32 HQ2_READ_FIFO;

void __glOdyim_EdgeFlag(s32 arg0) {
    HQ2_READ_FIFO = (arg0 == 0) ? 0x3000C02E : 0x2F00C02E;
}

void __glOdyim_EdgeFlagv(u8 *arg0) {
    HQ2_READ_FIFO = (*arg0 == 0) ? 0x3000C02E : 0x2F00C02E;
}

void AfterIgloo(void) {
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if (temp_s0->unkC94 != 0) {
        temp_s0->unk17F4->unk80(0x404, 0x1200, temp_s0 + 0x19DE8);
        temp_s0->unk17F4->unk80(0x404, 0x1201, temp_s0 + 0x19DF8);
        temp_s0->unk17F4->unk80(0x404, 0x1202, temp_s0 + 0x19E08);
        temp_s0->unk17F4->unk80(0x404, 0x1600, temp_s0 + 0x19E18);
        temp_s0->unk17F4->unk80(0x405, 0x1200, temp_s0 + 0x19E38);
        temp_s0->unk17F4->unk80(0x405, 0x1201, temp_s0 + 0x19E48);
        temp_s0->unk17F4->unk80(0x405, 0x1202, temp_s0 + 0x19E58);
        temp_s0->unk17F4->unk80(0x405, 0x1600, temp_s0 + 0x19E68);
        temp_s0->unk19E88 = 0;
    }
}

/*
Decompilation failure in function BeforeIgloo:

Unable to determine jump table for jr instruction at ody_vapi.s line 372.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x20, 0x24], gap at: 0x18. */
void __glOdyim_IglooVertex2d(f64 fparg0, f64 fparg1) {
    f64 var_f4;
    s32 temp_a1;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    var_f4 = second half of f64;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = fparg0;
        unksp18 = fparg1;
        __glOdyim_EdgeFlagv((u8 *)3);
        var_f4 = second half of f64;
    }
    temp_a1 = temp_s0->unk19DBC;
    switch (temp_a1) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $a6, .L0d9db07c
        if (M2C_ERROR()) {
            __glOdyim_Vertex2d_mag(second half of f64, var_f4);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(second half of f64, var_f4);
        }
        break;
    case 0:
    case 1:
        __glOdyim_Vertex2d(second half of f64, var_f4);
        break;
    case 2:
        sub_0d9e0000(second half of f64, var_f4);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

void __glOdyim_IglooVertex2dv(s64 arg0) {
    s32 temp_a2;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = arg0;
        __glOdyim_EdgeFlagv((u8 *)3);
    }
    temp_a2 = temp_s0->unk19DBC;
    switch (temp_a2) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $a7, .L0d9db18c
        if (M2C_ERROR()) {
            __glOdyim_Vertex2dv_mag(arg0);
        } else {
            __glOdyim_Vertex2dv_mag_line0(arg0);
        }
        break;
    case 0:
    case 1:
        __glOdyim_Vertex2dv(arg0);
        break;
    case 2:
        sub_0d9e0000(arg0);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x20, 0x24], gap at: 0x18. */
void __glOdyim_IglooVertex2f(f64 fparg0, f64 fparg1) {
    f64 var_f4;
    f64 var_f5;
    s32 temp_a1;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    var_f4 = fparg1;
    var_f5 = fparg0;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = fparg0;
        unksp18 = fparg1;
        __glOdyim_EdgeFlagv((u8 *)3);
        var_f5 = unksp10;
        var_f4 = second half of f64;
    }
    temp_a1 = temp_s0->unk19DBC;
    switch (temp_a1) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $a6, .L0d9db2bc
        if (M2C_ERROR()) {
            __glOdyim_Vertex2f_mag((bitwise s64) var_f5, var_f4);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(var_f5, var_f4);
        }
        break;
    case 0:
    case 1:
        __glOdyim_Vertex2f((bitwise s64) var_f5, var_f4);
        break;
    case 2:
        sub_0d9e0000((bitwise s64) var_f5, var_f4);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

void __glOdyim_IglooVertex2fv(s64 arg0) {
    s32 temp_a2;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = arg0;
        __glOdyim_EdgeFlagv((u8 *)3);
    }
    temp_a2 = temp_s0->unk19DBC;
    switch (temp_a2) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $a7, .L0d9db3d0
        if (M2C_ERROR()) {
            __glOdyim_Vertex2fv_mag(arg0);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(arg0);
        }
        break;
    case 0:
    case 1:
        __glOdyim_Vertex2fv(arg0);
        break;
    case 2:
        sub_0d9e0000(arg0);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x20, 0x24], gap at: 0x18. */
void __glOdyim_IglooVertex2i(s64 arg0, s64 arg1) {
    s32 temp_a3;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = arg0;
        unksp18 = arg1;
        __glOdyim_EdgeFlagv((u8 *)3);
    }
    temp_a3 = temp_s0->unk19DBC;
    switch (temp_a3) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $t0, .L0d9db4e4
        if (M2C_ERROR()) {
            __glOdyim_Vertex2i_mag(arg0, (bitwise f64) arg1);
        } else {
            __glOdyim_Vertex2i_mag_line0(arg0, (bitwise f64) arg1);
        }
        break;
    case 0:
    case 1:
        __glOdyim_Vertex2i(arg0, (bitwise f64) arg1);
        break;
    case 2:
        sub_0d9e0000(arg0, (bitwise f64) arg1);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

void __glOdyim_IglooVertex2iv(s64 arg0) {
    s32 temp_a2;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = arg0;
        __glOdyim_EdgeFlagv((u8 *)3);
    }
    temp_a2 = temp_s0->unk19DBC;
    switch (temp_a2) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $a7, .L0d9db600
        if (M2C_ERROR()) {
            __glOdyim_Vertex2iv_mag(arg0);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(arg0);
        }
        break;
    case 0:
    case 1:
        __glOdyim_Vertex2iv(arg0);
        break;
    case 2:
        sub_0d9e0000(arg0);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x20, 0x24], gap at: 0x18. */
void __glOdyim_IglooVertex2s(s64 arg0, s64 arg1) {
    s32 temp_a3;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = arg0;
        unksp18 = arg1;
        __glOdyim_EdgeFlagv((u8 *)3);
    }
    temp_a3 = temp_s0->unk19DBC;
    switch (temp_a3) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $t0, .L0d9db718
        if (M2C_ERROR()) {
            __glOdyim_Vertex2s_mag(arg0, (bitwise f64) arg1);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(arg0, arg1);
        }
        break;
    case 0:
    case 1:
        __glOdyim_Vertex2s(arg0, (bitwise f64) arg1);
        break;
    case 2:
        sub_0d9e0000(arg0, (bitwise f64) arg1);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

void __glOdyim_IglooVertex2sv(s64 arg0) {
    s32 temp_a2;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = arg0;
        __glOdyim_EdgeFlagv((u8 *)3);
    }
    temp_a2 = temp_s0->unk19DBC;
    switch (temp_a2) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $a7, .L0d9db830
        if (M2C_ERROR()) {
            __glOdyim_Vertex2sv_mag(arg0);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(arg0);
        }
        break;
    case 0:
    case 1:
        __glOdyim_Vertex2sv(arg0);
        break;
    case 2:
        sub_0d9e0000(arg0);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x28, 0x2c], gap at: 0x18. */
void __glOdyim_IglooVertex3d(f64 fparg0, f64 fparg1, f64 fparg2) {
    f64 var_f4;
    f64 var_f5;
    s32 temp_a1;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    var_f5 = fparg1;
    var_f4 = second half of f64;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = fparg0;
        unksp18 = fparg1;
        unksp20 = fparg2;
        __glOdyim_EdgeFlagv((u8 *)3);
        var_f5 = unksp18;
        var_f4 = second half of f64;
    }
    temp_a1 = temp_s0->unk19DBC;
    switch (temp_a1) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $a6, .L0d9db970
        if (M2C_ERROR()) {
            __glOdyim_Vertex3d_mag(second half of f64, var_f5, var_f4, second half of f64);
        } else {
            __glOdyim_Vertex3d_mag_line0(second half of f64, var_f5, var_f4, second half of f64);
        }
        break;
    case 0:
    case 1:
        __glOdyim_Vertex3d(second half of f64, var_f5, var_f4, second half of f64);
        break;
    case 2:
        sub_0d9e0000(second half of f64, var_f5, var_f4, second half of f64);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

void __glOdyim_IglooVertex3dv(s64 arg0) {
    s32 temp_a2;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = arg0;
        __glOdyim_EdgeFlagv((u8 *)3);
    }
    temp_a2 = temp_s0->unk19DBC;
    switch (temp_a2) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $a7, .L0d9dba90
        if (M2C_ERROR()) {
            __glOdyim_Vertex3dv_mag(arg0);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(arg0);
        }
        break;
    case 0:
    case 1:
        __glOdyim_Vertex3dv(arg0);
        break;
    case 2:
        sub_0d9e0000(arg0);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x28, 0x2c], gap at: 0x18. */
void __glOdyim_IglooVertex3f(f64 fparg0, f64 fparg1, f64 fparg2) {
    f64 var_f4;
    f64 var_f5;
    f64 var_f6;
    s32 temp_a1;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    var_f4 = fparg2;
    var_f5 = fparg1;
    var_f6 = fparg0;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = fparg0;
        unksp18 = fparg1;
        unksp20 = fparg2;
        __glOdyim_EdgeFlagv((u8 *)3);
        var_f5 = unksp18;
        var_f4 = second half of f64;
        var_f6 = unksp10;
    }
    temp_a1 = temp_s0->unk19DBC;
    switch (temp_a1) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $a6, .L0d9dbbd0
        if (M2C_ERROR()) {
            __glOdyim_Vertex3f_mag((bitwise s64) var_f6, var_f5, var_f4);
        } else {
            __glOdyim_Vertex3f_mag_line0((bitwise s64) var_f6, var_f5, var_f4);
        }
        break;
    case 0:
    case 1:
        __glOdyim_Vertex3f((bitwise s64) var_f6, var_f5, var_f4);
        break;
    case 2:
        sub_0d9e0000((bitwise s64) var_f6, var_f5, var_f4);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

void __glOdyim_IglooVertex3fv(s64 arg0) {
    s32 temp_a2;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = arg0;
        __glOdyim_EdgeFlagv((u8 *)3);
    }
    temp_a2 = temp_s0->unk19DBC;
    switch (temp_a2) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $a7, .L0d9dbcec
        if (M2C_ERROR()) {
            __glOdyim_Vertex3fv_mag(arg0);
        } else {
            __glOdyim_Vertex3fv_mag_line0(arg0);
        }
        break;
    case 0:
    case 1:
        __glOdyim_Vertex3fv(arg0);
        break;
    case 2:
        sub_0d9e0000(arg0);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x28, 0x2c], gap at: 0x18. */
void __glOdyim_IglooVertex3i(s64 arg0, s64 arg1, s64 arg2) {
    s32 temp_a4;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = arg0;
        unksp18 = arg1;
        unksp20 = arg2;
        __glOdyim_EdgeFlagv((u8 *)3);
    }
    temp_a4 = temp_s0->unk19DBC;
    switch (temp_a4) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $t1, .L0d9dbe10
        if (M2C_ERROR()) {
            __glOdyim_Vertex3i_mag(arg0, (bitwise f64) arg1, (bitwise f64) arg2);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(arg0, arg1, arg2);
        }
        break;
    case 0:
    case 1:
        __glOdyim_Vertex3i(arg0, (bitwise f64) arg1, (bitwise f64) arg2);
        break;
    case 2:
        sub_0d9e0000(arg0, (bitwise f64) arg1, (bitwise f64) arg2);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

void __glOdyim_IglooVertex3iv(s64 arg0) {
    s32 temp_a2;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = arg0;
        __glOdyim_EdgeFlagv((u8 *)3);
    }
    temp_a2 = temp_s0->unk19DBC;
    switch (temp_a2) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $a7, .L0d9dbf20
        if (M2C_ERROR()) {
            __glOdyim_Vertex3iv_mag(arg0);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(arg0);
        }
        break;
    case 0:
    case 1:
        __glOdyim_Vertex3iv(arg0);
        break;
    case 2:
        sub_0d9e0000(arg0);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x28, 0x2c], gap at: 0x18. */
void __glOdyim_IglooVertex3s(s64 arg0, s64 arg1, s64 arg2) {
    s32 temp_a4;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = arg0;
        unksp18 = arg1;
        unksp20 = arg2;
        __glOdyim_EdgeFlagv((u8 *)3);
    }
    temp_a4 = temp_s0->unk19DBC;
    switch (temp_a4) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $t1, .L0d9dc040
        if (M2C_ERROR()) {
            __glOdyim_Vertex3s_mag(arg0, (bitwise f64) arg1, (bitwise f64) arg2);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(arg0, arg1, arg2);
        }
        break;
    case 0:
    case 1:
        __glOdyim_Vertex3s(arg0, (bitwise f64) arg1, (bitwise f64) arg2);
        break;
    case 2:
        sub_0d9e0000(arg0, (bitwise f64) arg1, (bitwise f64) arg2);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

void __glOdyim_IglooVertex3sv(s64 arg0) {
    s32 temp_a2;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = arg0;
        __glOdyim_EdgeFlagv((u8 *)3);
    }
    temp_a2 = temp_s0->unk19DBC;
    switch (temp_a2) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $a7, .L0d9dc150
        if (M2C_ERROR()) {
            __glOdyim_Vertex3sv_mag(arg0);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(arg0);
        }
        break;
    case 0:
    case 1:
        __glOdyim_Vertex3sv(arg0);
        break;
    case 2:
        sub_0d9e0000(arg0);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x30, 0x34], gap at: 0x18. */
void __glOdyim_IglooVertex4d(f64 fparg0, f64 fparg1, f64 fparg2, f64 fparg3) {
    f64 var_f5;
    f64 var_f6;
    s32 temp_a1;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    var_f5 = second half of f64;
    var_f6 = second half of f64;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = fparg0;
        unksp18 = fparg1;
        unksp20 = fparg3;
        unksp28 = fparg2;
        __glOdyim_EdgeFlagv((u8 *)3);
        var_f5 = unksp20;
        var_f6 = second half of f64;
    }
    temp_a1 = temp_s0->unk19DBC;
    switch (temp_a1) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $a6, .L0d9dc2b0
        if (M2C_ERROR()) {
            __glOdyim_Vertex4d_mag(second half of f64, var_f6, second half of f64, var_f5);
        } else {
            __glOdyim_Vertex4d_mag_line0(second half of f64, var_f6, second half of f64, var_f5);
        }
        break;
    case 1:
    case 2:
        __glOdyim_Vertex4d_smallw(second half of f64, var_f6, second half of f64, var_f5);
        break;
    case 0:
        __glOdyim_Vertex4d(second half of f64, var_f6, second half of f64, var_f5);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

void __glOdyim_IglooVertex4dv(s64 arg0) {
    s32 temp_a2;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = arg0;
        __glOdyim_EdgeFlagv((u8 *)3);
    }
    temp_a2 = temp_s0->unk19DBC;
    switch (temp_a2) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $a7, .L0d9dc3d0
        if (M2C_ERROR()) {
            __glOdyim_Vertex4dv_mag(arg0);
        } else {
            __glOdyim_Vertex4dv_mag_line0(arg0);
        }
        break;
    case 1:
    case 2:
        __glOdyim_Vertex4dv_smallw(arg0);
        break;
    case 0:
        __glOdyim_Vertex4dv(arg0);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x30, 0x34], gap at: 0x18. */
void __glOdyim_IglooVertex4f(f64 fparg0, f64 fparg1, f64 fparg2, f64 fparg3) {
    f64 var_f4;
    f64 var_f5;
    f64 var_f6;
    f64 var_f7;
    s32 temp_a1;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    var_f5 = fparg3;
    var_f4 = fparg2;
    var_f6 = fparg1;
    var_f7 = fparg0;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = fparg0;
        unksp18 = fparg1;
        unksp20 = fparg3;
        unksp28 = fparg2;
        __glOdyim_EdgeFlagv((u8 *)3);
        var_f5 = unksp20;
        var_f4 = second half of f64;
        var_f7 = unksp10;
        var_f6 = second half of f64;
    }
    temp_a1 = temp_s0->unk19DBC;
    switch (temp_a1) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $a6, .L0d9dc540
        if (M2C_ERROR()) {
            __glOdyim_Vertex4f_mag(var_f7, var_f6, var_f4, var_f5);
        } else {
            __glOdyim_Vertex4f_mag_line0(var_f7, var_f6, var_f4, var_f5);
        }
        break;
    case 1:
    case 2:
        __glOdyim_Vertex4f_smallw(var_f7, var_f6, var_f4, var_f5);
        break;
    case 0:
        __glOdyim_Vertex4f(var_f7, var_f6, var_f4, var_f5);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

void __glOdyim_IglooVertex4fv(s64 arg0) {
    s32 temp_a2;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = arg0;
        __glOdyim_EdgeFlagv((u8 *)3);
    }
    temp_a2 = temp_s0->unk19DBC;
    switch (temp_a2) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $a7, .L0d9dc664
        if (M2C_ERROR()) {
            __glOdyim_Vertex4fv_mag(arg0);
        } else {
            sub_0d9e0000(arg0);
        }
        break;
    case 1:
    case 2:
        __glOdyim_Vertex4fv_smallw(arg0);
        break;
    case 0:
        __glOdyim_Vertex4fv(arg0);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x30, 0x34], gap at: 0x18. */
void __glOdyim_IglooVertex4i(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s32 temp_a5;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = arg0;
        unksp18 = arg3;
        unksp20 = arg1;
        unksp28 = arg2;
        __glOdyim_EdgeFlagv((u8 *)3);
    }
    temp_a5 = temp_s0->unk19DBC;
    switch (temp_a5) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $t2, .L0d9dc79c
        if (M2C_ERROR()) {
            __glOdyim_Vertex4i_mag(arg0, (bitwise f64) arg1, (bitwise f64) arg2, arg3);
        } else {
            sub_0d9e0000(arg0, (bitwise f64) arg1, (bitwise f64) arg2, arg3);
        }
        break;
    case 1:
    case 2:
        __glOdyim_Vertex4i_smallw(arg0, (bitwise f64) arg1, (bitwise f64) arg2, arg3);
        break;
    case 0:
        __glOdyim_Vertex4i(arg0, (bitwise f64) arg1, (bitwise f64) arg2, arg3);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

void __glOdyim_IglooVertex4iv(s64 arg0) {
    s32 temp_a2;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = arg0;
        __glOdyim_EdgeFlagv((u8 *)3);
    }
    temp_a2 = temp_s0->unk19DBC;
    switch (temp_a2) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $a7, .L0d9dc8b4
        if (M2C_ERROR()) {
            __glOdyim_Vertex4iv_mag(arg0);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(arg0);
        }
        break;
    case 1:
    case 2:
        __glOdyim_Vertex4iv_smallw(arg0);
        break;
    case 0:
        __glOdyim_Vertex4iv(arg0);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x30, 0x34], gap at: 0x18. */
void __glOdyim_IglooVertex4s(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s32 temp_a5;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = arg0;
        unksp18 = arg3;
        unksp20 = arg1;
        unksp28 = arg2;
        __glOdyim_EdgeFlagv((u8 *)3);
    }
    temp_a5 = temp_s0->unk19DBC;
    switch (temp_a5) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $t2, .L0d9dc9ec
        if (M2C_ERROR()) {
            __glOdyim_Vertex4s_mag(arg0, (bitwise f64) arg1, (bitwise f64) arg2, arg3);
        } else {
            sub_0d9e0000(arg0, (bitwise f64) arg1, (bitwise f64) arg2, arg3);
        }
        break;
    case 1:
    case 2:
        __glOdyim_Vertex4s_smallw(arg0, (bitwise f64) arg1, (bitwise f64) arg2, arg3);
        break;
    case 0:
        __glOdyim_Vertex4s(arg0, (bitwise f64) arg1, (bitwise f64) arg2, arg3);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}

void __glOdyim_IglooVertex4sv(s64 arg0) {
    s32 temp_a2;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    if ((3 & temp_s0->unk7B40) == 3) {
        unksp10 = arg0;
        __glOdyim_EdgeFlagv((u8 *)3);
    }
    temp_a2 = temp_s0->unk19DBC;
    switch (temp_a2) {                              /* irregular */
    case 3:
        // Error: negative shift count
        // At instruction: bgez $a7, .L0d9dcb04
        if (M2C_ERROR()) {
            __glOdyim_Vertex4sv_mag(arg0);
        } else {
            sub_0d9e0000(arg0);
        }
        break;
    case 1:
    case 2:
        __glOdyim_Vertex4sv_smallw(arg0);
        break;
    case 0:
        __glOdyim_Vertex4sv(arg0);
        break;
    }
    if ((3 & temp_s0->unk7B40) == 3) {
        __glOdyim_EdgeFlagv();
    }
}
