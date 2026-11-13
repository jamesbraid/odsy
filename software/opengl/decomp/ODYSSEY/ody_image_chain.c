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
Error occurred while processing instruction: bltz $a5, .L0d98eda8

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
Error occurred while processing instruction: bgez $at, .L0d98fa5c

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
Error occurred while processing instruction: bgez $a1, .L0d990134

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
Error occurred while processing instruction: bgez $a4, .L0d99016c

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
Error occurred while processing instruction: bgez $a1, .L0d9909d4

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
Error occurred while processing instruction: bltz $a4, .L0d99b2d4

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
Error occurred while processing instruction: bgez $a0, .L0d9a0ee4

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
Error occurred while processing instruction: bltz $t8, .L0d9a0cac

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
Error occurred while processing instruction: bltz $t1, .L0d9a2500

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
Error occurred while processing instruction: bltz $a2, .L0d9a2860

Error occurred while processing instruction: c.eq.d $f27, $f29

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
Error occurred while processing instruction: bltz $t9, .L0d9a2cf8

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
Error occurred while processing instruction: bgez $a0, .L0d9a47e4

Error occurred while processing instruction: c.lt.d $f1, $f29

Error occurred while processing instruction: c.lt.d $f17, $f11

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
Error occurred while processing instruction: bgez $at, .L0d9a6144

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
Error occurred while processing instruction: bltz $a5, .L0d98eda8

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
Error occurred while processing instruction: bgez $at, .L0d98fa5c

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
Error occurred while processing instruction: bgez $a1, .L0d990134

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
Error occurred while processing instruction: bgez $a4, .L0d99016c

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
Error occurred while processing instruction: bgez $a1, .L0d9909d4

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
Error occurred while processing instruction: bltz $a4, .L0d99b2d4

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
Error occurred while processing instruction: bgez $a0, .L0d9a0ee4

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
Error occurred while processing instruction: bltz $t8, .L0d9a0cac

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
Error occurred while processing instruction: bltz $t1, .L0d9a2500

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
Error occurred while processing instruction: bltz $a2, .L0d9a2860

Error occurred while processing instruction: c.eq.d $f27, $f29

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
Error occurred while processing instruction: bltz $t9, .L0d9a2cf8

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
Error occurred while processing instruction: bgez $a0, .L0d9a47e4

Error occurred while processing instruction: c.lt.d $f1, $f29

Error occurred while processing instruction: c.lt.d $f17, $f11

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
Error occurred while processing instruction: bgez $at, .L0d9a6144

Tried to use a double-precision instruction with odd-numbered float register $f29
Tried to use a double-precision instruction with odd-numbered float register $f29
Tried to use a double-precision instruction with odd-numbered float register $f11
Tried to use a double-precision instruction with odd-numbered float register $f29
Tried to use a double-precision instruction with odd-numbered float register $f29
Tried to use a double-precision instruction with odd-numbered float register $f11
? __glOdysseyClear(void *, s64);                    /* extern */
s32 __glOdysseyClosePMObjReference(s64, s32, ?, ?, s32, s32, ?, s64); /* extern */
s32 __glOdysseyClosePMObjWriteReference(void *, s64, s64); /* extern */
? __glOdysseyGenericConvolution(s32, void *, s64);  /* extern */
? __glOdysseyHistogramMinMax(void *, s64, s64, s32, s32, s32); /* extern */
? __glOdysseyImageCalcPixelModeFields(void *, s64, s32, s32, ?, ?, s32, ?); /* extern */
s32 __glOdysseyImageCalcSuitableHostFormatForDownload(s32, s32, s32, s32 *, s32 *, ?, s32, ?); /* extern */
? __glOdysseyImageCalcXferReadParams(s32, s32, f32 *, u8 *, f32); /* extern */
? __glOdysseyImageCalcXferWriteParams(s32, s32, s32, u8 *, s64, ?); /* extern */
? __glOdysseyImageConvertHostImage(f32 *, s32 *, s8 *, s32 *, f32 *, f32 *, u8, s32, f32); /* extern */
f32 __glOdysseyImageMovePixelsCopy(f32 *, f32 *, s64, ?, ?, s64, s32, s64, f32, f64, f32, f32, f32, f32, f32, f32); /* extern */
? __glOdysseyImageMovePixelsDMAtoGfx(f32 *, f32 *, s64, s32, ?, s64, s32, s64, f32, f32); /* extern */
? __glOdysseyImageMovePixelsDMAtoHost(s64, s64, f32 *, f32, f32, f32, f32, u64); /* extern */
? __glOdysseyImageMovePixelsTexture(f32 *, f32 *, s64, ?, s32, s64, s32, s64, f64, ?); /* extern */
? __glOdysseyImageZoomHostImage(s64 *, s32 *, f32 *, s32 *); /* extern */
? __glOdysseyInitLerpTree(s32);                     /* extern */
? __glOdysseyMap1DFilterToAlphas(s32, void *, s64, s32, f32, f32, f32, f32, f32); /* extern */
s32 __glOdysseyOpenPMObjReference(s64, s32, ?, ?, s32 *, ?, void *, void *); /* extern */
s32 __glOdysseyOpenPMObjWriteReference(void *, s64, s64, s32 *, ?, s32, s32, s32); /* extern */
? __glOdysseyProgramTexFilter(void *, void *, f32 *, void *, void *, void *, void *, void *, f32, f32, f32, f32, f32, f32, f32, f32); /* extern */
? __glOdysseyReconstructFromResidue(s32, s32, s32, s32, s64, s32, f32, f32); /* extern */
? __glSetError(?);                                  /* extern */
s32 __glSpecBytesPerElement(s32);                   /* extern */
s32 __glSpecElementsPerGroup(s32, s32);             /* extern */
f64 ceil(f64, s32, s64 *, f64, f64, s64, f64, s64, s32, s64, s32, s64, s64, s32, s32, s64, s64, s32); /* extern */
f64 ceilf(f32, ? **, ? **, f32, f32, ? **, s32, f32, f32, f32, f32, f32, f32, f32, f32, f32); /* extern */
f32 floorf(s64, f32, f32, f32, void *, f32, f32, f32, f32, f32); /* extern */
? memset(void *, u8 *, ?);                          /* extern */
f32 powf(f32, f32, f32);                            /* extern */
s64 sub_0d990000(f32 *, f32 *, s32, s64, void *);   /* extern */
s32 sub_0d9a0000(f32 *, s32, s32, s32, f32 *, s32, s32, s32, f32, f32, f32, f32, f32, f32, f32, f32); /* extern */
s32 __glOdysseyClearScratchBuffer(f32 *arg0, f32 *arg1, f32 *, f32 *, ?, u8, f64, u8, f64); /* static */
s32 __glOdysseyImageChainAddOpAcceptSignedDataFromHost(? **arg0, s64 arg1, s32 arg2, f32 arg3, f32, ? **, s32, f32, f32, f32, f32, f32, f32, f32, f32, f32); /* static */
s32 __glOdysseyImageChainFree(f32 *arg0, s64, f32 *, s32, f32 *, u8, u8, u64, f32); /* static */
s32 __glOdysseyRenderFunc_DownloadColor(void *arg0, s64 arg1); /* static */
extern s32 HQ2_READ_FIFO;
extern ? __glOdyim_SoftIndexs;
extern ? __glOdyim_SoftIndexsv;
extern ? __glOdyim_SoftIndexub;
extern ? __glOdyim_SoftIndexubv;
extern ? __glOdyim_SoftScratchColor3b;
extern ? __glOdyim_SoftScratchColor3bv;
extern ? __glOdyim_SoftScratchColor3d;
extern ? __glOdyim_SoftScratchColor3dv;
extern ? __glOdyim_SoftScratchColor3f;
extern ? __glOdyim_SoftScratchColor4uiv;
extern ? __glOdyim_SoftScratchColor4us;
extern ? __glOdyim_SoftScratchColor4usv;
extern ? __glOdysseySoftClipClipLine;
extern ? __glim_Color4b;
extern ? __glim_Color4bv;
extern ? __glim_Color4d;
extern ? __glim_Color4ubv;

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x38, 0x3c, 0x60, 0x64, 0x68, 0x6c, 0x70, 0x74], gap at: 0x48. */
f32 *__glOdysseyImageChainCreate(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp30;
    s8 sp21;
    s8 sp20;
    u8 sp18;
    u8 sp0;
    f32 *temp_v0;
    f32 temp_f4;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a2;
    s32 temp_a5;
    s32 var_a0;
    s32 var_a2;
    s32 var_a2_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a1;
    void *temp_at;
    void *temp_s1;
    void *temp_v0_2;
    void *var_v0;

    unksp50 = arg3;
    unksp58 = arg2;
    temp_s1 = *(void **)0x1010;
    unksp48 = arg1;
    unksp40 = arg0;
    temp_v0 = temp_s1->unk0(temp_s1, 0x1C);
    if (temp_v0 != NULL) {
        temp_v0->unk10 = 0;
        temp_v0->unkC = 0;
        temp_v0->unk8 = 0;
        temp_v0->unk4 = NULL;
        temp_v0->unk0 = 0.0f;
        temp_v0->unk18 = (s32) unksp40;
        temp_v0->unk14 = (s32) unksp48;
        __glOdysseyImageChainFree(temp_v0, unksp50);
        if (__glOdysseyImageChainFree(temp_v0, unksp58) & 0xFF) {
            var_v0 = temp_v0->unk4;
            var_a2 = 0;
            if (var_v0 != NULL) {
                var_a0 = 0;
loop_7:
                temp_a1 = var_v0->unk44;
                if (temp_a1->unk0 != 0) {
                    if (temp_a1->unk38 == 0) {
                        temp_a0 = var_a0 & 1;
                        temp_a5 = (temp_s1 + (temp_a0 * 4))->unkA70C;
                        var_a0 = temp_a0 + 1;
                        temp_a1->unk2C = temp_a5;
                    } else {
                        temp_a2 = var_a2 & 1;
                        temp_at = temp_s1 + (temp_a2 * 0xC);
                        temp_a1->unk10 = (s32) temp_at->unkA6F4;
                        temp_a1->unk14 = (s32) temp_at->unkA6F8;
                        var_a2 = temp_a2 + 1;
                        temp_a1->unk18 = (s32) temp_at->unkA6FC;
                    }
                }
                var_v0 = var_v0->unk4C;
                if (var_v0 != NULL) {
                    goto loop_7;
                }
            }
            if ((bitwise u32) temp_v0->unk0 >= 2U) {
                goto block_11;
            }
            temp_v0_2 = temp_v0->unk4;
            temp_a0_2 = temp_v0_2->unk0;
            switch (temp_a0_2) {                    /* irregular */
            default:
                if (temp_v0_2->unk8 & 0x10) {
block_11:
                    temp_v0->unkC = 1;
                }
                break;
            case 19:
                if ((temp_v0_2->unk18 != 0.0f) || (temp_v0_2->unk28 != 0.0f) || (temp_v0_2->unk3E == 1) || (temp_v0_2->unk48->unkC != 0x1401)) {
                    goto block_25;
                }
                // Error: negative shift count
                // At instruction: bltz $a5, .L0d98eda8
                if (M2C_ERROR() && (temp_s1->unk47C == 0)) {

                } else {
block_25:
                    goto block_11;
                }
                break;
            case 9:
                if (temp_v0_2->unk3D != 0) {
                    goto block_11;
                }
                break;
            case 0:
                sp30 = (s64) temp_v0_2;
                temp_a0_3 = sp30->unk44;
                __glOdysseyImageCalcXferWriteParams(temp_a0_3->unk8, temp_a0_3->unkC, sp30->unk48->unk34, sp);
                var_a2_2 = temp_v0_2->unk44->unk8;
                if (var_a2_2 == 0x1900) {
                    if (((f64) temp_v0_2->unk18 != GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U)) || ((f64) temp_v0_2->unk28 != GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U))) {
                        sp0 = 0;
                        var_a2_2 = temp_v0_2->unk44->unk8;
                    }
                }
                if (var_a2_2 == 0x1900) {
                    if (sp4 == 1) {
                        sp0 = 0;
                    }
                }
                if (temp_s1->unk7B70 & 0x80) {
                    if (sp4 == 1) {
                        goto block_62;
                    }
                } else if (sp4 != 1) {

                } else {
                    sp0 = 0;
block_62:
                    if (temp_s1->unk784 == 0x1102) {
                        sp0 = 0;
                    }
                }
                if ((temp_v0_2->unk44->unk8 != 0x1900) && ((temp_f4 = temp_s1->unk11E20, (temp_f4 < fabsf(temp_v0_2->unk18))) || (temp_f4 < fabsf(temp_v0_2->unk1C)) || (temp_f4 < fabsf(temp_v0_2->unk20)) || (temp_f4 < fabsf(temp_v0_2->unk24)) || (temp_f4 < fabsf(temp_v0_2->unk28)) || (temp_f4 < fabsf(temp_v0_2->unk2C)) || (temp_f4 < fabsf(temp_v0_2->unk30)) || (temp_f4 < fabsf(temp_v0_2->unk34)))) {
                    sp0 = 0;
                }
                if ((sp2 != 3) && (sp2 != 4)) {

                } else if ((temp_s1->unk788 == 0x1100) && (temp_v0_2->unk8 & 1)) {
                    sp0 = 0;
                }
                if (((temp_s1->unk788 == 0x1102) ? 0U : sp0) == 0) {
                    temp_v0->unkC = 1;
                }
                break;
            case 1:
                sp20 = 0;
                sp21 = temp_v0_2->unk48->unk28 == 1;
                temp_a0_4 = temp_v0_2->unk48;
                __glOdysseyImageCalcXferReadParams(temp_a0_4->unk8, temp_a0_4->unkC, temp_v0_2->unk44, &sp18);
                if ((sp18 == 0) || (temp_s1->unk47C != 0)) {
                    temp_v0->unkC = 1;
                }
                break;
            }
            return temp_v0;
        }
        __glOdysseyImageChainFree(temp_v0);
        return NULL;
    }
    __glSetError(0x505);
    return NULL;
}

void __glOdysseyImageChainFree(f32 *arg0) {
    f32 *temp_a0;
    f32 *var_a3;
    f32 *var_s0;

    var_a3 = *(f32 **)0x1010;
    if (arg0 != NULL) {
        var_s0 = arg0->unk4;
        if (var_s0 != NULL) {
            unksp10 = (s64) var_a3;
            do {
                arg0->unk4 = var_s0;
                temp_a0 = var_s0;
                var_s0 = var_s0->unk4C;
                __glOdysseyImageChainFree(temp_a0);
                var_a3 = (f32 *) unksp10;
            } while (var_s0 != NULL);
        }
        arg0->unk0 = 0.0f;
        arg0->unk4 = NULL;
        arg0->unk8 = 0;
        sub_0d990000(var_a3, arg0);
    }
}

void *ImageChainOpCreate(void) {
    void *(**temp_a0)(?, ?);
    void *temp_v0;

    temp_a0 = *(void *(***)(?, ?))0x1010;
    temp_v0 = *temp_a0(temp_a0, 0x54);
    if (temp_v0 != NULL) {
        M2C_ERROR(/* unknown instruction: sdl $zero, ($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x7($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x8($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0xf($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x10($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x17($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x18($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x1f($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x20($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x27($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x28($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x2f($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x30($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x37($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x38($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x3f($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x40($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x47($v0) */);
        M2C_ERROR(/* unknown instruction: sdl $zero, 0x48($v0) */);
        M2C_ERROR(/* unknown instruction: sdr $zero, 0x4f($v0) */);
        temp_v0->unk50 = (unaligned s32) 0;
        return temp_v0;
    }
    __glSetError(0x505);
    return NULL;
}

void ImageChainOpAllocateFilters(void *arg0, s64 arg1) {
    s64 sp8;
    s64 sp0;
    f32 *temp_a2;
    s32 temp_v0;
    s32 var_s0;
    void *temp_a1;
    void *temp_a3;
    void *temp_a4;
    void *temp_a5;

    sp8 = arg1;
    sp0 = (s64) *(s32 *)0x1010;
    if (arg1 != 0) {
        temp_v0 = sp0->unk0(sp0, sp8 * 0xB60, sp8);
        arg0->unk14 = temp_v0;
        if (temp_v0 == 0) {
            __glSetError(0x505);
            if (arg0 != NULL) {
                sp0->unkC(sp0, arg0);
            }
        } else {
            arg0->unk10 = (s32) sp8;
            var_s0 = (sp8 - 1) * 0xB60;
            do {
                __glOdysseyInitLerpTree(arg0->unk14 + var_s0);
                __glOdysseyInitLerpTree(arg0->unk14 + var_s0 + 0x2D0);
                __glOdysseyInitLerpTree(arg0->unk14 + var_s0 + 0x5A0);
                __glOdysseyInitLerpTree(arg0->unk14 + var_s0 + 0x870);
                temp_a5 = arg0->unk14 + var_s0;
                temp_a5->unkB40 = 0;
                temp_a4 = arg0->unk14 + var_s0;
                temp_a4->unkB44 = 0;
                temp_a3 = arg0->unk14 + var_s0;
                temp_a3->unkB48 = 0;
                temp_a2 = arg0->unk14 + var_s0;
                temp_a2->unkB4C = 0;
                temp_a1 = arg0->unk14 + var_s0;
                temp_a1->unkB50 = 0;
                __glOdysseyProgramTexFilter(arg0->unk14 + var_s0, temp_a1, temp_a2, temp_a3, temp_a4, temp_a5);
                var_s0 -= 0xB60;
            } while (var_s0 != -0xB60);
        }
        return;
    }
    arg0->unk14 = 0;
}

void ImageChainOpFree(void *arg0) {
    u8 *temp_a1_2;
    void *temp_a1;
    void *temp_s1;

    temp_s1 = *(void **)0x1010;
    if (arg0 != NULL) {
        temp_a1 = arg0->unk14;
        if (temp_a1 != NULL) {
            temp_s1->unkC(temp_s1, temp_a1);
        }
        temp_a1_2 = arg0->unk44;
        if ((temp_a1_2 != NULL) && (*temp_a1_2 != 0)) {
            memset(temp_s1, temp_a1_2);
        }
        memset(arg0, NULL, 0x54);
        temp_s1->unkC(temp_s1, arg0);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c], gap at: 0x10. */
void *ImageChainOpCreateScratchImage(s64 arg0) {
    s32 temp_v0_2;
    void *(**temp_a0)(?, ?);
    void *temp_v0;

    unksp8 = arg0;
    temp_a0 = *(void *(***)(?, ?))0x1010;
    unksp10 = (s64) temp_a0;
    temp_v0 = *temp_a0(temp_a0, 0x3C);
    if (temp_v0 != NULL) {
        temp_v0->unk8 = 0;
        temp_v0->unkC = 0;
        temp_v0->unk10 = 0;
        temp_v0->unk14 = 0;
        temp_v0->unk18 = 0;
        temp_v0->unk1C = 0;
        temp_v0->unk20 = 0;
        temp_v0->unk24 = 0;
        temp_v0->unk28 = 0;
        temp_v0->unk2C = 0;
        temp_v0->unk30 = 0;
        temp_v0->unk34 = 0;
        temp_v0->unk4 = 0;
        temp_v0->unk0 = 0;
        temp_v0->unk0 = 1;
        temp_v0->unk38 = (s32) unksp8;
        temp_v0_2 = unksp10->unk11E1C;
        if (unksp8 != 1) {
            temp_v0->unk10 = temp_v0_2;
            temp_v0->unk18 = 1;
            temp_v0->unk14 = (s32) unksp10->unk11E18;
        } else {
            temp_v0->unk20 = temp_v0_2;
            temp_v0->unk24 = (s32) unksp10->unk11E18;
            temp_v0->unk1C = (s32) (s64) ceil((f64) ((f32) ((u64) ((s64) unksp10->unk11E1C << 0x20) >> 0x20) * 0.0625f), second half of f64);
        }
        return temp_v0;
    }
    __glSetError(0x505);
    return NULL;
}

void ImageChainAddOp(void *arg0, void *arg1, void *arg2, s32 arg3) {
    s32 temp_v0_2;
    s32 temp_v0_3;
    void *temp_a0;
    void *temp_v0;
    void *var_a0;
    void *var_v0;

    var_v0 = arg1;
    if (arg0->unk4 == NULL) {
        arg1->unk50 = NULL;
        arg1->unk4C = NULL;
        arg0->unk8 = arg1;
        arg0->unk4 = arg1;
        if (arg1 == arg1) {
            goto block_2;
        }
        goto block_12;
    }
    if (arg2 != NULL) {
        if (arg3 != 1) {
            temp_a0 = arg2->unk4C;
            if (temp_a0 != NULL) {
                temp_a0->unk50 = arg1;
            }
            arg1->unk50 = arg2;
            arg1->unk4C = arg2->unk4C;
            arg2->unk4C = arg1;
            var_v0 = arg0->unk8;
            if (var_v0 == arg2) {
                var_v0 = arg1;
                arg0->unk8 = arg1;
            }
            var_a0 = arg0->unk4;
        } else {
            temp_v0 = arg2->unk50;
            if (temp_v0 != NULL) {
                temp_v0->unk4C = arg1;
            }
            arg1->unk4C = arg2;
            arg1->unk50 = arg2->unk50;
            arg2->unk50 = arg1;
            var_a0 = arg0->unk4;
            if (var_a0 == arg2) {
                var_a0 = arg1;
                arg0->unk4 = arg1;
            }
            var_v0 = arg0->unk8;
        }
        if (var_a0 != arg1) {
block_12:
            if (var_v0 == arg1) {
                temp_v0_2 = __glOdysseyImageChainFree(arg1->unk50->unkC);
                if (temp_v0_2 != 0) {
                    arg1->unk44 = temp_v0_2;
                    arg1->unk48 = (s32) arg0->unk18;
                    arg1->unk50->unk48 = temp_v0_2;
                    /* Duplicate return node #17. Try simplifying control flow for better match */
                    arg0->unk0 = (s32) (arg0->unk0 + 1);
                }
            } else {
                goto block_19;
            }
        } else {
block_2:
            if (var_v0 == arg1) {
                arg1->unk44 = (s32) arg0->unk14;
                arg1->unk48 = (s32) arg0->unk18;
                /* Duplicate return node #17. Try simplifying control flow for better match */
                arg0->unk0 = (s32) (arg0->unk0 + 1);
                return;
            }
block_19:
            temp_v0_3 = __glOdysseyImageChainFree(arg1->unkC);
            if (temp_v0_3 != 0) {
                if (arg0->unk4 == arg1) {
                    arg1->unk44 = (s32) arg0->unk14;
                } else {
                    arg1->unk44 = (s32) arg1->unk50->unk48;
                }
                arg1->unk48 = temp_v0_3;
                arg1->unk4C->unk44 = temp_v0_3;
                arg0->unk0 = (s32) (arg0->unk0 + 1);
            }
        }
    }
}

void ImageChainDetermineChainType(void *arg0, s32 arg1) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a5;
    void *temp_a3;
    void *temp_a4;

    temp_a3 = arg0->unk14;
    if (temp_a3->unk38 != 0) {
        temp_a4 = arg0->unk18;
        if (temp_a4->unk38 != 0) {
            if (arg1 != 0x1801) {
                if (arg1 != 0x1802) {
                    temp_a1 = temp_a3->unk34;
                    if ((temp_a1 != 0x10) && (temp_a1 != 0x11)) {
                        arg0->unk10 = 1;
                        return;
                    }
                    temp_a1_2 = temp_a4->unk34;
                    if (temp_a1_2 != 0x10) {
                        if (temp_a1_2 != 0x11) {
                            arg0->unk10 = 2;
                            return;
                        }
                        /* Duplicate return node #20. Try simplifying control flow for better match */
                        arg0->unk10 = 3;
                        return;
                    }
                    arg0->unk10 = 3;
                    return;
                }
                arg0->unk10 = 4;
                return;
            }
            arg0->unk10 = 5;
            return;
        }
        temp_a5 = temp_a4->unk8;
        if (temp_a5 != 0x1902) {
            if (temp_a5 != 0x1901) {
                temp_a1_3 = temp_a3->unk34;
                if (temp_a1_3 != 0x10) {
                    if (temp_a1_3 != 0x11) {
                        arg0->unk10 = 1;
                        return;
                    }
                    goto block_22;
                }
block_22:
                if (temp_a5 != 0x1900) {
                    arg0->unk10 = 2;
                    return;
                }
                arg0->unk10 = 3;
                return;
            }
            arg0->unk10 = 4;
            return;
        }
        arg0->unk10 = 5;
        return;
    }
    temp_a1_4 = temp_a3->unk8;
    switch (temp_a1_4) {                            /* irregular */
    default:
        arg0->unk10 = 1;
        return;
    case 0x1900:
        temp_a1_5 = arg0->unk18->unk34;
        if (temp_a1_5 != 0x10) {
            if (temp_a1_5 != 0x11) {
                arg0->unk10 = 2;
                return;
            }
            /* Duplicate return node #30. Try simplifying control flow for better match */
            arg0->unk10 = 3;
            return;
        }
        arg0->unk10 = 3;
        return;
    case 0x1902:
        arg0->unk10 = 5;
        return;
    case 0x1901:
        arg0->unk10 = 4;
        return;
    }
}

s32 ImageChainValidateScratchBufferFormats(void *arg0) {
    s32 *temp_t1_2;
    s32 *var_a2;
    s32 var_a4;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_t1;

    var_a2 = arg0->unk4;
    var_a4 = arg0->unk10 == 1;
    if (var_a2 != NULL) {
loop_4:
        temp_a3 = var_a2->unk48;
        if (temp_a3->unk0 != 0) {
            if (var_a2->unk0 != 7) {
                goto block_6;
            }
            if (var_a2->unk38 == 6) {
                var_a4 = 1;
                goto block_7;
            }
block_6:
            if (var_a4 != 0) {
block_7:
                temp_a3->unkB = 1;
                temp_a3_2 = var_a2->unk48;
                if (temp_a3_2->unk38 == 1) {
                    temp_t1 = arg0->unk18;
                    if (temp_t1->unk38 != 0) {
                        goto block_9;
                    }
                    if ((temp_t1->unk28 == 1) && (temp_t1->unkC == 0x1401)) {
                        temp_a3_2->unk30 = 1;
                        var_a2->unk48->unk34 = 0xA;
                        var_a2->unk48->unk2C = 1;
                        var_a2->unk48->unk28 = 1;
                    } else {
block_9:
                        temp_a3_2->unk30 = 0;
                        var_a2->unk48->unk34 = 0xC;
                        var_a2->unk48->unk2C = 2;
                        var_a2->unk48->unk28 = 2;
                    }
                } else {
                    temp_a3_2->unk8 = 0x1908;
                    var_a2->unk48->unkC = 0x1403;
                }
            } else if (temp_a3->unk38 != 1) {
                temp_a3->unk8 = 0x1900;
                var_a2->unk48->unkC = 0x1403;
            } else {
                temp_t1_2 = var_a2->unk4C;
                if ((temp_t1_2 == NULL) || (*temp_t1_2 != 0xD)) {
                    temp_a3->unk30 = 0;
                    var_a2->unk48->unk34 = 0x11;
                    var_a2->unk48->unk2C = 0;
                    var_a2->unk48->unk28 = 0;
                } else {
                    temp_a3->unkB = 1;
                    var_a2->unk48->unk30 = 0;
                    var_a2->unk48->unk34 = 5;
                    var_a2->unk48->unk2C = 0;
                    var_a2->unk48->unk28 = 0;
                }
            }
        }
        var_a2 = var_a2->unk4C;
        if (var_a2 != NULL) {
            goto loop_4;
        }
    }
    return 1;
}

s32 ImageChainBuildColorChain(f32 *arg0, void *arg1) {
    s64 sp118;
    f64 sp110;
    f64 sp108;
    f64 spF8;
    f32 spF4;
    f32 spF0;
    f32 spEC;
    f32 spE8;
    f32 spE4;
    f32 spE0;
    f32 spDC;
    f32 spD8;
    f32 spD4;
    f32 spD0;
    f32 spCC;
    f32 spC8;
    f32 spC4;
    f32 spC0;
    f32 spBC;
    f32 spB8;
    f32 spB4;
    f32 spB0;
    f32 spAC;
    f32 spA8;
    f32 spA4;
    f32 spA0;
    f32 sp9C;
    f32 sp98;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    u8 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 sp1C;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 *temp_a1;
    f32 *temp_a4;
    f32 *temp_a4_2;
    f32 temp_f25;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f4_4;
    f32 temp_f4_5;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f5_3;
    f32 temp_f7;
    f64 temp_f13;
    f64 temp_f5_4;
    f64 temp_f5_5;
    f64 var_f14;
    f64 var_f15;
    s32 *temp_v0_5;
    s32 temp_a1_2;
    s32 temp_a3;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_f12;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_s0;
    u8 temp_a2;
    u8 temp_a5;
    u8 temp_a5_2;
    void *temp_a0;
    void *temp_s0;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *var_v0;

    // Error: negative shift count
    // At instruction: bgez $at, .L0d98fa5c
    if (M2C_ERROR() || (temp_v0 = arg0->unk14, (temp_v0->unk38 != 1))) {
        goto block_2;
    }
    if ((temp_v0->unkA == 0) && !(sub_0d9a0000((f32 *)1) & 0xFF)) {
        /* Duplicate return node #47. Try simplifying control flow for better match */
        return 0;
    }
block_2:
    if (arg0->unk10 != 1) {
        sp64 = 0.0f;
        temp_f4 = (f32) temp_s0->unk2F0;
        sp60 = 0.0f;
        sp5C = 0.0f;
        sp58 = temp_f4;
        sp74 = 0.0f;
        temp_f5 = (f32) temp_s0->unk2F4;
        sp70 = 0.0f;
        sp6C = 0.0f;
        sp68 = temp_f5;
        if (arg0->unk14->unk38 != 0) {
            if (((f64) temp_f4 == (second half of f64)) && ((f64) temp_f5 == (second half of f64))) {
                goto block_6;
            }
            temp_f12 = (s32) temp_f5;
            if (!(sub_0d9a0000(arg0, (s32) temp_f4, temp_f12, temp_f12) & 0xFF)) {
                return 0;
            }
            goto block_6;
        }
        if (!(sub_0d9a0000(arg0, arg0->unk4, 1, (s32) &sp58, &sp68, 0) & 0xFF)) {
            /* Duplicate return node #47. Try simplifying control flow for better match */
            return 0;
        }
block_6:
        if (arg0->unk10 != 2) {
            if (temp_s0->unk2F8 != 0) {
                if (__glOdysseyImageChainFree(arg0, 4) & 0xFF) {
                    goto block_9;
                }
                return 0;
            }
            goto block_10;
        }
        if (__glOdysseyImageChainFree(arg0, 6) & 0xFF) {
            goto block_9;
        }
        /* Duplicate return node #47. Try simplifying control flow for better match */
        return 0;
    }
    temp_f25 = temp_s0->unk280;
    sp20 = temp_f25;
    temp_f4_2 = temp_s0->unk284;
    sp24 = temp_f4_2;
    temp_f5_2 = temp_s0->unk288;
    sp28 = temp_f5_2;
    temp_f7 = temp_s0->unk28C;
    sp2C = temp_f7;
    if (!((f64) temp_f25 > 63.0)) {
        if (!((f64) temp_f4_2 > 63.0) && !((f64) temp_f5_2 > 63.0)) {
            if ((f64) temp_f7 > 63.0) {
                goto block_103;
            }
            var_v0 = temp_s0 + 0x10000;
            temp_s0->unk11E20 = 7.999756f;
        } else {
            goto block_104;
        }
    } else {
block_103:
block_104:
        var_v0 = temp_s0 + 0x10000;
        temp_s0->unk11E20 = 4.0f;
    }
    temp_f4_3 = temp_s0->unk294;
    sp30 = temp_f4_3;
    temp_f5_3 = temp_s0->unk298;
    sp34 = temp_f5_3;
    sp38 = temp_s0->unk29C;
    sp3C = temp_s0->unk2A0;
    sp118 = (s64) var_v0;
    if (arg0->unk14->unk38 != 0) {
        if (((f64) sp20 == 1.0) && ((f64) (second half of f64) == (second half of f64)) && ((f64) sp28 == 1.0) && ((f64) sp2C == 1.0)) {
            if (((f64) temp_f4_3 == GLUE_F64((second half of f64), 0U)) && ((f64) temp_f5_3 == GLUE_F64((second half of f64), 0U)) && ((f64) (second half of f64) == GLUE_F64((second half of f64), 0U))) {
                if ((f64) (second half of f64) != GLUE_F64((second half of f64), 0U)) {
                    goto block_114;
                }
                goto block_116;
            }
            goto block_115;
        }
block_114:
block_115:
        if (sub_0d9a0000(arg0, (s32) &sp20, (s32) &sp30) & 0xFF) {
            goto block_116;
        }
        /* Duplicate return node #47. Try simplifying control flow for better match */
        return 0;
    }
    if (sub_0d9a0000(arg0, arg0->unk4, 1, (s32) &sp20, &sp30, 1) & 0xFF) {
        temp_a0 = arg0->unk14;
        __glOdysseyImageCalcXferWriteParams(temp_a0->unk8, temp_a0->unkC, arg0->unk18->unk34, &sp40);
        if ((sp42 != 3) && (sp42 != 4)) {

        } else if ((temp_s0->unk788 == 0x1100) && (arg0->unk4->unk8 & 1)) {
            sp40 = 0;
        }
        temp_a6 = temp_s0->unk788 == 0x1102;
        temp_a5 = (temp_a6 != 0) ? 0U : sp40;
        sp40 = temp_a5;
        if (temp_a5 == 1) {
            if (sp44 != 1) {
                if (arg0->unk14->unk8 != 0x1900) {
                    temp_f4_4 = sp118->unk1E20;
                    if (!(temp_f4_4 < fabsf(sp20)) && !(temp_f4_4 < fabsf(sp24)) && !(temp_f4_4 < fabsf(sp28))) {
                        if (!(temp_f4_4 < fabsf(sp2C))) {
                            if (!(temp_f4_4 < fabsf(sp30)) && !(temp_f4_4 < fabsf(sp34))) {
                                if (!(temp_f4_4 < fabsf(sp38))) {
                                    if (temp_f4_4 < fabsf(sp3C)) {
                                        goto block_191;
                                    }
                                    goto block_116;
                                }
                                goto block_192;
                            }
                            goto block_191;
                        }
                        goto block_192;
                    }
block_191:
block_192:
                    if (!(__glOdysseyClearScratchBuffer(arg0, &sp20, &sp30, (f32 *)3, 4, temp_a5, (bitwise f64) temp_a6, sp44) & 0xFF)) {
                        /* Duplicate return node #47. Try simplifying control flow for better match */
                        return 0;
                    }
                    goto block_116;
                }
                goto block_116;
            }
            if (temp_s0->unk7B70 & 0x80) {
                // Error: negative shift count
                // At instruction: bgez $a1, .L0d9909d4
                if (M2C_ERROR()) {
                    sp3C = (f32) ((f64) M2C_ERROR(/* Read from unset register $f14 */) * (second half of f64));
                    sp38 = (f32) ((f64) (second half of f64) * (second half of f64));
                    sp34 = (f32) (second half of f64);
                    sp30 = (f32) ((second half of f64) * (second half of f64));
                }
                if (!(__glOdysseyClearScratchBuffer(arg0, &sp20, &sp30, (f32 *)3, 4, temp_a5, (bitwise f64) temp_a6, sp44) & 0xFF)) {
                    /* Duplicate return node #47. Try simplifying control flow for better match */
                    return 0;
                }
                goto block_116;
            }
            goto block_116;
        }
block_116:
        if ((temp_s0->unk2F8 == 0) || (__glOdysseyImageChainFree(arg0, 7) & 0xFF)) {
block_9:
block_10:
            if ((arg0->unk10 != 1) && (arg0->unk10 != 2)) {
                temp_v0_2 = arg0->unk18;
                if (temp_v0_2->unk38 != 1) {
                    goto block_14;
                }
                var_a0 = temp_s0->unk704 & 0x20;
                if ((temp_v0_2->unk8 != 0) && (var_a0 == 0) && (((f64) temp_s0->unk2E8 != 1.0) || ((temp_f5_4 = (f64) temp_s0->unk2EC, (temp_f5_4 != 1.0)) && (temp_f5_4 != -1.0)))) {
                    if (sub_0d9a0000(arg0) & 0xFF) {
                        if (!(temp_s0->unk704 & 0x20)) {
                            goto block_21;
                        }
                        goto block_16;
                    }
                    /* Duplicate return node #47. Try simplifying control flow for better match */
                    return 0;
                }
                goto block_15;
            }
            if (!(temp_s0->unk704 & 1) || (__glOdysseyImageChainFree(arg0, 0) & 0xFF)) {
                var_f14 = 1.0;
                var_f15 = second half of f64;
                temp_f13 = (f64) temp_s0->unk2A8;
                if ((temp_f13 != 1.0) || (var_f15 = (f64) temp_s0->unk2AC, var_f14 = second half of f64, (var_f15 != (second half of f64))) || ((f64) temp_s0->unk2B0 != (second half of f64)) || ((f64) temp_s0->unk2B4 != (second half of f64)) || ((f64) temp_s0->unk2B8 != GLUE_F64(M2C_ERROR(/* Read from unset register $f7 */), 0U)) || ((f64) temp_s0->unk2BC != GLUE_F64(M2C_ERROR(/* Read from unset register $f7 */), 0U)) || ((f64) temp_s0->unk2C0 != GLUE_F64(M2C_ERROR(/* Read from unset register $f7 */), 0U)) || ((f64) temp_s0->unk2C4 != GLUE_F64(M2C_ERROR(/* Read from unset register $f7 */), 0U))) {
                    sp10 = temp_s0->unk2B8;
                    sp14 = temp_s0->unk2BC;
                    sp18 = temp_s0->unk2C0;
                    sp1C = temp_s0->unk2C4;
                }
                if (temp_s0->unk2FC->unk0 != NULL) {
                    temp_s0->unk11BC4 = (s32) (s64) (second half of f64);
                    temp_s0->unk11BC8 = (s32) (s64) ((bitwise f32) sp108 - (bitwise f32) sp110);
                    temp_s0->unk11BD4 = (s32) temp_s0->unk2FC->unk4;
                    var_a0_2 = 0x1101;
                    if (temp_s0->unk784 == 0x1102) {
                        var_a0_2 = 0x1102;
                    }
                    temp_s0->unk119E0 = var_a0_2;
                    temp_a1 = temp_s0->unk2FC->unk0;
                    if (var_a0_2 != 0x1102) {
                        if (__glOdysseyClearScratchBuffer(arg0, temp_a1, sp, &sp10, 0x1102, second half of f64, temp_f13, (bitwise u8) var_f14, var_f15) & 0xFF) {
                            goto block_70;
                        }
                        goto block_143;
                    }
                    if (!(__glOdysseyClearScratchBuffer(arg0, temp_a1, sp, &sp10, 0x1102, second half of f64, temp_f13, (bitwise u8) var_f14, var_f15) & 0xFF)) {
block_143:
                        /* Duplicate return node #47. Try simplifying control flow for better match */
                        return 0;
                    }
                    goto block_70;
                }
block_70:
                if (!(temp_s0->unk704 & 2) || (__glOdysseyImageChainFree(arg0, 2) & 0xFF)) {
                    temp_f4_5 = temp_s0->unk2C8;
                    if (((temp_s0->unk77E4 == 0x8421) && ((f64) temp_f4_5 == (second half of f64)) && ((f64) temp_s0->unk2CC == (second half of f64)) && ((f64) temp_s0->unk2D0 == (second half of f64)) && ((f64) temp_s0->unk2D4 == (second half of f64)) && ((f64) temp_s0->unk2D8 == GLUE_F64((second half of f64), 0U)) && ((f64) temp_s0->unk2DC == GLUE_F64((second half of f64), 0U)) && ((f64) temp_s0->unk2E0 == GLUE_F64((second half of f64), 0U)) && ((f64) temp_s0->unk2E4 == GLUE_F64((second half of f64), 0U))) || (sp78 = temp_f4_5, sp7C = temp_s0->unk2CC, sp80 = temp_s0->unk2D0, sp84 = temp_s0->unk2D4, sp88 = temp_s0->unk2D8, sp8C = temp_s0->unk2DC, sp90 = temp_s0->unk2E0, sp94 = temp_s0->unk2E4, ((sub_0d9a0000(arg0, temp_s0->unk7430, (s32) &sp78, (s32) &sp88) & 0xFF) != 0))) {
                        if (!(temp_s0->unk704 & 4) || (__glOdysseyImageChainFree(arg0, 3) & 0xFF)) {
                            // Error: negative shift count
                            // At instruction: bgez $a1, .L0d990134
                            if (((M2C_ERROR() || ((temp_s0->unk4E0 <= 0) && (temp_s0->unk500 != 1))) && ((// Error: negative shift count, // At instruction: bgez $a4, .L0d99016c, M2C_ERROR()) || ((0x10000000 != 0) && (temp_s0->unk500 != 0)))) || (sub_0d9a0000(arg0, (s32) ((s64) temp_s0->unk700 << 0x23)) & 0xFF)) {
                                temp_v0_3 = arg0->unk18;
                                var_a0_3 = temp_v0_3->unk38;
                                if (var_a0_3 != 1) {
                                    goto block_93;
                                }
                                temp_a1_2 = temp_s0->unk704;
                                if ((temp_v0_3->unk8 != 0) && (temp_a1_2 & 0x4000)) {
                                    if (sub_0d9a0000(arg0, temp_a1_2) & 0xFF) {
                                        var_a0_3 = arg0->unk18->unk38;
                                        goto block_93;
                                    }
                                    /* Duplicate return node #47. Try simplifying control flow for better match */
                                    return 0;
                                }
block_93:
                                if (var_a0_3 != 1) {
                                    var_a0 = temp_s0->unk704 & 0x20;
                                    goto block_15;
                                }
                                var_a0 = temp_s0->unk704 & 0x20;
                                if ((arg0->unk18->unk8 != 0) && (var_a0 == 0) && (((f64) temp_s0->unk2E8 != 1.0) || ((temp_f5_5 = (f64) temp_s0->unk2EC, (temp_f5_5 != 1.0)) && (temp_f5_5 != -1.0)))) {
                                    if (sub_0d9a0000(arg0, temp_s0->unk704) & 0xFF) {
block_14:
                                        var_a0 = temp_s0->unk704 & 0x20;
                                        goto block_15;
                                    }
                                    /* Duplicate return node #47. Try simplifying control flow for better match */
                                    return 0;
                                }
block_15:
                                if (var_a0 != 0) {
block_16:
                                    temp_v0_4 = arg0->unk18;
                                    if (temp_v0_4->unk38 == 1) {
                                        temp_a2 = temp_v0_4->unk8;
                                        if (temp_a2 != 0) {
                                            goto block_18;
                                        }
                                        if (temp_v0_4->unkA == 0) {
                                            goto block_21;
                                        }
block_18:
                                        temp_v0_5 = arg0->unk8;
                                        if ((temp_v0_5 == NULL) || (*temp_v0_5 != 0xE)) {
                                            if (sub_0d9a0000(arg0, 0, (s32) temp_a2) & 0xFF) {
block_21:
                                                goto block_22;
                                            }
                                            return 0;
                                        }
                                        goto block_22;
                                    }
                                    goto block_22;
                                }
block_22:
                                if (__glOdysseyImageChainFree(arg0) & 0xFF) {
                                    var_s0 = arg0->unk4;
                                    if (var_s0 != 0) {
                                        goto block_24;
                                    }
                                    if (arg0->unk14->unk38 != 0) {
                                        if (arg0->unk18->unk38 != 0) {
                                            if (__glOdysseyImageChainFree(arg0, (s64) var_s0, (f32 *)1) & 0xFF) {
                                                goto block_128;
                                            }
                                            /* Duplicate return node #47. Try simplifying control flow for better match */
                                            return 0;
                                        }
                                        if (!(sub_0d9a0000(arg0, var_s0, 1) & 0xFF)) {
                                            /* Duplicate return node #47. Try simplifying control flow for better match */
                                            return 0;
                                        }
                                        goto block_128;
                                    }
                                    spB4 = 0.0f;
                                    spB0 = 0.0f;
                                    spAC = 0.0f;
                                    spA8 = 0.0f;
                                    spA4 = 1.0f;
                                    spA0 = 1.0f;
                                    sp9C = 1.0f;
                                    sp98 = 1.0f;
                                    if (arg0->unk14->unk8 == 0x1900) {
                                        sp98 = 0.0f;
                                        sp9C = 0.0f;
                                        spA0 = 0.0f;
                                        spA4 = 0.0f;
                                    }
                                    if (!(sub_0d9a0000(arg0, arg0->unk4, 1, (s32) &sp98, &spA8, 0) & 0xFF)) {
                                        /* Duplicate return node #47. Try simplifying control flow for better match */
                                        return 0;
                                    }
block_128:
                                    var_s0 = arg0->unk4;
block_24:
                                    if (var_s0 != 0) {
loop_28:
                                        temp_a4 = var_s0->unk44;
                                        temp_v0_6 = var_s0->unk8;
                                        if (temp_a4->unk38 != 0) {
                                            temp_a3 = temp_v0_6 & 0x20;
                                            if (temp_v0_6 & 4) {
                                                if ((temp_a3 == 0) || (temp_a5_2 = temp_a4->unkB, (temp_a5_2 != 0))) {
                                                    goto block_32;
                                                }
                                                if (!(__glOdysseyImageChainFree(arg0, (s64) var_s0, (f32 *)1, temp_a3, temp_a4, temp_a5_2) & 0xFF)) {
                                                    /* Duplicate return node #47. Try simplifying control flow for better match */
                                                    return 0;
                                                }
                                                goto block_32;
                                            }
                                            if (!(sub_0d9a0000(arg0, var_s0, 1, temp_a3, temp_a4) & 0xFF)) {
                                                /* Duplicate return node #47. Try simplifying control flow for better match */
                                                return 0;
                                            }
                                            goto block_32;
                                        }
                                        if (temp_v0_6 & 2) {
                                            if ((temp_a4->unk0 == 0) && (var_s0->unk48->unk8 != 0) && (temp_a4->unk28 == 1)) {
                                                var_s0->unk8 = (s32) (temp_v0_6 & ~8);
                                            }
                                            goto block_33;
                                        }
                                        spD4 = 0.0f;
                                        spD0 = 0.0f;
                                        spCC = 0.0f;
                                        spC8 = 0.0f;
                                        spC4 = 1.0f;
                                        spC0 = 1.0f;
                                        spBC = 1.0f;
                                        spB8 = 1.0f;
                                        if (var_s0->unk44->unk8 == 0x1900) {
                                            spB8 = 0.0f;
                                            spBC = 0.0f;
                                            spC0 = 0.0f;
                                            spC4 = 0.0f;
                                        }
                                        if (sub_0d9a0000(arg0, var_s0, 1, (s32) &spB8, &spC8, 0) & 0xFF) {
block_32:
block_33:
                                            temp_a6_2 = var_s0->unk48->unk38;
                                            temp_v0_7 = var_s0->unkC;
                                            temp_a7 = var_s0->unk8 & 8;
                                            if (temp_a6_2 != 0) {
                                                if (temp_v0_7 != 0) {
                                                    if ((temp_a7 == 0) && (var_s0->unk48->unk8 != 0)) {
                                                        temp_a4_2 = var_s0->unk44;
                                                        if ((temp_a4_2->unk38 == 1) && (temp_a4_2->unkB != 0)) {
                                                            if (!(__glOdysseyImageChainFree(arg0, (s64) var_s0, NULL) & 0xFF)) {
                                                                /* Duplicate return node #47. Try simplifying control flow for better match */
                                                                return 0;
                                                            }
                                                            goto block_27;
                                                        }
                                                        if (!(__glOdysseyImageChainFree(arg0, (s64) var_s0, NULL) & 0xFF)) {
                                                            /* Duplicate return node #47. Try simplifying control flow for better match */
                                                            return 0;
                                                        }
                                                        goto block_27;
                                                    }
                                                    goto block_27;
                                                }
                                                spF4 = 0.0f;
                                                spF0 = 0.0f;
                                                spEC = 0.0f;
                                                spE8 = 0.0f;
                                                spE4 = 1.0f;
                                                spE0 = 1.0f;
                                                spDC = 1.0f;
                                                spD8 = 1.0f;
                                                if (var_s0->unk44->unk8 == 0x1900) {
                                                    spD8 = 0.0f;
                                                    spDC = 0.0f;
                                                    spE0 = 0.0f;
                                                    spE4 = 0.0f;
                                                }
                                                if (!(sub_0d9a0000(arg0, var_s0, 0, (s32) &spD8, &spE8, 0, temp_a6_2, temp_a7) & 0xFF)) {
                                                    /* Duplicate return node #47. Try simplifying control flow for better match */
                                                    return 0;
                                                }
                                                goto block_27;
                                            }
                                            if (temp_v0_7 != 1) {
                                                goto block_27;
                                            }
                                            if (!(sub_0d990000(arg0, (f32 *) var_s0, 0) & 0xFF)) {
                                                /* Duplicate return node #47. Try simplifying control flow for better match */
                                                return 0;
                                            }
block_27:
                                            var_s0 = var_s0->unk4C;
                                            if (var_s0 != 0) {
                                                goto loop_28;
                                            }
                                            /* Duplicate return node #46. Try simplifying control flow for better match */
                                            return !(__glOdysseyImageChainFree(arg0) & 0xFF) ? 0 : 1;
                                        }
                                        /* Duplicate return node #47. Try simplifying control flow for better match */
                                        return 0;
                                    }
                                    return !(__glOdysseyImageChainFree(arg0) & 0xFF) ? 0 : 1;
                                }
                                return 0;
                            }
                            /* Duplicate return node #47. Try simplifying control flow for better match */
                            return 0;
                        }
                        /* Duplicate return node #47. Try simplifying control flow for better match */
                        return 0;
                    }
                    return 0;
                }
                /* Duplicate return node #47. Try simplifying control flow for better match */
                return 0;
            }
            /* Duplicate return node #47. Try simplifying control flow for better match */
            return 0;
        }
        /* Duplicate return node #47. Try simplifying control flow for better match */
        return 0;
    }
    return 0;
}

s32 ImageChainBuildDepthChain(void *arg0) {
    f32 *temp_f13;
    s32 temp_f14;
    void *temp_v0;

    temp_v0 = *(void **)0x1010;
    temp_f14 = temp_v0->unk2A4;
    temp_f13 = temp_v0->unk290;
    if (arg0->unk14->unk38 != 0) {
        if (arg0->unk18->unk38 != 0) {
            if (sub_0d9a0000(temp_f13, temp_f14) & 0xFF) {
                /* Duplicate return node #3. Try simplifying control flow for better match */
                return 1;
            }
            return 0;
        }
        if (!(sub_0d9a0000(temp_f13, temp_f14) & 0xFF)) {
            /* Duplicate return node #4. Try simplifying control flow for better match */
            return 0;
        }
        /* Duplicate return node #3. Try simplifying control flow for better match */
        return 1;
    }
    if (!(sub_0d9a0000(temp_f13, temp_f14) & 0xFF)) {
        return 0;
    }
    return 1;
}

s32 ImageChainBuildStencilChain(void *arg0) {
    f32 *temp_a1_2;
    s32 temp_a2;
    u8 temp_a3;
    void *temp_a1;

    temp_a1 = *(void **)0x1010;
    temp_a3 = temp_a1->unk2F9;
    temp_a2 = temp_a1->unk2F4;
    temp_a1_2 = temp_a1->unk2F0;
    if (arg0->unk14->unk38 != 0) {
        if (arg0->unk18->unk38 != 0) {
            if (sub_0d9a0000(temp_a1_2, temp_a2, (s32) temp_a3) & 0xFF) {
                /* Duplicate return node #3. Try simplifying control flow for better match */
                return 1;
            }
            return 0;
        }
        if (!((M2C_ERROR(/* Read from unset register $t9 */) + 0x2720)(temp_a1_2, temp_a2, temp_a3) & 0xFF)) {
            /* Duplicate return node #4. Try simplifying control flow for better match */
            return 0;
        }
        /* Duplicate return node #3. Try simplifying control flow for better match */
        return 1;
    }
    if (!(sub_0d9a0000(temp_a1_2, temp_a2, (s32) temp_a3) & 0xFF)) {
        return 0;
    }
    return 1;
}

s32 ImageChainBuildChain(void *arg0) {
    f32 *temp_a3;

    temp_a3 = arg0->unk10;
    switch (temp_a3) {                              /* irregular */
    default:
        return 0;
    case 1:
    case 2:
    case 3:
        return __glOdysseyImageChainFree(temp_a3) & 0xFF;
    case 4:
        return __glOdysseyImageChainFree((f32 *)5, 4, temp_a3) & 0xFF;
    case 5:
        return __glOdysseyImageChainFree((f32 *)5, (s64) temp_a3) & 0xFF;
    }
}

s32 ImageChainAddOpTextureColor(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_v0;

    sp0 = arg0;
    sp8 = arg1;
    sp10 = arg2;
    temp_v0 = __glOdysseyImageChainFree();
    if (temp_v0 == 0) {
        return 0;
    }
    temp_v0->unk0 = 2;
    temp_v0->unkC = 1;
    temp_v0->unk8 = (s32) (temp_v0->unk8 | 0x2C);
    temp_v0->unk4 = (void *) (sub_0d990000 + 0xCF0);
    __glOdysseyImageChainFree((f32 *) sp0, (s64) temp_v0, (f32 *) sp8, (s32) sp10);
    return 1;
}

s32 RenderFunc_TextureColor(void *arg0, s64 arg1) {
    __glOdysseyImageMovePixelsTexture(arg0->unk48, arg0->unk44, arg1, 1);
    return 1;
}

s32 ImageChainAddOpCopyColor(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_v0;

    sp0 = arg0;
    sp8 = arg1;
    sp10 = arg2;
    temp_v0 = __glOdysseyImageChainFree();
    if (temp_v0 == 0) {
        return 0;
    }
    temp_v0->unk0 = 3;
    temp_v0->unkC = 1;
    temp_v0->unk8 = (s32) (temp_v0->unk8 | 0xC);
    temp_v0->unk4 = (void *) (sub_0d990000 + 0xDD0);
    __glOdysseyImageChainFree((f32 *) sp0, (s64) temp_v0, (f32 *) sp8, (s32) sp10);
    return 1;
}

s32 RenderFunc_CopyColor(void *arg0, s64 arg1) {
    __glOdysseyImageMovePixelsCopy(arg0->unk48, arg0->unk44, arg1, 0, 1);
    return 1;
}

s32 ImageChainAddOpLut(s64 arg0, s64 arg1) {
    s64 sp8;
    s64 sp0;
    s32 temp_v0;

    sp0 = arg0;
    sp8 = arg1;
    temp_v0 = __glOdysseyImageChainFree();
    if (temp_v0 == 0) {
        return 0;
    }
    temp_v0->unkC = 1;
    temp_v0->unk0 = 7;
    temp_v0->unk38 = (s32) sp8;
    temp_v0->unk4 = (void *) (sub_0d990000 + 0xEB0);
    temp_v0->unk8 = (s32) (temp_v0->unk8 | 0xE);
    __glOdysseyImageChainFree((f32 *) sp0, (s64) temp_v0, sp0->unk8, 0, (f32 *)1);
    return 1;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x850, 0x854, 0x878, 0x87c, 0x880, 0x884, 0x888, 0x88c, 0x890, 0x894, 0x898, 0x89c, 0x8a0, 0x8a4, 0x8a8, 0x8ac, 0x8b0, 0x8b4, 0x8b8, 0x8bc, 0x8c0, 0x8c4], gap at: 0x860. */
s32 RenderFunc_Lut(void *arg0, s64 arg1) {
    s64 sp848;
    s64 sp840;
    s64 sp838;
    s64 sp830;
    s64 sp828;
    ? sp28;
    s32 sp8;
    s32 sp0;
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 *temp_a1;
    f32 *temp_a1_2;
    s32 *temp_a6_2;
    s32 *temp_a6_5;
    s32 *temp_v0;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a6_3;
    s32 temp_a6_4;
    s32 temp_at;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_s3;
    s32 temp_s6;
    s32 var_a1;
    s32 var_a2;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a5_2;
    void *temp_a6;
    void *temp_a7;
    void *temp_ra;

    sp0 = 0;
    temp_a6 = *(void **)0x1010;
    temp_a7 = temp_a6 + (arg0->unk38 * 0x80C) + 0xA744;
    temp_a4 = temp_a7->unk804;
    if (temp_a4 == 1) {
        sp828 = (s64) temp_a6;
        sp840 = (s64) arg0;
        sp838 = arg1;
        sp830 = (s64) temp_a7;
        sp8.unk10 = (s32) temp_a6->unk7CD4;
        sp8.unk18 = (s32) temp_a6->unk7CDC;
        sp848 = (s64) (temp_a6 + 0x10000);
        sp8.unk8 = (s32) temp_a6->unk7CCC;
        var_a5 = 0x200;
        sp8.unkC = (s32) temp_a6->unk7CD0;
        var_a4 = 0;
        sp8.unk14 = (s32) temp_a6->unk7CD8;
        sp8.unk4 = (s32) temp_a6->unk7CC8;
        temp_ra = temp_a6 + 0x8D7C;
        sp8 = temp_a6->unk7CC4;
        unksp868 = (s64) (temp_ra + 8);
        unksp870 = (s64) (temp_ra + 4);
        do {
            temp_a3 = *(var_a4 + (temp_a6 + 0x8D98));
            *(var_a4 + &sp28) = *(var_a4 + temp_ra);
            *(var_a4 + (&sp28 + 4)) = *(var_a4 + unksp870);
            *(var_a4 + (&sp28 + 8)) = *(var_a4 + unksp868);
            *(var_a4 + (&sp28 + 0xC)) = *(var_a4 + (temp_a6 + 0x8D88));
            *(var_a4 + (&sp28 + 0x10)) = *(var_a4 + (temp_a6 + 0x8D8C));
            var_a5 -= 8;
            *(var_a4 + (&sp28 + 0x14)) = *(var_a4 + (temp_a6 + 0x8D90));
            temp_a6_2 = var_a4 + (&sp28 + 0x1C);
            *(var_a4 + (&sp28 + 0x18)) = *(var_a4 + (temp_a6 + 0x8D94));
            var_a4 += 0x20;
            *temp_a6_2 = temp_a3;
        } while (var_a5 > 0);
        var_a5_2 = 0x200;
        var_a4_2 = 0;
        temp_s6 = sp830 + 4;
        do {
            *(var_a4_2 + (sp848 - 0x7284)) = *(var_a4_2 + temp_s6);
            *(var_a4_2 + (sp848 - 0x7280)) = *(var_a4_2 + (temp_s6 + 4));
            *(var_a4_2 + (sp848 - 0x727C)) = *(var_a4_2 + (temp_s6 + 8));
            *(var_a4_2 + (sp848 - 0x7278)) = *(var_a4_2 + (sp830 + 0x10));
            *(var_a4_2 + (sp848 - 0x7274)) = *(var_a4_2 + (sp830 + 0x14));
            *(var_a4_2 + (sp848 - 0x7270)) = *(var_a4_2 + (sp830 + 0x18));
            var_a5_2 -= 8;
            *(var_a4_2 + (sp848 - 0x726C)) = *(var_a4_2 + (sp830 + 0x1C));
            temp_v0 = var_a4_2 + (sp848 - 0x7268);
            temp_at = *(var_a4_2 + (sp830 + 0x20));
            var_a4_2 += 0x20;
            *temp_v0 = temp_at;
        } while (var_a5_2 > 0);
        sp848->unk6960 = (s32) (sp848->unk6960 | 0x400000);
        *(s32 *)0x1018 = 2;
        temp_a6_3 = sp828->unk7CD4 | 1;
        sp828->unk7CD4 = temp_a6_3;
        temp_a6_4 = (temp_a6_3 & ~0x700000) | ((sp830->unk808 << 0x14) & 0x700000);
        sp828->unk7CD4 = temp_a6_4;
        temp_a4_2 = sp848->unk6960 | 0x200;
        sp848->unk6960 = temp_a4_2;
        *(void *)0x1018 = 2;
        temp_a1 = sp840->unk44;
        temp_a0 = sp840->unk48;
        if (temp_a1->unk38 != 0) {
            if (temp_a1->unkB != 0) {
                __glOdysseyImageMovePixelsTexture(temp_a0, temp_a1, sp838, 1, temp_a4_2, sp848, temp_a6_4, sp828);
            } else {
                __glOdysseyImageMovePixelsCopy(temp_a0, temp_a1, sp838, 1, 1, sp848, temp_a6_4, sp828);
            }
        } else {
            __glOdysseyImageMovePixelsDMAtoGfx(temp_a0, temp_a1, sp838, 1, 1, sp848, temp_a6_4, sp828);
        }
        sp828->unk7CD8 = (s32) sp8.unk14;
        unksp858 = (s64) (&sp28 + 4);
        sp828->unk7CC4 = sp8;
        unksp860 = sp848 - 0x7280;
        var_a2 = 0x200;
        var_a1 = 0;
        sp828->unk7CDC = (s32) sp8.unk18;
        sp828->unk7CD4 = (s32) sp8.unk10;
        sp828->unk7CD0 = (s32) sp8.unkC;
        sp828->unk7CCC = (s32) sp8.unk8;
        sp828->unk7CC8 = (s32) sp8.unk4;
        do {
            temp_a5 = *(var_a1 + (&sp28 + 0x1C));
            *(var_a1 + (sp848 - 0x7284)) = *(var_a1 + &sp28);
            *(var_a1 + unksp860) = *(var_a1 + unksp858);
            *(var_a1 + (sp848 - 0x727C)) = *(var_a1 + (&sp28 + 8));
            *(var_a1 + (sp848 - 0x7278)) = *(var_a1 + (&sp28 + 0xC));
            *(var_a1 + (sp848 - 0x7274)) = *(var_a1 + (&sp28 + 0x10));
            var_a2 -= 8;
            *(var_a1 + (sp848 - 0x7270)) = *(var_a1 + (&sp28 + 0x14));
            temp_a6_5 = var_a1 + (sp848 - 0x7268);
            *(var_a1 + (sp848 - 0x726C)) = *(var_a1 + (&sp28 + 0x18));
            var_a1 += 0x20;
            *temp_a6_5 = temp_a5;
        } while (var_a2 > 0);
        sp848->unk6960 = (s32) (sp848->unk6960 | 0x400200);
        *(void *)0x1018 = 2;
        /* Duplicate return node #12. Try simplifying control flow for better match */
        return 1;
    }
    sp840 = (s64) arg0;
    sp838 = arg1;
    sp830 = (s64) temp_a7;
    sp828 = (s64) temp_a6;
    if (temp_a4 != 2) {
        /* Duplicate return node #12. Try simplifying control flow for better match */
        return 1;
    }
    temp_s1 = sp828->unk7C00;
    sp848 = sp828 + 0x10000;
    temp_s2 = sp828->unk9820;
    temp_s3 = sp828->unk981C;
    if (__glOdysseyOpenPMObjReference(sp828, sp830->unk0, 0, 0, sp, 1, temp_a6, temp_a7) != 0) {
        sp848->unk-67E4 = sp0;
        sp848->unk-67E0 = (s32) sp830->unk808;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10842;
        HQ2_READ_FIFO = sp848->unk-67E4;
        HQ2_READ_FIFO = sp848->unk-67E0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0x96;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        sp848->unk-67D0 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        if (__glOdysseyClosePMObjReference(sp828, sp830->unk0, 0, 0, 0x10046, 0xFA, 0x10443, sp848) != 0) {
            sp828->unk7C00 = (s32) (sp828->unk7C00 | 0x40);
            sp848->unk6960 = (s32) (sp848->unk6960 | 4);
            *(void *)0x1018 = 2;
            temp_a1_2 = sp840->unk44;
            temp_a0_2 = sp840->unk48;
            if (temp_a1_2->unk38 != 0) {
                __glOdysseyImageMovePixelsCopy(temp_a0_2, temp_a1_2, sp838, 1, 1, sp848, (s32) sp828);
            } else {
                __glOdysseyImageMovePixelsDMAtoGfx(temp_a0_2, temp_a1_2, sp838, 1, 1, sp848, (s32) sp828);
            }
            sp848->unk-67E0 = temp_s2;
            sp848->unk-67E4 = temp_s3;
            sp828->unk7C00 = temp_s1;
            sp848->unk6960 = (s32) (sp848->unk6960 | 4);
            *(void *)0x1018 = 2;
            return 1;
        }
        __glSetError(0x505);
        return 0;
    }
    __glSetError(0x505);
    return 0;
}

void __glOdysseyClearScratchBuffer(f32 *arg0, s64 arg1) {
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 sp10;
    s32 sp4;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7;
    void *temp_s0;

    sp10 = 0;
    temp_s0 = *(void **)0x1010;
    temp_a2 = arg0->unk24;
    temp_a6 = arg0->unk18;
    temp_a7 = arg0->unk20;
    temp_a5 = arg0->unk10;
    if ((temp_a7 > 0) && (sp50 = (s64) temp_a2, sp80 = arg1, sp78 = (s64) temp_a7, sp70 = (s64) arg0, sp68 = (s64) temp_a6, sp60 = (s64) temp_a5, sp58 = (s64) arg0->unk14, (temp_a2 > 0))) {
        sp18 = (s64) temp_s0->unk7BFC;
        sp40 = (s64) temp_s0->unk96A8;
        sp28 = (s64) temp_s0->unk7C5C;
        sp38 = (s64) temp_s0->unk96A0;
        sp20 = (s64) temp_s0->unk96A4;
        sp30 = (s64) temp_s0->unk969C;
        if (__glOdysseyOpenPMObjWriteReference(temp_s0, sp60, sp58, &sp10, 1, temp_a5, temp_a6, temp_a7) != 0) {
            temp_s0->unk7C20 = 0xFFF;
            temp_s0->unk7C24 = 0xFFF;
            if (temp_s0->unk9830 != 0) {
                temp_s0->unk9830 = 0;
                HQ2_READ_FIFO = 0x10443;
                HQ2_READ_FIFO = 0xFA;
                HQ2_READ_FIFO = 0x10046;
                HQ2_READ_FIFO = 0x10046;
            }
            HQ2_READ_FIFO = 0x1081D;
            HQ2_READ_FIFO = temp_s0->unk7C20;
            HQ2_READ_FIFO = temp_s0->unk7C24;
            temp_s0->unk16964 = (s32) (temp_s0->unk16964 | 0x2000);
            *(s32 *)0x1018 = 2;
            sp10 += sp68;
            temp_a6_2 = (0x200000 | (temp_s0->unk7C5C | 0x100000) | 0x400000 | 0x800000) & ~0x01000000 & ~0xFF000 & ~0xFFF;
            temp_s0->unk7C5C = temp_a6_2;
            temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x80);
            *(void *)0x1018 = 2;
            temp_s0->unk7BFC = (s32) (temp_s0->unk7BFC & ~0x40000);
            temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 2);
            *(void *)0x1018 = 2;
            temp_a3 = sp10 & 0x1FFFFFFF;
            temp_a2_2 = (temp_s0->unk969C & 0xE0000000) | temp_a3;
            temp_s0->unk969C = temp_a2_2;
            __glOdysseyImageCalcPixelModeFields(temp_s0 + 0x969C, sp70, temp_a2_2, temp_a3, 0x1FFFFFFF, 0xE0000000, temp_a6_2, -0x1000);
            temp_s0->unk16960 = (s32) (0x200000 | temp_s0->unk16960);
            *(void *)0x1018 = 2;
            sp4 = 1;
            __glOdysseyClear(temp_s0, sp80);
            if (__glOdysseyClosePMObjWriteReference(temp_s0, sp60, sp58) != 0) {
                temp_s0->unk7BFC = (s32) sp18;
                temp_s0->unk7C5C = (s32) sp28;
                temp_s0->unk96A8 = (s32) sp40;
                temp_s0->unk96A4 = (s32) sp20;
                temp_s0->unk96A0 = (s32) sp38;
                temp_s0->unk969C = (s32) sp30;
                temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x200082);
                *(void *)0x1018 = 2;
                return;
            }
            __glSetError(0x505);
        } else {
            __glSetError(0x505);
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x58, 0x5c, 0x60, 0x64, 0x68, 0x6c, 0x70, 0x74, 0x78, 0x7c, 0x88, 0x8c, 0x90, 0x94, 0x98, 0x9c], gap at: 0x28. */
s32 ImageChainAddOpConvolve(s64 arg0, s32 arg1, void *arg2, s64 arg3, void *arg4) {
    f64 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    ? **temp_a1;
    ? **temp_a2;
    f32 temp_f13_3;
    f32 temp_f15;
    f32 temp_f19;
    f32 temp_f19_2;
    f32 temp_f21;
    f32 temp_f21_2;
    f32 temp_f22;
    f32 temp_f23;
    f32 temp_f23_2;
    f32 temp_f6;
    f32 temp_f7;
    f32 temp_f9;
    f32 var_f0;
    f32 var_f0_10;
    f32 var_f0_2;
    f32 var_f0_3;
    f32 var_f0_4;
    f32 var_f0_5;
    f32 var_f0_6;
    f32 var_f0_7;
    f32 var_f0_8;
    f32 var_f0_9;
    f32 var_f20;
    f32 var_f21;
    f32 var_f22;
    f32 var_f22_2;
    f32 var_f24;
    s32 temp_a1_2;
    s32 temp_cond;
    s32 temp_cond_2;
    s32 temp_cond_3;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 var_s4;
    s64 temp_a5;
    s64 temp_f13;
    s64 temp_f13_2;
    s64 temp_s1;
    s64 temp_s1_2;
    s64 temp_v1;
    s64 temp_v1_2;
    s64 temp_v1_3;
    s64 var_a0;
    s64 var_a3;
    s64 var_t1;
    s64 var_t1_2;
    s64 var_t1_3;
    s64 var_t1_4;
    s64 var_t1_5;
    s64 var_t1_6;
    s64 var_t1_7;
    s64 var_t1_8;
    s64 var_t1_9;
    u32 temp_f1;
    u32 temp_f1_2;
    u64 var_a7_10;
    u8 temp_a6;
    void *temp_s3;
    void *temp_s3_2;
    void *temp_v0;
    void *var_a4;
    void *var_a7;
    void *var_a7_2;
    void *var_a7_3;
    void *var_a7_4;
    void *var_a7_5;
    void *var_a7_6;
    void *var_a7_7;
    void *var_a7_8;
    void *var_a7_9;

    var_a0 = arg0;
    var_a3 = arg3;
    var_a4 = arg4;
    unksp48 = var_a0;
    unksp50 = var_a3;
    sp0 = 0.0f;
    sp4 = 0.0f;
    sp8 = 0.0f;
    spC = 0.0f;
    temp_v0 = *(void **)0x1010;
    temp_s3 = temp_v0->unk2FC;
    temp_s3_2 = temp_s3->unk50;
    temp_v0->unk11BEB = 0;
    var_f24 = (f32) temp_s3->unk44;
    temp_v0->unk11BD0 = 0U;
    var_f20 = (f32) temp_s3->unk40;
    if ((arg1 != 0) && (arg1 != 0x8010)) {
        temp_a2 = M2C_ERROR(/* unknown instruction: movf $a2, $zero, $fcc0 */);
        if (arg1 != 0x8012) {
            temp_a1 = M2C_ERROR(/* unknown instruction: movf $a1, $zero, $fcc1 */);
            if (temp_a2 != NULL) {
                var_f20 = 1.0f;
                temp_v0->unk2FC->unk40 = 1;
                if (temp_a1 != NULL) {
                    goto block_5;
                }
                goto block_6;
            }
            if (temp_a1 != NULL) {
                if (temp_a1 == NULL) {

                } else {
block_5:
                    var_a0 = (s64) temp_v0->unk2FC;
                    var_f24 = 1.0f;
                    var_a0->unk44 = 1;
                }
block_6:
                temp_v0->unk11BEB = 1;
            }
            sp10 = ceilf((bitwise f32) var_a0, temp_a1, temp_a2, var_f20 * 0.5f);
            temp_f13 = (s64) ceilf(0.5f * ((f32) sp10 * ceilf(var_f24 * 0.5f)), second half of f64);
            temp_s1 = temp_f13 << 0;
            unksp38 = temp_s1;
            temp_v0_2 = __glOdysseyImageChainFree(second half of f64, temp_f13);
            var_s4 = temp_v0_2;
            if (temp_v0_2 == 0) {
                return 0;
            }
            __glOdysseyImageChainFree((f32 *) temp_v0_2, unksp38 + 1);
            temp_f1 = second half of f64;
            if (var_s4->unk14 != 0) {
                var_f22 = var_f24 * var_f20;
                unksp40 = temp_s1;
                if (var_f22 > 0.0f) {
                    var_a7 = temp_s3_2;
                    var_t1 = 0;
                    do {
                        sp0 = (f32) ((second half of f64) + (f64) (second half of f64));
                        if ((f64) var_a7->unk0 < GLUE_F64(temp_f1, 0U)) {
                            temp_v0->unk11BD2 = 1U;
                        }
                        var_t1 += 1;
                        sp->unk4 = (f32) ((second half of f64) + (f64) (second half of f64));
                        if ((f64) var_a7->unk4 < GLUE_F64(temp_f1, 0U)) {
                            temp_v0->unk11BD2 = 1U;
                        }
                        temp_f19 = var_a7->unk8;
                        sp->unk8 = (f32) ((second half of f64) + (f64) fabsf(temp_f19));
                        if ((f64) temp_f19 < GLUE_F64(temp_f1, 0U)) {
                            temp_v0->unk11BD2 = 1U;
                        }
                        temp_f23 = var_a7->unkC;
                        temp_cond = (f64) temp_f23 < GLUE_F64(temp_f1, 0U);
                        var_f22 = second half of f64;
                        temp_f21 = (f32) ((f64) sp->unkC + (f64) fabsf(temp_f23));
                        var_a7 += 0x10;
                        sp->unkC = temp_f21;
                        if (temp_cond) {
                            temp_v0->unk11BD2 = 1U;
                        }
                    } while ((f32) ((u64) (var_t1 << 0x20) >> 0x20) < (second half of f64));
                }
                temp_v0->unk11BD0 = (u8) temp_v0->unk11BD2;
                var_f0 = sp0;
                if ((f64) var_f0 <= 1.0) {
                    var_f0 = 1.0f;
                    sp0 = 1.0f;
                }
                var_f0_2 = sp->unk4;
                temp_v0->unk1056C = (f32) (arg2->unk0 * var_f0);
                if ((f64) var_f0_2 <= 1.0) {
                    var_f0_2 = 1.0f;
                    sp->unk4 = 1.0f;
                }
                var_f0_3 = second half of f64;
                temp_v0->unk10570 = (f32) (arg2->unk4 * var_f0_2);
                if ((f64) sp->unk8 <= 1.0) {
                    var_f0_3 = 1.0f;
                    sp->unk8 = 1.0f;
                }
                var_f0_4 = sp->unkC;
                temp_v0->unk10574 = (f32) (arg2->unk8 * var_f0_3);
                if ((f64) var_f0_4 <= 1.0) {
                    var_f0_4 = 1.0f;
                    sp->unkC = 1.0f;
                }
                temp_v0->unk10578 = (f32) (arg2->unkC * var_f0_4);
                if (spC == var_f22) {
                    temp_v0->unk10578 = (f32) arg2->unkC;
                }
                temp_v1 = M2C_ERROR(/* unknown instruction: movf $v1, $zero, $fcc5 */);
                unksp30 = temp_v1;
                if (temp_v1 != 0) {
                    var_a7_2 = temp_s3_2;
                    var_t1_2 = 0;
                    do {
                        var_t1_2 += 1;
                        var_a7_2->unkC = (f32) (var_a7_2->unkC / spC);
                        var_a7_2->unk8 = (f32) (var_a7_2->unk8 / sp8);
                        var_a7_2->unk4 = (f32) (var_a7_2->unk4 / sp4);
                        var_a7_2->unk0 = (f32) (var_a7_2->unk0 / sp0);
                        var_a7_2 += 0x10;
                    } while ((f32) ((u64) (var_t1_2 << 0x20) >> 0x20) < var_f22);
                }
                __glOdysseyGenericConvolution(var_s4, temp_s3_2, unksp38);
                var_a7_3 = temp_s3_2;
                if (unksp30 != 0) {
                    var_t1_3 = 0;
                    do {
                        var_t1_3 += 1;
                        var_a7_3->unkC = (f32) (spC * var_a7_3->unkC);
                        var_a7_3->unk8 = (f32) (sp8 * var_a7_3->unk8);
                        var_a7_3->unk4 = (f32) (sp4 * var_a7_3->unk4);
                        var_a7_3->unk0 = (f32) (sp0 * var_a7_3->unk0);
                        var_a7_3 += 0x10;
                    } while ((f32) ((u64) (var_t1_3 << 0x20) >> 0x20) < var_f22);
                }
                var_f21 = temp_v0->unk10578;
                goto block_38;
            }
            return 0;
        }
        temp_a1_2 = M2C_ERROR(/* unknown instruction: movf $a1, $zero, $fcc0 */);
        if (temp_a2 != NULL) {
            var_a3 = (s64) temp_v0->unk2FC;
            var_f20 = 1.0f;
            var_a3->unk40 = 1;
            if (temp_a1_2 != 0) {
                goto block_81;
            }
            goto block_82;
        }
        if (temp_a1_2 != 0) {
            if (temp_a1_2 == 0) {

            } else {
block_81:
                var_a4 = temp_v0->unk2FC;
                var_f24 = 1.0f;
                var_a4->unk44 = 1;
            }
block_82:
            temp_v0->unk11BEB = 1;
        }
        sp10 = ceilf((bitwise f32) temp_a1_2, temp_a2, (? **) var_a3, (bitwise f32) var_a4, var_f20 * 0.5f);
        temp_f13_2 = (s64) ceilf(0.5f * ((f32) sp10 * ceilf(var_f24 * 0.5f)), second half of f64);
        temp_a5 = temp_f13_2 << 0;
        unksp38 = temp_a5;
        unksp40 = temp_a5;
        temp_v0_3 = __glOdysseyImageChainFree(second half of f64, temp_f13_2);
        var_s4 = temp_v0_3;
        if (temp_v0_3 == 0) {
            return 0;
        }
        __glOdysseyImageChainFree((f32 *) temp_v0_3, unksp38 + 1);
        temp_f1_2 = second half of f64;
        var_t1_4 = 0;
        var_a7_4 = temp_s3_2;
        if (var_s4->unk14 != 0) {
            var_f22_2 = var_f24 * var_f20;
            if (var_f22_2 > 0.0f) {
                do {
                    sp0 = (f32) ((second half of f64) + (f64) (second half of f64));
                    if ((f64) var_a7_4->unk0 < GLUE_F64(temp_f1_2, 0U)) {
                        temp_v0->unk11BD3 = 1U;
                    }
                    var_t1_4 += 1;
                    sp->unk4 = (f32) ((second half of f64) + (f64) (second half of f64));
                    if ((f64) var_a7_4->unk4 < GLUE_F64(temp_f1_2, 0U)) {
                        temp_v0->unk11BD3 = 1U;
                    }
                    temp_f19_2 = var_a7_4->unk8;
                    sp->unk8 = (f32) ((second half of f64) + (f64) fabsf(temp_f19_2));
                    if ((f64) temp_f19_2 < GLUE_F64(temp_f1_2, 0U)) {
                        temp_v0->unk11BD3 = 1U;
                    }
                    temp_f23_2 = var_a7_4->unkC;
                    temp_cond_2 = (f64) temp_f23_2 < GLUE_F64(temp_f1_2, 0U);
                    var_f22_2 = second half of f64;
                    temp_f21_2 = (f32) ((f64) sp->unkC + (f64) fabsf(temp_f23_2));
                    var_a7_4 += 0x10;
                    sp->unkC = temp_f21_2;
                    if (temp_cond_2) {
                        temp_v0->unk11BD3 = 1U;
                    }
                } while ((f32) ((u64) (var_t1_4 << 0x20) >> 0x20) < (second half of f64));
            }
            temp_v0->unk11BD0 = (u8) temp_v0->unk11BD3;
            var_f0_5 = sp0;
            if ((f64) var_f0_5 <= 1.0) {
                var_f0_5 = 1.0f;
                sp0 = 1.0f;
            }
            var_f0_6 = sp->unk4;
            temp_v0->unk110CC = (f32) (arg2->unk0 * var_f0_5);
            if ((f64) var_f0_6 <= 1.0) {
                var_f0_6 = 1.0f;
                sp->unk4 = 1.0f;
            }
            var_f0_7 = second half of f64;
            temp_v0->unk110D0 = (f32) (arg2->unk4 * var_f0_6);
            if ((f64) sp->unk8 <= 1.0) {
                var_f0_7 = 1.0f;
                sp->unk8 = 1.0f;
            }
            var_f0_8 = sp->unkC;
            temp_v0->unk110D4 = (f32) (arg2->unk8 * var_f0_7);
            if ((f64) var_f0_8 <= 1.0) {
                var_f0_8 = 1.0f;
                sp->unkC = 1.0f;
            }
            temp_v0->unk110D8 = (f32) (arg2->unkC * var_f0_8);
            var_t1_5 = 0;
            var_a7_5 = temp_s3_2;
            temp_v1_2 = M2C_ERROR(/* unknown instruction: movf $v1, $zero, $fcc6 */);
            if (var_f22_2 > 0.0f) {
                temp_v0->unk110D8 = (f32) arg2->unkC;
            }
            unksp30 = temp_v1_2;
            if (temp_v1_2 != 0) {
                do {
                    var_t1_5 += 1;
                    var_a7_5->unkC = (f32) (var_a7_5->unkC / spC);
                    var_a7_5->unk8 = (f32) (var_a7_5->unk8 / sp8);
                    var_a7_5->unk4 = (f32) (var_a7_5->unk4 / sp4);
                    var_a7_5->unk0 = (f32) (var_a7_5->unk0 / sp0);
                    var_a7_5 += 0x10;
                } while ((f32) ((u64) (var_t1_5 << 0x20) >> 0x20) < var_f22_2);
            }
            __glOdysseyGenericConvolution(var_s4, temp_s3_2, unksp38);
            var_a7_6 = temp_s3_2;
            if (unksp30 != 0) {
                var_t1_6 = 0;
                do {
                    var_t1_6 += 1;
                    var_a7_6->unkC = (f32) (spC * var_a7_6->unkC);
                    var_a7_6->unk8 = (f32) (sp8 * var_a7_6->unk8);
                    var_a7_6->unk4 = (f32) (sp4 * var_a7_6->unk4);
                    var_a7_6->unk0 = (f32) (sp0 * var_a7_6->unk0);
                    var_a7_6 += 0x10;
                } while ((f32) ((u64) (var_t1_6 << 0x20) >> 0x20) < var_f22_2);
            }
            var_f21 = temp_v0->unk110D8;
block_38:
            spC = var_f21;
            goto block_39;
        }
        return 0;
    }
    if (var_f20 == 0.0f) {
        temp_v0->unk2FC->unk40 = 1;
        if (var_f24 == 0.0f) {
            var_f24 = 1.0f;
            temp_v0->unk2FC->unk44 = 1;
        }
        var_f20 = 1.0f;
        temp_v0->unk11BEB = 1;
    }
    temp_s1_2 = (s64) ceilf(0.5f * ceilf(var_f20 * 0.5f)) << 0;
    unksp40 = temp_s1_2;
    temp_v0_4 = __glOdysseyImageChainFree();
    var_s4 = temp_v0_4;
    if (temp_v0_4 == 0) {
        return 0;
    }
    __glOdysseyImageChainFree((f32 *) temp_v0_4, temp_s1_2 + 1);
    if (var_s4->unk14 != 0) {
        temp_f22 = var_f24 * var_f20;
        unksp80 = temp_s1_2;
        if (temp_f22 > 0.0f) {
            var_a7_7 = temp_s3_2;
            var_t1_7 = 0;
            do {
                sp0 = (f32) ((f64) sp0 + (f64) fabsf(second half of f64));
                if ((second half of f64) < (second half of f64)) {
                    temp_v0->unk11BD1 = 1U;
                }
                var_t1_7 += 1;
                sp->unk4 = (f32) ((f64) sp->unk4 + (f64) fabsf(second half of f64));
                if ((second half of f64) < (second half of f64)) {
                    temp_v0->unk11BD1 = 1U;
                }
                sp->unk8 = (f32) ((f64) sp->unk8 + (f64) fabsf(second half of f64));
                if ((second half of f64) < (second half of f64)) {
                    temp_v0->unk11BD1 = 1U;
                }
                temp_f9 = var_a7_7->unkC;
                temp_cond_3 = (f64) temp_f9 < (second half of f64);
                temp_f7 = (f32) ((f64) sp->unkC + (f64) fabsf(temp_f9));
                var_a7_7 += 0x10;
                sp->unkC = temp_f7;
                if (temp_cond_3) {
                    temp_v0->unk11BD1 = 1U;
                }
            } while ((f32) ((u64) (var_t1_7 << 0x20) >> 0x20) < temp_f22);
        }
        temp_v0->unk11BD0 = (u8) temp_v0->unk11BD1;
        if ((f64) sp0 <= 1.0) {
            sp0 = 1.0f;
        }
        var_f0_9 = sp->unk4;
        temp_v0->unkFA0C = (f32) (second half of f64);
        if ((f64) var_f0_9 <= 1.0) {
            var_f0_9 = 1.0f;
            sp->unk4 = 1.0f;
        }
        temp_f13_3 = arg2->unk4 * var_f0_9;
        temp_v0->unkFA10 = temp_f13_3;
        if ((f64) sp->unk8 <= 1.0) {
            sp->unk8 = 1.0f;
        }
        var_f0_10 = sp->unkC;
        temp_v0->unkFA14 = (f32) (second half of f64);
        if ((f64) var_f0_10 <= 1.0) {
            var_f0_10 = 1.0f;
            sp->unkC = 1.0f;
        }
        temp_f15 = arg2->unkC * var_f0_10;
        temp_v0->unkFA18 = temp_f15;
        if (spC == temp_f22) {
            temp_v0->unkFA18 = (f32) arg2->unkC;
        }
        temp_v1_3 = M2C_ERROR(/* unknown instruction: movf $v1, $zero, $fcc5 */);
        unksp28 = temp_v1_3;
        if (temp_v1_3 != 0) {
            var_a7_8 = temp_s3_2;
            var_t1_8 = 0;
            do {
                var_t1_8 += 1;
                var_a7_8->unkC = (f32) (var_a7_8->unkC / spC);
                var_a7_8->unk8 = (f32) (var_a7_8->unk8 / sp8);
                var_a7_8->unk4 = (f32) (var_a7_8->unk4 / sp4);
                var_a7_8->unk0 = (f32) (var_a7_8->unk0 / sp0);
                var_a7_8 += 0x10;
            } while ((f32) ((u64) (var_t1_8 << 0x20) >> 0x20) < var_f20);
        }
        __glOdysseyMap1DFilterToAlphas(var_s4, temp_s3_2, unksp80, arg1, second half of f64, temp_f13_3, second half of f64, temp_f15, spC);
        var_a7_9 = temp_s3_2;
        if (unksp28 != 0) {
            var_t1_9 = 0;
            do {
                var_t1_9 += 1;
                var_a7_9->unkC = (f32) (spC * var_a7_9->unkC);
                var_a7_9->unk8 = (f32) (sp8 * var_a7_9->unk8);
                var_a7_9->unk4 = (f32) (sp4 * var_a7_9->unk4);
                var_a7_9->unk0 = (f32) (sp0 * var_a7_9->unk0);
                var_a7_9 += 0x10;
            } while ((f32) ((u64) (var_t1_9 << 0x20) >> 0x20) < var_f20);
        }
        spC = temp_v0->unkFA18;
block_39:
        var_s4->unk0 = 8;
        M2C_ERROR(/* unknown instruction: movf.s $f29, $f0, $fcc7 */);
        M2C_ERROR(/* unknown instruction: movf.s $f27, $f5, $fcc6 */);
        M2C_ERROR(/* unknown instruction: movf.s $f11, $f29, $fcc5 */);
        M2C_ERROR(/* unknown instruction: movf.s $f10, $f27, $fcc4 */);
        M2C_ERROR(/* unknown instruction: movf.s $f25, $f11, $fcc3 */);
        M2C_ERROR(/* unknown instruction: movf.s $f23, $f10, $fcc2 */);
        temp_a6 = temp_v0->unk11BD0;
        if (temp_a6 != 0) {
            goto block_40;
        }
        if ((temp_v0->unk11BD4 == 0x8016) && (temp_f6 = temp_v0->unk11E20, (M2C_ERROR(/* unknown instruction: movf.s $f8, $f23, $fcc0 */) <= temp_f6)) && (var_a7_10 = unksp40, (M2C_ERROR(/* unknown instruction: movf.s $f9, $f25, $fcc1 */) <= temp_f6))) {
            var_s4->unk4 = (void *) (sub_0d990000 + 0x2FF0);
        } else {
block_40:
            var_a7_10 = unksp40 < 6U;
            if (var_a7_10 == 0) {
                var_s4->unk4 = (void *) (sub_0d990000 + 0x3B40);
            } else {
                var_s4->unk4 = (void *) (sub_0d990000 + 0x2750);
            }
        }
        var_s4->unkC = 1;
        var_s4->unk8 = (s32) (var_s4->unk8 | 0x34);
        __glOdysseyImageChainFree((f32 *) unksp48, (s64) var_s4, unksp48->unk8, 0, (f32 *)8, (u8) unksp50, temp_a6, var_a7_10, arg2->unkC);
        return 1;
    }
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0xe0, 0xe4, 0x108, 0x10c, 0x110, 0x114, 0x118, 0x11c, 0x140, 0x144, 0x148, 0x14c, 0x150, 0x154, 0x158, 0x15c, 0x160, 0x164, 0x168, 0x16c, 0x170, 0x174], gap at: 0xf0. */
s32 RenderFunc_Convolve(f32 *arg0, void *arg1) {
    s64 sp188;
    s64 sp180;
    s64 sp178;
    s64 spD8;
    s64 spD0;
    f32 spA8;
    s32 sp88;
    s64 sp48;
    s32 sp28;
    f32 *temp_s5_2;
    f32 *temp_s7_2;
    s32 temp_a1;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_s5;
    s32 temp_s6;
    s32 temp_s7;
    s32 temp_t2;
    s32 temp_t3;
    s32 var_a0;
    s32 var_s0;
    s32 var_s1;
    s64 temp_a7_2;
    void *temp_s3;

    temp_s6 = arg0->unk10 - 1;
    temp_s3 = *(void **)0x1010;
    temp_a6 = temp_s3->unk7C38;
    temp_s5 = temp_s3->unk7BFC;
    var_s1 = temp_s3->unk96A4;
    temp_s7 = temp_s3->unk969C;
    sp28.unk4 = (s32) temp_s3->unk7CC8;
    sp28.unk8 = (s32) temp_s3->unk7CCC;
    sp28.unkC = (s32) temp_s3->unk7CD0;
    sp28.unk10 = (s32) temp_s3->unk7CD4;
    sp28.unk18 = (s32) temp_s3->unk7CDC;
    sp28.unk14 = (s32) temp_s3->unk7CD8;
    sp28 = temp_s3->unk7CC4;
    unksp100 = (s64) temp_a6;
    unkspF8 = (s64) temp_s3->unk7C3C;
    unkspF0 = (s64) temp_s3->unk7C34;
    unkspE8 = (s64) temp_s3->unk96A8;
    spD0 = (s64) temp_s3->unk96A0;
    sp48.unk10 = (s64) temp_s3->unk8BF8;
    sp48.unk18 = (s64) temp_s3->unk8C00;
    sp48.unk20 = (s64) temp_s3->unk8C08;
    sp48.unk28 = (s64) temp_s3->unk8C10;
    sp48.unk30 = (s64) temp_s3->unk8C18;
    sp48.unk38 = (s64) temp_s3->unk8C20;
    sp48.unk8 = (s64) temp_s3->unk8BF0;
    sp48 = temp_s3->unk8BE8;
    spD8 = (s64) temp_s3->unk8BE4;
    temp_a7 = temp_s3->unk8CFC;
    temp_a5 = temp_s3->unk8CF8;
    sp88.unk4 = (s32) temp_s3->unk8CF0;
    sp88.unk8 = (s32) temp_s3->unk8CF4;
    sp88.unkC = temp_a5;
    sp88.unk10 = temp_a7;
    sp88.unk14 = (s32) temp_s3->unk8D00;
    sp88.unk18 = (s32) temp_s3->unk8D04;
    sp88.unk1C = (s32) temp_s3->unk8D08;
    sp88 = temp_s3->unk8CEC;
    unksp130 = (s64) temp_s3->unk8D74;
    unksp128 = (s64) temp_s3->unk8D70;
    unksp120 = (s64) temp_s3->unk8D6C;
    unksp138 = (s64) temp_s3->unk8CE8;
    if (temp_s3->unk11BEB != 1) {
        sp180 = (s64) temp_s7;
        sp178 = (s64) temp_s5;
        temp_s5_2 = temp_s3 + 0x11A20;
        temp_s7_2 = temp_s3 + 0x119E4;
        sub_0d9a0000(&spA8, (s32) arg0, (s32) arg1, (s32) temp_s7_2, temp_s5_2, temp_a5, temp_a6, temp_a7);
        temp_s3->unk7BFC = (s32) (0x20000 | temp_s3->unk7BFC);
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 2);
        *(s32 *)0x1018 = 2;
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 1);
        temp_s3->unk96A4 = (s32) (temp_s3->unk96A4 & ~0x10000 & ~0x60000);
        *(void *)0x1018 = 2;
        temp_s3->unk96A4 = (s32) (0xFF7FFFFF & temp_s3->unk96A4);
        temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
        *(void *)0x1018 = 2;
        temp_s3->unk7CD8 = (s32) (-0x1000 & (0xFF000FFF & temp_s3->unk7CD8));
        temp_s3->unk7CDC = (s32) (-0x1000 & (0xFF000FFF & temp_s3->unk7CDC));
        temp_s3->unk7CD4 = (s32) (((((((temp_s3->unk7CD4 | 0x10000000) & ~0x3000 & ~0xC00 & ~0x300) | 0x4000) & ~0xE0) | 0x20) & ~0x1E) | 2);
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 0x200);
        *(void *)0x1018 = 2;
        temp_s3->unk7BFC = (s32) (0x20000 | temp_s3->unk7BFC);
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 2);
        *(void *)0x1018 = 2;
        temp_s3->unk7C00 = (s32) (0xFF7FFFFF & ((temp_s3->unk7C00 & ~0x180) | 0x80));
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 4);
        *(void *)0x1018 = 2;
        temp_s3->unk7C34 = (s32) (-0x40 & ((temp_s3->unk7C34 & ~0xE000 & ~0x1FC0) | 0xA00));
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 1);
        *(void *)0x1018 = 2;
        var_a0 = 0x7FF;
        temp_a1 = temp_s3->unk96A4;
        if (temp_s3->unk11BD0 != 0) {
            temp_s3->unk96A4 = (s32) (temp_a1 | 0x100000);
        } else {
            var_a0 = 0xFFF;
            temp_s3->unk96A4 = (s32) (temp_a1 & ~0x100000);
        }
        temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
        *(void *)0x1018 = 2;
        temp_t3 = (var_a0 << 0xC) & 0xFFF000;
        temp_t2 = var_a0 & 0xFFF;
        temp_s3->unk7C38 = (s32) (temp_t2 | (-0x1000 & (temp_t3 | (0xFF000FFF & temp_s3->unk7C38))));
        temp_s3->unk7C3C = (s32) (temp_t2 | (-0x1000 & (temp_t3 | (0xFF000FFF & temp_s3->unk7C3C))));
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 1);
        *(void *)0x1018 = 2;
        if (temp_s6 > 0) {
            sp188 = (s64) var_s1;
            var_s0 = 0;
            do {
                (sub_0d9a0000 - 0x34A0)(arg0, var_s0);
                __glOdysseyImageMovePixelsTexture(temp_s5_2, temp_s7_2, (s64) &spA8, 0);
                temp_s3->unk7C34 = (s32) ((-0x40 & temp_s3->unk7C34) | 8);
                var_s0 += 1;
                temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 1);
                *(void *)0x1018 = 2;
            } while (temp_s6 != var_s0);
            var_s1 = (s32) sp188;
        }
        sub_0d9a0000(arg0, (s32) &spA8, (s32) temp_s5_2);
        sub_0d9a0000(arg0, (s32) &spA8, (s32) sp, (s32) temp_s5_2, temp_s7_2);
        if (temp_s3->unk7B70 & 0x80) {
            temp_s3->unk96A4 = (s32) (temp_s3->unk96A4 & ~1);
        }
        temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
        *(void *)0x1018 = 2;
        temp_s3->unk7CC4 = sp28;
        temp_s3->unk7CC8 = (s32) sp28.unk4;
        temp_s3->unk7CCC = (s32) sp28.unk8;
        temp_s3->unk7CD0 = (s32) sp28.unkC;
        temp_s3->unk7CD4 = (s32) sp28.unk10;
        temp_s3->unk7CD8 = (s32) sp28.unk14;
        temp_s3->unk7CDC = (s32) sp28.unk18;
        temp_s3->unk969C = (s32) sp180;
        temp_s3->unk96A0 = (s32) spD0;
        temp_s3->unk96A4 = var_s1;
        temp_s3->unk96A8 = (s32) unkspE8;
        temp_s3->unk7C3C = (s32) unkspF8;
        temp_s3->unk7C38 = (s32) unksp100;
        temp_s3->unk7BFC = (s32) sp178;
        temp_s3->unk7C34 = (s32) unkspF0;
        temp_s3->unk8C20 = (s64) sp48.unk38;
        temp_s3->unk8C18 = (s64) sp48.unk30;
        temp_s3->unk8C10 = (s64) sp48.unk28;
        temp_s3->unk8C08 = (s64) sp48.unk20;
        temp_s3->unk8C00 = (s64) sp48.unk18;
        temp_s3->unk8BF8 = (s64) sp48.unk10;
        temp_s3->unk8BF0 = (s64) sp48.unk8;
        temp_s3->unk8BE8 = sp48;
        temp_s3->unk8BE4 = (s32) spD8;
        temp_s3->unk8D08 = (s32) sp88.unk1C;
        temp_s3->unk8D04 = (s32) sp88.unk18;
        temp_s3->unk8CFC = (s32) sp88.unk10;
        temp_s3->unk8CF8 = (s32) sp88.unkC;
        temp_s3->unk8CF4 = (s32) sp88.unk8;
        temp_s3->unk8CF0 = (s32) sp88.unk4;
        temp_s3->unk8CEC = sp88;
        temp_s3->unk8D00 = (s32) sp88.unk14;
        temp_s3->unk8D74 = (s32) unksp130;
        temp_s3->unk8D70 = (s32) unksp128;
        temp_s3->unk8D6C = (s32) unksp120;
        temp_s3->unk8CE8 = (s32) unksp138;
        temp_s3->unk16960 = (s32) (0x238203 | temp_s3->unk16960);
        *(void *)0x1018 = 2;
        return 1;
    }
    temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
    temp_s3->unk96A4 = (s32) (var_s1 & ~0x100000);
    *(void *)0x1018 = 2;
    temp_a7_2 = ~0x20000;
    temp_a6_2 = temp_s3->unk7BFC & temp_a7_2;
    temp_s3->unk7BFC = temp_a6_2;
    temp_a5_2 = temp_s3->unk16960 | 2;
    temp_s3->unk16960 = temp_a5_2;
    *(void *)0x1018 = 2;
    temp_s3->unk8CE8 = 2;
    temp_a4 = 0xFFFF0000 & temp_s3->unk8CEC;
    temp_s3->unk16960 = (s32) (0x10000 | temp_s3->unk16960);
    temp_s3->unk8D08 = (s32) (0xFFFF0000 & temp_s3->unk8D08);
    temp_s3->unk8D04 = (s32) (0xFFFF0000 & temp_s3->unk8D04);
    temp_s3->unk8D00 = (s32) (0xFFFF0000 & temp_s3->unk8D00);
    temp_s3->unk8CFC = (s32) (0xFFFF0000 & temp_s3->unk8CFC);
    temp_s3->unk8CF8 = (s32) (0xFFFF0000 & temp_s3->unk8CF8);
    temp_s3->unk8CF4 = (s32) (0xFFFF0000 & temp_s3->unk8CF4);
    temp_s3->unk8CF0 = (s32) (0xFFFF0000 & temp_s3->unk8CF0);
    temp_s3->unk8CEC = temp_a4;
    *(void *)0x1018 = 2;
    __glOdysseyImageMovePixelsTexture(arg0->unk48, arg0->unk44, (s64) arg1, 1, temp_a4, (s64) temp_a5_2, temp_a6_2, temp_a7_2);
    temp_s3->unk7CC4 = sp28;
    temp_s3->unk7CDC = (s32) sp28.unk18;
    temp_s3->unk7CD8 = (s32) sp28.unk14;
    temp_s3->unk7CD4 = (s32) sp28.unk10;
    temp_s3->unk7CD0 = (s32) sp28.unkC;
    temp_s3->unk7CCC = (s32) sp28.unk8;
    temp_s3->unk7CC8 = (s32) sp28.unk4;
    temp_s3->unk96A8 = (s32) unkspE8;
    temp_s3->unk969C = temp_s7;
    temp_s3->unk96A4 = var_s1;
    temp_s3->unk96A0 = (s32) spD0;
    temp_s3->unk7BFC = temp_s5;
    temp_s3->unk7C3C = (s32) unkspF8;
    temp_s3->unk7C38 = (s32) unksp100;
    temp_s3->unk7C34 = (s32) unkspF0;
    temp_s3->unk8C10 = (s64) sp48.unk28;
    temp_s3->unk8C00 = (s64) sp48.unk18;
    temp_s3->unk8BF8 = (s64) sp48.unk10;
    temp_s3->unk8BF0 = (s64) sp48.unk8;
    temp_s3->unk8BE8 = sp48;
    temp_s3->unk8C18 = (s64) sp48.unk30;
    temp_s3->unk8C08 = (s64) sp48.unk20;
    temp_s3->unk8C20 = (s64) sp48.unk38;
    temp_s3->unk8BE4 = (s32) spD8;
    temp_s3->unk8D08 = (s32) sp88.unk1C;
    temp_s3->unk8D04 = (s32) sp88.unk18;
    temp_s3->unk8D00 = (s32) sp88.unk14;
    temp_s3->unk8CFC = (s32) sp88.unk10;
    temp_s3->unk8CF8 = (s32) sp88.unkC;
    temp_s3->unk8CF4 = (s32) sp88.unk8;
    temp_s3->unk8CF0 = (s32) sp88.unk4;
    temp_s3->unk8CEC = sp88;
    temp_s3->unk8D74 = (s32) unksp130;
    temp_s3->unk8D70 = (s32) unksp128;
    temp_s3->unk8CE8 = (s32) unksp138;
    temp_s3->unk8D6C = (s32) unksp120;
    temp_s3->unk16960 = (s32) (0x238203 | temp_s3->unk16960);
    *(void *)0x1018 = 2;
    return 1;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x100, 0x104, 0x108, 0x10c, 0x160, 0x164, 0x168, 0x16c, 0x170, 0x174, 0x178, 0x17c, 0x180, 0x184, 0x188, 0x18c, 0x198, 0x19c, 0x1a0, 0x1a4], gap at: 0x118. */
s32 RenderFunc_FastConvolve(void *arg0, ? **arg1) {
    s64 sp1B8;
    s64 sp1B0;
    s64 sp1A8;
    f64 spF8;
    f64 spF0;
    f64 spE8;
    f64 spE0;
    s64 spD8;
    f64 spD0;
    f32 spC4;
    ?32 spC0;
    ?32 spBC;
    ?32 spB8;
    f32 spB4;
    f32 spB0;
    f32 spAC;
    ? *spA8;
    ? *sp88;
    s64 sp48;
    s32 sp28;
    s32 sp20;
    f32 sp1C;
    ?32 sp18;
    ?32 sp14;
    ?32 sp10;
    s32 spC;
    s32 sp8;
    f32 sp4;
    ? *sp0;
    ? (*var_s2)(void *, s32);
    f32 *temp_a1_2;
    f32 *temp_a2;
    f32 *temp_t0;
    f32 *var_s6;
    f32 temp_a3;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f15;
    f32 temp_f16;
    s32 temp_a1;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_s5;
    s32 var_a0;
    s32 var_s0;
    s64 temp_a5_3;
    void *temp_a3_2;
    void *temp_a4;
    void *temp_a5_2;
    void *temp_a6_2;
    void *temp_a7;
    void *temp_s4;

    temp_s5 = arg0->unk10 - 1;
    sp20 = arg1->unk20;
    sp1C = arg1->unk1C;
    sp18 = arg1->unk18;
    sp14 = arg1->unk14;
    sp10 = arg1->unk10;
    spC = arg1->unkC;
    sp8 = arg1->unk8;
    sp4 = arg1->unk4;
    sp0 = arg1->unk0;
    temp_s4 = *(void **)0x1010;
    sp28.unk4 = (s32) temp_s4->unk7CC8;
    sp28.unkC = (s32) temp_s4->unk7CD0;
    sp28.unk10 = (s32) temp_s4->unk7CD4;
    sp28.unk14 = (s32) temp_s4->unk7CD8;
    sp28.unk18 = (s32) temp_s4->unk7CDC;
    sp28.unk8 = (s32) temp_s4->unk7CCC;
    sp28 = temp_s4->unk7CC4;
    unksp150 = (s64) &__glim_Color4ubv;
    unksp148 = (s64) &__glim_Color4d;
    unksp140 = (s64) &__glim_Color4b;
    unksp138 = (s64) temp_s4->unk7BFC;
    unksp130 = (s64) temp_s4->unk7C34;
    unksp128 = (s64) temp_s4->unk7C38;
    unksp120 = (s64) temp_s4->unk7C3C;
    sp48.unk20 = (s64) temp_s4->unk8C08;
    sp48.unk38 = (s64) temp_s4->unk8C20;
    sp48.unk30 = (s64) temp_s4->unk8C18;
    sp48.unk28 = (s64) temp_s4->unk8C10;
    sp48.unk8 = (s64) temp_s4->unk8BF0;
    sp48.unk10 = (s64) temp_s4->unk8BF8;
    sp48.unk18 = (s64) temp_s4->unk8C00;
    sp48 = temp_s4->unk8BE8;
    unksp158 = (s64) &__glOdysseySoftClipClipLine;
    sp88.unk4 = &__glOdyim_SoftIndexub;
    sp88.unk8 = &__glOdyim_SoftIndexubv;
    sp88.unkC = &__glOdyim_SoftScratchColor3b;
    sp88.unk10 = &__glOdyim_SoftScratchColor3bv;
    sp88.unk14 = &__glOdyim_SoftScratchColor3d;
    sp88.unk18 = &__glOdyim_SoftScratchColor3dv;
    sp88.unk1C = &__glOdyim_SoftScratchColor3f;
    sp88 = &__glOdyim_SoftIndexsv;
    if (temp_s4->unk11BEB != 1) {
        spD0 = (bitwise f64) (f32) temp_s4->unk2FC->unk44;
        unksp110 = (s64) &__glOdyim_SoftScratchColor4uiv;
        unksp118 = (s64) &__glOdyim_SoftScratchColor4usv;
        spA8 = arg1->unk0;
        temp_a3 = arg1->unk4;
        spA8.unk4 = temp_a3;
        spA8.unk8 = (s32) arg1->unk8;
        spA8.unkC = (s32) arg1->unkC;
        spA8.unk10 = (?32) arg1->unk10;
        spA8.unk14 = (?32) arg1->unk14;
        spA8.unk18 = (?32) arg1->unk18;
        spA8.unk1C = (f32) arg1->unk1C;
        spA8.unk20 = (s32) arg1->unk20;
        temp_f12 = (f32) ((f64) (second half of f64) * (second half of f64));
        spD8 = (bitwise s64) temp_f12;
        ceilf((bitwise f32) &__glOdyim_SoftScratchColor4usv, &sp88, arg1, temp_a3, (bitwise f32) &__glOdyim_SoftScratchColor4uiv, &spA8, -0x100001, nanf, temp_f12, second half of f64);
        spE8 = second half of f64;
        spA8 = (? *) (second half of f64);
        temp_f12_2 = (f32) ((f64) ((bitwise f32) spD0 + (second half of f64)) * 0.5);
        spE0 = (bitwise f64) temp_f12_2;
        temp_f14 = spAC + ceilf(temp_f12_2, (? **) (second half of f64), (? **) 0.5, second half of f64);
        spF0 = (bitwise f64) temp_f14;
        spAC = temp_f14;
        temp_f0 = floorf(spD8, second half of f64, temp_f14);
        sp1B8 = (s64) &__glOdyim_SoftIndexs;
        temp_f15 = spB0 - temp_f0;
        spF8 = (bitwise f64) temp_f15;
        spB0 = temp_f15;
        temp_f0_2 = floorf((bitwise s64) temp_f12_2, second half of f64);
        spC0 = (?32) spF8;
        spBC = (?32) spF0;
        spB8 = second half of f64;
        temp_f16 = spB4 - temp_f0_2;
        spC4 = temp_f16;
        spB4 = temp_f16;
        temp_s4->unk7BFC = (s32) (0x20000 | temp_s4->unk7BFC);
        temp_s4->unk16960 = (s32) (temp_s4->unk16960 | 2);
        *(s32 *)0x1018 = 2;
        temp_s4->unk16960 = (s32) (temp_s4->unk16960 | 1);
        temp_s4->unk96A4 = (s32) ((s32) &__glim_Color4bv & ~0x10000 & ~0x60000);
        *(void *)0x1018 = 2;
        temp_s4->unk16960 = (s32) (0x200000 | temp_s4->unk16960);
        temp_s4->unk96A4 = (s32) (0xFF7FFFFF & (s32) &__glim_Color4bv);
        *(void *)0x1018 = 2;
        temp_s4->unk7CD8 = (s32) (-0x1000 & (0xFF000FFF & temp_s4->unk7CD8));
        temp_s4->unk7CDC = (s32) (-0x1000 & (0xFF000FFF & temp_s4->unk7CDC));
        temp_s4->unk7CD4 = (s32) (((((((temp_s4->unk7CD4 | 0x10000000) & ~0x3000 & ~0xC00 & ~0x300) | 0x4000) & ~0xE0) | 0x20) & ~0x1E) | 2);
        temp_s4->unk16960 = (s32) (temp_s4->unk16960 | 0x200);
        *(void *)0x1018 = 2;
        temp_s4->unk7BFC = (s32) (0x20000 | temp_s4->unk7BFC);
        temp_s4->unk16960 = (s32) (temp_s4->unk16960 | 2);
        *(void *)0x1018 = 2;
        temp_s4->unk7C00 = (s32) (0xFF7FFFFF & ((temp_s4->unk7C00 & ~0x180) | 0x80));
        temp_s4->unk16960 = (s32) (temp_s4->unk16960 | 4);
        *(void *)0x1018 = 2;
        temp_s4->unk7C34 = (s32) (-0x40 & ((temp_s4->unk7C34 & ~0xE000 & ~0x1FC0) | 0xA00));
        temp_s4->unk16960 = (s32) (temp_s4->unk16960 | 1);
        *(void *)0x1018 = 2;
        if (temp_s4->unk11BD0 != 0) {
            var_a0 = 0x7FF;
            temp_s4->unk96A4 = (s32) ((s32) &__glim_Color4bv | 0x100000);
        } else {
            var_a0 = 0xFFF;
            temp_s4->unk96A4 = (s32) (0xFFEFFFFF & (s32) &__glim_Color4bv);
        }
        temp_s4->unk16960 = (s32) (0x200000 | temp_s4->unk16960);
        *(void *)0x1018 = 2;
        temp_a6 = (var_a0 << 0xC) & 0xFFF000;
        temp_a5 = var_a0 & 0xFFF;
        sp1B0 = (s64) &__glOdyim_SoftScratchColor4us;
        temp_s4->unk7C3C = (s32) (temp_a5 | (-0x1000 & (temp_a6 | (0xFF000FFF & temp_s4->unk7C3C))));
        temp_s4->unk7C38 = (s32) (temp_a5 | (-0x1000 & (temp_a6 | (0xFF000FFF & temp_s4->unk7C38))));
        sp1A8 = (s64) &__glim_Color4bv;
        temp_s4->unk16960 = (s32) (temp_s4->unk16960 | 1);
        *(void *)0x1018 = 2;
        if (temp_s5 > 0) {
            var_s0 = 0;
            var_s6 = temp_s4 + 0x119E4;
            var_s2 = sub_0d9a0000 - 0x34A0;
            do {
                var_s2(arg0, var_s0);
                __glOdysseyImageMovePixelsTexture(var_s6, arg0->unk44, (s64) &spA8, 0);
                temp_s4->unk7C34 = (s32) ((-0x40 & temp_s4->unk7C34) | 8);
                var_s0 += 1;
                temp_s4->unk16960 = (s32) (temp_s4->unk16960 | 1);
                *(void *)0x1018 = 2;
            } while (temp_s5 != var_s0);
        } else {
            var_s6 = temp_s4 + 0x119E4;
            var_s2 = sub_0d9a0000 - 0x34A0;
        }
        temp_a1 = temp_s5 * 0xB60;
        (arg0->unk14 + temp_a1)->unk24 = (f32) temp_s4->unk11BEC->unk250;
        (arg0->unk14 + temp_a1)->unkB8 = (f32) temp_s4->unk11BEC->unk254;
        (arg0->unk14 + temp_a1)->unk14C = (f32) temp_s4->unk11BEC->unk258;
        temp_a7 = temp_s4->unk11BEC;
        temp_a6_2 = arg0->unk14 + temp_a1;
        temp_a6_2->unk1E0 = (f32) temp_a7->unk25C;
        temp_a5_2 = arg0->unk14 + temp_a1;
        temp_a5_2->unk28 = (f32) temp_s4->unk2B8;
        temp_a4 = arg0->unk14 + temp_a1;
        temp_a4->unkBC = (f32) temp_s4->unk2BC;
        temp_a3_2 = arg0->unk14 + temp_a1;
        temp_a3_2->unk150 = (f32) temp_s4->unk2C0;
        temp_a2 = arg0->unk14 + temp_a1;
        temp_a2->unk1E4 = (f32) temp_s4->unk2C4;
        __glOdysseyProgramTexFilter(arg0->unk14 + temp_a1, (void *) temp_a1, temp_a2, temp_a3_2, temp_a4, temp_a5_2, temp_a6_2, temp_a7);
        temp_s4->unk7BFC = (s32) (0xFFFDFFFF & temp_s4->unk7BFC);
        temp_s4->unk16960 = (s32) (temp_s4->unk16960 | 2);
        *(void *)0x1018 = 2;
        temp_s4->unk96A4 = (s32) (0xFFEFFFFF & (s32) &__glim_Color4bv);
        temp_s4->unk16960 = (s32) (0x200000 | temp_s4->unk16960);
        *(void *)0x1018 = 2;
        var_s2(arg0, temp_s5);
        spC4 = sp1C;
        spC0 = sp18;
        spBC = sp14;
        spB8 = sp10;
        if (temp_s4->unk119EF != 0) {
            temp_s4->unk7CD4 = 0;
            temp_s4->unk16960 = (s32) (temp_s4->unk16960 | 0x200);
            *(void *)0x1018 = 2;
            __glOdysseyImageMovePixelsTexture(arg0->unk48, var_s6, (s64) &spA8, 1);
        } else {
            M2C_ERROR(/* Read from unset register $t9 */)(arg0->unk48, var_s6, &spA8, 1, 1);
        }
        if (temp_s4->unk7B70 & 0x80) {
            temp_s4->unk96A4 = (s32) ((s32) &__glim_Color4bv & ~1);
        }
        temp_s4->unk16960 = (s32) (0x200000 | temp_s4->unk16960);
        *(void *)0x1018 = 2;
        temp_s4->unk7CDC = (s32) sp28.unk18;
        temp_s4->unk7CD8 = (s32) sp28.unk14;
        temp_s4->unk7CD4 = (s32) sp28.unk10;
        temp_s4->unk7CD0 = (s32) sp28.unkC;
        temp_s4->unk7CCC = (s32) sp28.unk8;
        temp_s4->unk7CC8 = (s32) sp28.unk4;
        temp_s4->unk7CC4 = sp28;
        temp_s4->unk96A8 = (s32) unksp148;
        temp_s4->unk96A4 = (s32) sp1A8;
        temp_s4->unk96A0 = (s32) unksp140;
        temp_s4->unk969C = (s32) unksp150;
        temp_s4->unk7C3C = (s32) unksp120;
        temp_s4->unk7C38 = (s32) unksp128;
        temp_s4->unk7C34 = (s32) unksp130;
        temp_s4->unk7BFC = (s32) unksp138;
        temp_s4->unk8C20 = (s64) sp48.unk38;
        temp_s4->unk8C18 = (s64) sp48.unk30;
        temp_s4->unk8C10 = (s64) sp48.unk28;
        temp_s4->unk8C08 = (s64) sp48.unk20;
        temp_s4->unk8C00 = (s64) sp48.unk18;
        temp_s4->unk8BF8 = (s64) sp48.unk10;
        temp_s4->unk8BF0 = (s64) sp48.unk8;
        temp_s4->unk8BE8 = sp48;
        temp_s4->unk8BE4 = (s32) unksp158;
        temp_s4->unk8D08 = (? *) sp88.unk1C;
        temp_s4->unk8D04 = (? *) sp88.unk18;
        temp_s4->unk8D00 = (? *) sp88.unk14;
        temp_s4->unk8CFC = (? *) sp88.unk10;
        temp_s4->unk8CF8 = (? *) sp88.unkC;
        temp_s4->unk8CF4 = (? *) sp88.unk8;
        temp_s4->unk8CF0 = (? *) sp88.unk4;
        temp_s4->unk8CEC = sp88;
        temp_s4->unk8CE8 = (? *) sp1B8;
        temp_s4->unk8D6C = (s32) unksp110;
        temp_s4->unk8D70 = (? *) sp1B0;
        temp_s4->unk8D74 = (s32) unksp118;
        temp_s4->unk16960 = (s32) (0x238203 | temp_s4->unk16960);
        *(void *)0x1018 = 2;
        return 1;
    }
    temp_s4->unk96A4 = (s32) (0xFFEFFFFF & (s32) &__glim_Color4bv);
    temp_s4->unk16960 = (s32) (0x200000 | temp_s4->unk16960);
    *(void *)0x1018 = 2;
    temp_s4->unk7BFC = (s32) (0xFFFDFFFF & temp_s4->unk7BFC);
    temp_s4->unk16960 = (s32) (temp_s4->unk16960 | 2);
    *(void *)0x1018 = 2;
    temp_s4->unk8CE8 = (? *)2;
    temp_s4->unk16960 = (s32) (0x10000 | temp_s4->unk16960);
    temp_a5_3 = 0xFFFF0000 & (s32) &__glOdyim_SoftScratchColor3d;
    temp_s4->unk8D08 = (? *) (0xFFFF0000 & (s32) &__glOdyim_SoftScratchColor3f);
    temp_s4->unk8D04 = (? *) (0xFFFF0000 & (s32) &__glOdyim_SoftScratchColor3dv);
    temp_s4->unk8D00 = (? *) temp_a5_3;
    temp_s4->unk8CFC = (? *) (0xFFFF0000 & (s32) &__glOdyim_SoftScratchColor3bv);
    temp_s4->unk8CF8 = (? *) (0xFFFF0000 & (s32) &__glOdyim_SoftScratchColor3b);
    temp_s4->unk8CF4 = (? *) (0xFFFF0000 & (s32) &__glOdyim_SoftIndexubv);
    temp_s4->unk8CF0 = (? *) (0xFFFF0000 & (s32) &__glOdyim_SoftIndexub);
    temp_s4->unk8CEC = (? *) (0xFFFF0000 & (s32) &__glOdyim_SoftIndexsv);
    *(void *)0x1018 = 2;
    temp_a1_2 = arg0->unk44;
    unksp110 = (s64) &__glOdyim_SoftScratchColor4uiv;
    unksp118 = (s64) &__glOdyim_SoftScratchColor4usv;
    temp_t0 = arg0->unk48;
    if (temp_a1_2->unkB != 0) {
        __glOdysseyImageMovePixelsTexture(temp_t0, temp_a1_2, (s64) arg1, 1, (s32) &__glOdyim_SoftScratchColor4uiv, temp_a5_3, -0x100001, 0xFFFDFFFF);
    } else {
        __glOdysseyImageMovePixelsCopy(temp_t0, temp_a1_2, (s64) arg1, 1, 1, temp_a5_3, -0x100001, 0xFFFDFFFF);
    }
    temp_s4->unk7CC4 = sp28;
    temp_s4->unk7CDC = (s32) sp28.unk18;
    temp_s4->unk7CD8 = (s32) sp28.unk14;
    temp_s4->unk7CD4 = (s32) sp28.unk10;
    temp_s4->unk7CD0 = (s32) sp28.unkC;
    temp_s4->unk7CCC = (s32) sp28.unk8;
    temp_s4->unk7CC8 = (s32) sp28.unk4;
    temp_s4->unk96A8 = (s32) unksp148;
    temp_s4->unk96A4 = (s32) &__glim_Color4bv;
    temp_s4->unk96A0 = (s32) unksp140;
    temp_s4->unk969C = (s32) unksp150;
    temp_s4->unk7C3C = (s32) unksp120;
    temp_s4->unk7C38 = (s32) unksp128;
    temp_s4->unk7C34 = (s32) unksp130;
    temp_s4->unk7BFC = (s32) unksp138;
    temp_s4->unk8C10 = (s64) sp48.unk28;
    temp_s4->unk8C00 = (s64) sp48.unk18;
    temp_s4->unk8BF8 = (s64) sp48.unk10;
    temp_s4->unk8BF0 = (s64) sp48.unk8;
    temp_s4->unk8BE8 = sp48;
    temp_s4->unk8C18 = (s64) sp48.unk30;
    temp_s4->unk8C20 = (s64) sp48.unk38;
    temp_s4->unk8C08 = (s64) sp48.unk20;
    temp_s4->unk8BE4 = (s32) unksp158;
    temp_s4->unk8D08 = (? *) sp88.unk1C;
    temp_s4->unk8D04 = (? *) sp88.unk18;
    temp_s4->unk8D00 = (? *) sp88.unk14;
    temp_s4->unk8CFC = (? *) sp88.unk10;
    temp_s4->unk8CF8 = (? *) sp88.unkC;
    temp_s4->unk8CF0 = (? *) sp88.unk4;
    temp_s4->unk8CEC = sp88;
    temp_s4->unk8CF4 = (? *) sp88.unk8;
    temp_s4->unk8D70 = &__glOdyim_SoftScratchColor4us;
    temp_s4->unk8CE8 = &__glOdyim_SoftIndexs;
    temp_s4->unk8D6C = (s32) unksp110;
    temp_s4->unk8D74 = (s32) unksp118;
    temp_s4->unk16960 = (s32) (0x238203 | temp_s4->unk16960);
    *(void *)0x1018 = 2;
    return 1;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0xe0, 0xe4, 0x100, 0x104, 0x128, 0x12c, 0x140, 0x144, 0x158, 0x15c, 0x160, 0x164, 0x168, 0x16c, 0x170, 0x174, 0x178, 0x17c, 0x180, 0x184, 0x188, 0x18c], gap at: 0xf0. */
s32 RenderFunc_Convolve24BitMode(f32 *arg0, void *arg1) {
    s64 sp198;
    s64 sp190;
    s64 spD8;
    s64 spD0;
    f32 spA8;
    s32 sp88;
    s64 sp48;
    s32 sp28;
    ? (*var_s1)(f32 *, s32, s32, s32, s32, s32, s32, s32);
    f32 *temp_a2_2;
    f32 *temp_a2_3;
    f32 *temp_a4;
    f32 *temp_s7_2;
    f32 *var_s6;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_6;
    s32 temp_a4_7;
    s32 temp_a4_8;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_6;
    s32 temp_a5_8;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a6_6;
    s32 temp_a6_7;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_a7_7;
    s32 temp_a7_8;
    s32 temp_s5;
    s32 temp_s6;
    s32 temp_s7;
    s32 temp_t1;
    s32 temp_t3;
    s32 var_a6;
    s32 var_s0;
    s64 temp_a1;
    s64 temp_a5_7;
    s64 temp_a7_4;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a4_4;
    void *temp_a4_5;
    void *temp_a5_4;
    void *temp_a5_5;
    void *temp_a6_4;
    void *temp_a6_5;
    void *temp_a7_5;
    void *temp_a7_6;
    void *temp_s3;

    temp_s5 = arg0->unk10 - 1;
    temp_s3 = *(void **)0x1010;
    temp_s6 = temp_s3->unk96A4;
    temp_s7 = temp_s3->unk969C;
    sp28.unk4 = (s32) temp_s3->unk7CC8;
    sp28.unk8 = (s32) temp_s3->unk7CCC;
    sp28.unkC = (s32) temp_s3->unk7CD0;
    sp28.unk14 = (s32) temp_s3->unk7CD8;
    sp28.unk18 = (s32) temp_s3->unk7CDC;
    sp28.unk10 = (s32) temp_s3->unk7CD4;
    sp28 = temp_s3->unk7CC4;
    unksp120 = (s64) temp_s3->unk7C34;
    unksp118 = (s64) temp_s3->unk7C38;
    unksp110 = (s64) temp_s3->unk7C3C;
    unksp108 = (s64) temp_s3->unk7BFC;
    unkspF8 = (s64) temp_s3->unk96A8;
    unkspF0 = (s64) temp_s3->unk96A0;
    sp48.unk18 = (s64) temp_s3->unk8C00;
    sp48.unk20 = (s64) temp_s3->unk8C08;
    sp48.unk28 = (s64) temp_s3->unk8C10;
    sp48.unk38 = (s64) temp_s3->unk8C20;
    sp48.unk30 = (s64) temp_s3->unk8C18;
    sp48.unk8 = (s64) temp_s3->unk8BF0;
    sp48.unk10 = (s64) temp_s3->unk8BF8;
    sp48 = temp_s3->unk8BE8;
    unkspE8 = (s64) temp_s3->unk8BE4;
    sp88.unk4 = (s32) temp_s3->unk8CF0;
    sp88.unk8 = (s32) temp_s3->unk8CF4;
    sp88.unkC = (s32) temp_s3->unk8CF8;
    sp88.unk10 = (s32) temp_s3->unk8CFC;
    sp88.unk14 = (s32) temp_s3->unk8D00;
    sp88.unk18 = (s32) temp_s3->unk8D04;
    sp88.unk1C = (s32) temp_s3->unk8D08;
    sp88 = temp_s3->unk8CEC;
    temp_a5 = temp_s3->unk8D6C;
    temp_a6 = temp_s3->unk8D70;
    temp_a7 = temp_s3->unk8D74;
    unksp150 = (s64) temp_a7;
    unksp130 = (s64) temp_a6;
    unksp138 = (s64) temp_a5;
    unksp148 = (s64) temp_s3->unk8CE8;
    if (temp_s3->unk11BEB != 1) {
        sp198 = (s64) temp_s7;
        temp_a4 = temp_s3 + 0x11A20;
        temp_s7_2 = temp_s3 + 0x119E4;
        spD8 = (s64) temp_a4;
        sub_0d9a0000(&spA8, (s32) arg0, (s32) arg1, (s32) temp_s7_2, temp_a4, temp_a5, temp_a6, temp_a7);
        temp_s3->unk7BFC = (s32) (0x20000 | temp_s3->unk7BFC);
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 2);
        *(s32 *)0x1018 = 2;
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 1);
        temp_s3->unk96A4 = (s32) (0xFFF9FFFF & (temp_s3->unk96A4 & ~0x10000));
        *(void *)0x1018 = 2;
        temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
        temp_s3->unk96A4 = (s32) (0xFF7FFFFF & temp_s3->unk96A4);
        *(void *)0x1018 = 2;
        temp_s3->unk7CD8 = (s32) (-0x1000 & (0xFF000FFF & temp_s3->unk7CD8));
        temp_s3->unk7CDC = (s32) (-0x1000 & (0xFF000FFF & temp_s3->unk7CDC));
        temp_s3->unk7CD4 = (s32) (((((((temp_s3->unk7CD4 | 0x10000000) & ~0x3000 & ~0xC00 & ~0x300) | 0x4000) & ~0xE0) | 0x20) & ~0x1E) | 2);
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 0x200);
        *(void *)0x1018 = 2;
        temp_s3->unk7BFC = (s32) (0x20000 | temp_s3->unk7BFC);
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 2);
        *(void *)0x1018 = 2;
        temp_s3->unk7C00 = (s32) (0xFF7FFFFF & ((temp_s3->unk7C00 & ~0x180) | 0x80));
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 4);
        *(void *)0x1018 = 2;
        temp_s3->unk7C34 = (s32) (-0x40 & ((-0x1FC1 & (0xFFFF1FFF & temp_s3->unk7C34)) | 0xA00));
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 1);
        *(void *)0x1018 = 2;
        var_a6 = 0x7FF;
        temp_a7_2 = temp_s3->unk96A4;
        if (temp_s3->unk11BD0 != 0) {
            temp_s3->unk96A4 = (s32) (temp_a7_2 | 0x100000);
        } else {
            var_a6 = 0xFFF;
            temp_s3->unk96A4 = (s32) (0xFFEFFFFF & temp_a7_2);
        }
        temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
        *(void *)0x1018 = 2;
        temp_s3->unk96A4 = (s32) (0xFFF9FFFF & temp_s3->unk96A4);
        temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
        *(void *)0x1018 = 2;
        temp_t3 = 0xFFF000 & (var_a6 << 0xC);
        temp_t1 = var_a6 & 0xFFF;
        sp190 = (s64) temp_s6;
        temp_s3->unk7C38 = (s32) (temp_t1 | (-0x1000 & (temp_t3 | (0xFF000FFF & temp_s3->unk7C38))));
        temp_s3->unk7C3C = (s32) (temp_t1 | (-0x1000 & (temp_t3 | (0xFF000FFF & temp_s3->unk7C3C))));
        var_s6 = temp_s3 + 0x11A5C;
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 1);
        var_s1 = sub_0d9a0000 - 0x34A0;
        *(void *)0x1018 = 2;
        if (temp_s5 > 0) {
            var_s0 = 0;
            do {
                var_s1(arg0, var_s0);
                __glOdysseyImageMovePixelsTexture(var_s6, temp_s7_2, (s64) &spA8, 0);
                temp_s3->unk7C34 = (s32) ((-0x40 & temp_s3->unk7C34) | 8);
                var_s0 += 1;
                temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 1);
                *(void *)0x1018 = 2;
            } while (temp_s5 != var_s0);
        } else {
            var_s6 = temp_s3 + 0x11A5C;
            var_s1 = sub_0d9a0000 - 0x34A0;
        }
        temp_a7_3 = 0xFFF9FFFF & temp_s3->unk96A4;
        temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
        temp_a6_2 = 0x40000 | temp_a7_3;
        temp_a5_2 = 0xFFEFFFFF & temp_a6_2;
        temp_s3->unk96A4 = temp_a5_2;
        *(void *)0x1018 = 2;
        temp_a4_2 = temp_s3->unk7C34;
        temp_a3 = 0xFFFF1FFF & temp_a4_2;
        temp_s3->unk7C3C = (s32) ((-0x1000 & ((0xFF000FFF & temp_s3->unk7C3C) | 0x1000)) | 1);
        temp_a2 = (-0x1FC1 & temp_a3) | 0xA00;
        temp_s3->unk7C38 = (s32) ((-0x1000 & ((0xFF000FFF & temp_s3->unk7C38) | 0x1000)) | 1);
        temp_s3->unk7C34 = (s32) (-0x40 & temp_a2);
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 1);
        *(void *)0x1018 = 2;
        var_s1(arg0, temp_s5, temp_a2, temp_a3, temp_a4_2, temp_a5_2, temp_a6_2, temp_a7_3);
        __glOdysseyImageMovePixelsTexture(temp_s7_2, var_s6, (s64) &spA8, 0);
        temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
        temp_s3->unk96A4 = (s32) (0xFFEFFFFF & (temp_s3->unk96A4 | 0x60000));
        *(void *)0x1018 = 2;
        temp_s3->unk7C34 = (s32) (0xFFFF1FFF & (-0x40 & temp_s3->unk7C34));
        temp_s3->unk7C3C = (s32) ((-0x1000 & ((0xFF000FFF & temp_s3->unk7C3C) | 0x1000)) | 1);
        temp_s3->unk7C38 = (s32) ((-0x1000 & ((0xFF000FFF & temp_s3->unk7C38) | 0x1000)) | 1);
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 1);
        *(void *)0x1018 = 2;
        __glOdysseyImageMovePixelsTexture((f32 *) spD8, var_s6, (s64) &spA8, 0);
        temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
        temp_s3->unk96A4 = (s32) (0x40000 | (0xFFF9FFFF & (0xFFEFFFFF & temp_s3->unk96A4)));
        *(void *)0x1018 = 2;
        temp_a7_4 = (-0x1FC1 & temp_s3->unk7C34) | 0xA00;
        temp_a6_3 = 0xFFF000 | temp_s3->unk7C3C | 0xFFF;
        temp_s3->unk7C3C = temp_a6_3;
        temp_s3->unk7C38 = (s32) (0xFFF000 | temp_s3->unk7C38 | 0xFFF);
        temp_a5_3 = (-0x40 & temp_a7_4) | 0x28 | 0xE000;
        temp_s3->unk7C34 = temp_a5_3;
        temp_a4_3 = temp_s3->unk16960 | 1;
        temp_s3->unk16960 = temp_a4_3;
        *(void *)0x1018 = 2;
        __glOdysseyImageMovePixelsTexture((f32 *) spD8, temp_s7_2, (s64) &spA8, 0, temp_a4_3, (s64) temp_a5_3, temp_a6_3, temp_a7_4);
        temp_s3->unk7BFC = (s32) (0xFFFDFFFF & temp_s3->unk7BFC);
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 2);
        *(void *)0x1018 = 2;
        temp_a1 = temp_s5 * 0xB60;
        (arg0->unk14 + temp_a1)->unk24 = 0.0f;
        (arg0->unk14 + temp_a1)->unkB8 = 0.0f;
        temp_a7_5 = arg0->unk14 + temp_a1;
        temp_a7_5->unk14C = 0.0f;
        temp_a6_4 = arg0->unk14 + temp_a1;
        temp_a6_4->unk1E0 = 0.0f;
        temp_a5_4 = arg0->unk14 + temp_a1;
        temp_a5_4->unk28 = 0.00024414062f;
        temp_a4_4 = arg0->unk14 + temp_a1;
        temp_a4_4->unkBC = 0.00024414062f;
        temp_a3_2 = arg0->unk14 + temp_a1;
        temp_a3_2->unk150 = 0.00024414062f;
        temp_a2_2 = arg0->unk14 + temp_a1;
        temp_a2_2->unk1E4 = 0.00024414062f;
        spD0 = temp_a1;
        __glOdysseyProgramTexFilter(arg0->unk14 + temp_a1, (void *) temp_a1, temp_a2_2, temp_a3_2, temp_a4_4, temp_a5_4, temp_a6_4, temp_a7_5);
        temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
        temp_s3->unk96A4 = (s32) (0xFFEFFFFF & temp_s3->unk96A4);
        *(void *)0x1018 = 2;
        var_s1(arg0, temp_s5);
        __glOdysseyImageMovePixelsTexture(var_s6, arg0->unk44, (s64) &spA8, 0);
        (arg0->unk14 + spD0)->unk24 = 1.0f;
        (arg0->unk14 + spD0)->unkB8 = 1.0f;
        temp_a7_6 = arg0->unk14 + spD0;
        temp_a7_6->unk14C = 1.0f;
        temp_a6_5 = arg0->unk14 + spD0;
        temp_a6_5->unk1E0 = 1.0f;
        temp_a5_5 = arg0->unk14 + spD0;
        temp_a5_5->unk28 = 0.0f;
        temp_a4_5 = arg0->unk14 + spD0;
        temp_a4_5->unkBC = 0.0f;
        temp_a3_3 = arg0->unk14 + spD0;
        temp_a3_3->unk150 = 0.0f;
        temp_a2_3 = arg0->unk14 + spD0;
        temp_a2_3->unk1E4 = 0.0f;
        __glOdysseyProgramTexFilter(arg0->unk14 + spD0, (void *) spD0, temp_a2_3, temp_a3_3, temp_a4_5, temp_a5_5, temp_a6_5, temp_a7_6);
        temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
        temp_s3->unk96A4 = (s32) (0xFFEFFFFF & temp_s3->unk96A4);
        *(void *)0x1018 = 2;
        var_s1(arg0, temp_s5);
        temp_s3->unk7BFC = (s32) (0x20000 | temp_s3->unk7BFC);
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 2);
        *(void *)0x1018 = 2;
        temp_s3->unk7C3C = (s32) (0xFFF000 | temp_s3->unk7C3C | 0xFFF);
        temp_s3->unk7C38 = (s32) (0xFFF000 | temp_s3->unk7C38 | 0xFFF);
        temp_s3->unk7C34 = (s32) ((-0x40 & ((-0x1FC1 & temp_s3->unk7C34) | 0x200)) | 8 | 0xE000);
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 1);
        *(void *)0x1018 = 2;
        __glOdysseyImageMovePixelsTexture(var_s6, (f32 *) spD8, (s64) &spA8, 0);
        temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
        temp_s3->unk96A4 = (s32) (0xFFF9FFFF & temp_s3->unk96A4);
        *(void *)0x1018 = 2;
        temp_s3->unk7C34 = (s32) ((0xFFFF1FFF & ((-0x40 & ((-0x1FC1 & temp_s3->unk7C34) | 0x200)) | 8)) | 0x4000);
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 1);
        *(void *)0x1018 = 2;
        temp_a6_6 = temp_s3->unk7C3C;
        temp_a5_6 = 0xFFF000 | temp_a6_6 | 0xFFF;
        temp_s3->unk7C3C = temp_a5_6;
        temp_a7_7 = 0xFFF000 | temp_s3->unk7C38 | 0xFFF;
        temp_s3->unk7C38 = temp_a7_7;
        temp_a4_6 = temp_s3->unk16960 | 1;
        temp_s3->unk16960 = temp_a4_6;
        *(void *)0x1018 = 2;
        __glOdysseyImageMovePixelsTexture((f32 *) spD8, var_s6, (s64) &spA8, 0, temp_a4_6, (s64) temp_a5_6, temp_a6_6, (s64) temp_a7_7);
        temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
        temp_a5_7 = 0xFFEFFFFF & temp_s3->unk96A4;
        temp_a4_7 = 0xFFF9FFFF & temp_a5_7;
        temp_s3->unk96A4 = temp_a4_7;
        *(void *)0x1018 = 2;
        temp_s3->unk7C3C = (s32) (0xFFF000 | temp_s3->unk7C3C | 0xFFF);
        temp_s3->unk7C38 = (s32) (0xFFF000 | temp_s3->unk7C38 | 0xFFF);
        temp_s3->unk7C34 = (s32) (0xFFFF1FFF & ((-0x40 & ((-0x1FC1 & temp_s3->unk7C34) | 0xA00)) | 8));
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 1);
        *(void *)0x1018 = 2;
        __glOdysseyImageMovePixelsTexture((f32 *) spD8, temp_s7_2, (s64) &spA8, 0, temp_a4_7, temp_a5_7);
        sub_0d9a0000(arg0, (s32) &spA8, (s32) spD8);
        sub_0d9a0000(arg0, (s32) &spA8, (s32) sp, (s32) spD8, temp_s7_2);
        if (temp_s3->unk7B70 & 0x80) {
            temp_s3->unk96A4 = (s32) (temp_s3->unk96A4 & ~1);
        }
        temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
        *(void *)0x1018 = 2;
        temp_s3->unk7CDC = (s32) sp28.unk18;
        temp_s3->unk7CD8 = (s32) sp28.unk14;
        temp_s3->unk7CD4 = (s32) sp28.unk10;
        temp_s3->unk7CD0 = (s32) sp28.unkC;
        temp_s3->unk7CCC = (s32) sp28.unk8;
        temp_s3->unk7CC8 = (s32) sp28.unk4;
        temp_s3->unk7CC4 = sp28;
        temp_s3->unk96A8 = (s32) unkspF8;
        temp_s3->unk96A4 = (s32) sp190;
        temp_s3->unk96A0 = (s32) unkspF0;
        temp_s3->unk969C = (s32) sp198;
        temp_s3->unk7C3C = (s32) unksp110;
        temp_s3->unk7C38 = (s32) unksp118;
        temp_s3->unk7C34 = (s32) unksp120;
        temp_s3->unk7BFC = (s32) unksp108;
        temp_s3->unk8C20 = (s64) sp48.unk38;
        temp_s3->unk8C18 = (s64) sp48.unk30;
        temp_s3->unk8C10 = (s64) sp48.unk28;
        temp_s3->unk8C08 = (s64) sp48.unk20;
        temp_s3->unk8C00 = (s64) sp48.unk18;
        temp_s3->unk8BF8 = (s64) sp48.unk10;
        temp_s3->unk8BF0 = (s64) sp48.unk8;
        temp_s3->unk8BE8 = sp48;
        temp_s3->unk8BE4 = (s32) unkspE8;
        temp_s3->unk8D08 = (s32) sp88.unk1C;
        temp_s3->unk8D04 = (s32) sp88.unk18;
        temp_s3->unk8D00 = (s32) sp88.unk14;
        temp_s3->unk8CFC = (s32) sp88.unk10;
        temp_s3->unk8CF8 = (s32) sp88.unkC;
        temp_s3->unk8CF4 = (s32) sp88.unk8;
        temp_s3->unk8CF0 = (s32) sp88.unk4;
        temp_s3->unk8CEC = sp88;
        temp_s3->unk8D70 = (s32) unksp130;
        temp_s3->unk8D6C = (s32) unksp138;
        temp_s3->unk8CE8 = (s32) unksp148;
        temp_s3->unk8D74 = (s32) unksp150;
        temp_s3->unk16960 = (s32) (0x238203 | temp_s3->unk16960);
        *(void *)0x1018 = 2;
        return 1;
    }
    temp_s3->unk96A4 = (s32) (0xFFEFFFFF & temp_s6);
    temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
    *(void *)0x1018 = 2;
    temp_s3->unk7BFC = (s32) (0xFFFDFFFF & temp_s3->unk7BFC);
    temp_a7_8 = temp_s3->unk16960 | 2;
    temp_s3->unk16960 = temp_a7_8;
    *(void *)0x1018 = 2;
    temp_s3->unk8CE8 = 2;
    temp_a6_7 = 0xFFFF0000 & temp_s3->unk8CEC;
    temp_a5_8 = 0xFFFF0000 & temp_s3->unk8CF0;
    temp_a4_8 = 0xFFFF0000 & temp_s3->unk8CF4;
    temp_s3->unk16960 = (s32) (0x10000 | temp_s3->unk16960);
    temp_s3->unk8D08 = (s32) (0xFFFF0000 & temp_s3->unk8D08);
    temp_s3->unk8D04 = (s32) (0xFFFF0000 & temp_s3->unk8D04);
    temp_s3->unk8D00 = (s32) (0xFFFF0000 & temp_s3->unk8D00);
    temp_s3->unk8CFC = (s32) (0xFFFF0000 & temp_s3->unk8CFC);
    temp_s3->unk8CF8 = (s32) (0xFFFF0000 & temp_s3->unk8CF8);
    temp_s3->unk8CF4 = temp_a4_8;
    temp_s3->unk8CF0 = temp_a5_8;
    temp_s3->unk8CEC = temp_a6_7;
    *(void *)0x1018 = 2;
    __glOdysseyImageMovePixelsTexture(arg0->unk48, arg0->unk44, (s64) arg1, 1, temp_a4_8, (s64) temp_a5_8, temp_a6_7, (s64) temp_a7_8);
    temp_s3->unk7CC4 = sp28;
    temp_s3->unk7CDC = (s32) sp28.unk18;
    temp_s3->unk7CD8 = (s32) sp28.unk14;
    temp_s3->unk7CD4 = (s32) sp28.unk10;
    temp_s3->unk7CD0 = (s32) sp28.unkC;
    temp_s3->unk7CCC = (s32) sp28.unk8;
    temp_s3->unk7CC8 = (s32) sp28.unk4;
    temp_s3->unk96A4 = temp_s6;
    temp_s3->unk969C = temp_s7;
    temp_s3->unk96A8 = (s32) unkspF8;
    temp_s3->unk96A0 = (s32) unkspF0;
    temp_s3->unk7C3C = (s32) unksp110;
    temp_s3->unk7C38 = (s32) unksp118;
    temp_s3->unk7C34 = (s32) unksp120;
    temp_s3->unk7BFC = (s32) unksp108;
    temp_s3->unk8C00 = (s64) sp48.unk18;
    temp_s3->unk8BF8 = (s64) sp48.unk10;
    temp_s3->unk8BF0 = (s64) sp48.unk8;
    temp_s3->unk8BE8 = sp48;
    temp_s3->unk8C08 = (s64) sp48.unk20;
    temp_s3->unk8C10 = (s64) sp48.unk28;
    temp_s3->unk8C18 = (s64) sp48.unk30;
    temp_s3->unk8C20 = (s64) sp48.unk38;
    temp_s3->unk8BE4 = (s32) unkspE8;
    temp_s3->unk8D08 = (s32) sp88.unk1C;
    temp_s3->unk8D04 = (s32) sp88.unk18;
    temp_s3->unk8D00 = (s32) sp88.unk14;
    temp_s3->unk8CFC = (s32) sp88.unk10;
    temp_s3->unk8CF8 = (s32) sp88.unkC;
    temp_s3->unk8CF4 = (s32) sp88.unk8;
    temp_s3->unk8CF0 = (s32) sp88.unk4;
    temp_s3->unk8CEC = sp88;
    temp_s3->unk8CE8 = (s32) unksp148;
    temp_s3->unk8D6C = (s32) unksp138;
    temp_s3->unk8D70 = (s32) unksp130;
    temp_s3->unk8D74 = (s32) unksp150;
    temp_s3->unk16960 = (s32) (0x238203 | temp_s3->unk16960);
    *(void *)0x1018 = 2;
    return 1;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x18, 0x1c, 0x20, 0x24, 0x50, 0x54, 0x58, 0x5c, 0x60, 0x64, 0x68, 0x6c, 0x70, 0x74, 0x78, 0x7c], gap at: 0x28. */
s32 ImageChainAddOpConvolveResidue(s64 arg0, s32 arg1, s64 arg2, ? **arg3, void *arg4) {
    f64 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    ? **temp_a1;
    ? **var_a3;
    ? **var_a3_2;
    f32 temp_f22_2;
    f32 temp_f22_4;
    f32 temp_f23;
    f32 var_f0;
    f32 var_f0_10;
    f32 var_f0_11;
    f32 var_f0_2;
    f32 var_f0_3;
    f32 var_f0_4;
    f32 var_f0_5;
    f32 var_f0_6;
    f32 var_f0_7;
    f32 var_f0_8;
    f32 var_f0_9;
    f32 var_f20;
    f32 var_f24;
    f64 temp_f17;
    f64 temp_f17_2;
    f64 temp_f21;
    f64 temp_f22;
    f64 temp_f22_3;
    f64 temp_f22_5;
    f64 temp_f25;
    s32 temp_a1_3;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 var_s2;
    s64 temp_a1_2;
    s64 temp_a1_4;
    s64 temp_a1_5;
    s64 temp_at;
    s64 temp_f13;
    s64 temp_f13_2;
    s64 var_a0;
    s64 var_a2;
    s64 var_t1;
    s64 var_t1_2;
    s64 var_t1_3;
    s64 var_t1_4;
    s64 var_t1_5;
    s64 var_t1_6;
    s64 var_t1_7;
    s64 var_t1_8;
    s64 var_t1_9;
    void *temp_s1;
    void *temp_s1_2;
    void *temp_v0;
    void *var_a4;
    void *var_a7;
    void *var_a7_2;
    void *var_a7_3;
    void *var_a7_4;
    void *var_a7_5;
    void *var_a7_6;
    void *var_a7_7;
    void *var_a7_8;
    void *var_a7_9;

    var_a0 = arg0;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    unksp40 = var_a0;
    unksp48 = var_a2;
    sp0 = 0.0f;
    sp4 = 0.0f;
    sp8 = 0.0f;
    spC = 0.0f;
    temp_v0 = *(void **)0x1010;
    temp_s1 = temp_v0->unk2FC;
    temp_s1_2 = temp_s1->unk50;
    temp_v0->unk11BEB = 0;
    var_f24 = (f32) temp_s1->unk44;
    temp_v0->unk11BD0 = 0;
    var_f20 = (f32) temp_s1->unk40;
    if ((arg1 != 0) && (arg1 != 0x8010)) {
        var_a3_2 = M2C_ERROR(/* unknown instruction: movf $a3, $zero, $fcc0 */);
        if (arg1 != 0x8012) {
            temp_a1 = M2C_ERROR(/* unknown instruction: movf $a1, $zero, $fcc1 */);
            if (var_a3_2 != NULL) {
                var_f20 = 1.0f;
                var_a3_2 = (? **)1;
                temp_v0->unk2FC->unk40 = 1;
                if (temp_a1 != NULL) {
                    goto block_5;
                }
                goto block_6;
            }
            if (temp_a1 != NULL) {
                var_a3_2 = (? **)1;
                if (temp_a1 == NULL) {

                } else {
block_5:
                    var_a0 = (s64) temp_v0->unk2FC;
                    var_f24 = 1.0f;
                    var_a0->unk44 = 1;
                }
block_6:
                temp_v0->unk11BEB = 1;
            }
            sp10 = ceilf((bitwise f32) var_a0, temp_a1, var_a3_2, var_f20 * 0.5f);
            temp_f22 = ceilf(0.5f * ((f32) sp10 * ceilf(var_f24 * 0.5f)), second half of f64);
            temp_v0_2 = __glOdysseyImageChainFree();
            var_s2 = temp_v0_2;
            if (temp_v0_2 == 0) {
                return 0;
            }
            temp_f13 = (s64) temp_f22;
            temp_a1_2 = temp_f13 << 0;
            unksp38 = temp_a1_2;
            __glOdysseyImageChainFree((f32 *) temp_v0_2, temp_a1_2 + 1, second half of f64, (s32) temp_f13);
            if (var_s2->unk14 != 0) {
                temp_f22_2 = var_f24 * var_f20;
                var_a7 = temp_s1_2;
                if (temp_f22_2 > 0.0f) {
                    var_t1 = 0;
                    do {
                        var_t1 += 1;
                        temp_f17 = (f64) fabsf(var_a7->unk0);
                        spC = second half of f64;
                        sp8 = second half of f64;
                        sp4 = (f32) (second half of f64);
                        var_a7 += 0x10;
                        sp0 = (f32) ((second half of f64) + temp_f17);
                    } while ((f32) ((u64) (var_t1 << 0x20) >> 0x20) < temp_f22_2);
                }
                var_f0 = sp0;
                if ((f64) var_f0 <= 1.0) {
                    var_f0 = 1.0f;
                    sp0 = 1.0f;
                }
                var_f0_2 = sp->unk4;
                temp_v0->unk1056C = (f32) (unksp48->unk0 * var_f0);
                if ((f64) var_f0_2 <= 1.0) {
                    var_f0_2 = 1.0f;
                    sp->unk4 = 1.0f;
                }
                var_f0_3 = sp->unk8;
                temp_v0->unk10570 = (f32) (unksp48->unk4 * var_f0_2);
                if ((f64) var_f0_3 <= 1.0) {
                    var_f0_3 = 1.0f;
                    sp->unk8 = 1.0f;
                }
                var_f0_4 = sp->unkC;
                temp_v0->unk10574 = (f32) (unksp48->unk8 * var_f0_3);
                if ((f64) var_f0_4 <= 1.0) {
                    var_f0_4 = 1.0f;
                    sp->unkC = 1.0f;
                }
                temp_v0->unk10578 = (f32) (unksp48->unkC * var_f0_4);
                if (spC == (second half of f64)) {
                    temp_v0->unk10578 = (f32) unksp48->unkC;
                }
                temp_s3 = M2C_ERROR(/* unknown instruction: movf $s3, $zero, $fcc1 */);
                if (temp_s3 != 0) {
                    var_a7_2 = temp_s1_2;
                    var_t1_2 = 0;
                    do {
                        var_t1_2 += 1;
                        var_a7_2->unkC = (f32) (var_a7_2->unkC / spC);
                        var_a7_2->unk8 = (f32) (var_a7_2->unk8 / sp8);
                        var_a7_2->unk4 = (f32) (var_a7_2->unk4 / sp4);
                        var_a7_2->unk0 = (f32) (var_a7_2->unk0 / sp0);
                        var_a7_2 += 0x10;
                    } while ((f32) ((u64) (var_t1_2 << 0x20) >> 0x20) < (second half of f64));
                }
                __glOdysseyGenericConvolution(var_s2, temp_s1_2, unksp38);
                if (temp_s3 != 0) {
                    var_a7_3 = temp_s1_2;
                    var_t1_3 = 0;
                    do {
                        var_t1_3 += 1;
                        var_a7_3->unkC = (f32) (spC * var_a7_3->unkC);
                        var_a7_3->unk8 = (f32) (sp8 * var_a7_3->unk8);
                        var_a7_3->unk4 = (f32) (sp4 * var_a7_3->unk4);
                        var_a7_3->unk0 = (f32) (sp0 * var_a7_3->unk0);
                        var_a7_3 += 0x10;
                    } while ((f32) ((u64) (var_t1_3 << 0x20) >> 0x20) < (second half of f64));
                }
                /* Duplicate return node #29. Try simplifying control flow for better match */
                var_s2->unkC = 1;
                var_s2->unk0 = 8;
                var_s2->unk4 = (void *) (sub_0d990000 + 0x5650);
                var_s2->unk8 = (s32) (var_s2->unk8 | 0x34);
                __glOdysseyImageChainFree((f32 *) unksp40, (s64) var_s2, unksp40->unk8, 0, (f32 *)1);
                return 1;
            }
            return 0;
        }
        temp_a1_3 = M2C_ERROR(/* unknown instruction: movf $a1, $zero, $fcc7 */);
        if (var_a3_2 != NULL) {
            var_a2 = (s64) temp_v0->unk2FC;
            var_f20 = 1.0f;
            var_a3_2 = (? **)1;
            var_a2->unk40 = 1;
            if (temp_a1_3 != 0) {
                goto block_59;
            }
            goto block_60;
        }
        if (temp_a1_3 != 0) {
            var_a3_2 = (? **)1;
            if (temp_a1_3 == 0) {

            } else {
block_59:
                var_a4 = temp_v0->unk2FC;
                var_f24 = 1.0f;
                var_a4->unk44 = 1;
            }
block_60:
            temp_v0->unk11BEB = 1;
        }
        sp10 = ceilf((bitwise f32) temp_a1_3, (? **) var_a2, var_a3_2, (bitwise f32) var_a4, var_f20 * 0.5f);
        temp_f22_3 = ceilf(0.5f * ((f32) sp10 * ceilf(var_f24 * 0.5f)), second half of f64);
        temp_v0_3 = __glOdysseyImageChainFree();
        var_s2 = temp_v0_3;
        if (temp_v0_3 == 0) {
            return 0;
        }
        temp_f13_2 = (s64) temp_f22_3;
        temp_a1_4 = temp_f13_2 << 0;
        unksp38 = temp_a1_4;
        __glOdysseyImageChainFree((f32 *) temp_v0_3, temp_a1_4 + 1, second half of f64, (s32) temp_f13_2);
        var_a7_4 = temp_s1_2;
        if (var_s2->unk14 != 0) {
            temp_f22_4 = var_f24 * var_f20;
            if (temp_f22_4 > 0.0f) {
                var_t1_4 = 1;
                do {
                    temp_f17_2 = (f64) fabsf(var_a7_4->unk0);
                    spC = second half of f64;
                    sp8 = second half of f64;
                    sp4 = (f32) (second half of f64);
                    var_a7_4 += 0x10;
                    sp0 = (f32) ((second half of f64) + temp_f17_2);
                    var_t1_4 += 1;
                } while ((f32) ((u64) (var_t1_4 << 0x20) >> 0x20) < temp_f22_4);
            }
            var_f0_5 = sp0;
            if ((f64) var_f0_5 <= 1.0) {
                var_f0_5 = 1.0f;
                sp0 = 1.0f;
            }
            var_f0_6 = sp->unk4;
            temp_v0->unk110CC = (f32) (unksp48->unk0 * var_f0_5);
            if ((f64) var_f0_6 <= 1.0) {
                var_f0_6 = 1.0f;
                sp->unk4 = 1.0f;
            }
            var_f0_7 = sp->unk8;
            temp_v0->unk110D0 = (f32) (unksp48->unk4 * var_f0_6);
            if ((f64) var_f0_7 <= 1.0) {
                var_f0_7 = 1.0f;
                sp->unk8 = 1.0f;
            }
            var_f0_8 = sp->unkC;
            var_a7_5 = temp_s1_2;
            var_t1_5 = 0;
            temp_v0->unk110D4 = (f32) (unksp48->unk8 * var_f0_7);
            if ((second half of f64) > 0.0f) {
                var_f0_8 = 1.0f;
                sp->unkC = 1.0f;
            }
            temp_v0->unk110D8 = (f32) (unksp48->unkC * var_f0_8);
            if (spC == (second half of f64)) {
                temp_v0->unk110D8 = (f32) unksp48->unkC;
            }
            temp_s3_2 = M2C_ERROR(/* unknown instruction: movf $s3, $zero, $fcc7 */);
            if (temp_s3_2 != 0) {
                do {
                    var_t1_5 += 1;
                    var_a7_5->unkC = (f32) (var_a7_5->unkC / spC);
                    var_a7_5->unk8 = (f32) (var_a7_5->unk8 / sp8);
                    var_a7_5->unk4 = (f32) (var_a7_5->unk4 / sp4);
                    var_a7_5->unk0 = (f32) (var_a7_5->unk0 / sp0);
                    var_a7_5 += 0x10;
                } while ((f32) ((u64) (var_t1_5 << 0x20) >> 0x20) < (second half of f64));
            }
            __glOdysseyGenericConvolution(var_s2, temp_s1_2, unksp38);
            if (temp_s3_2 != 0) {
                var_t1_6 = 0;
                var_a7_6 = temp_s1_2;
                do {
                    var_t1_6 += 1;
                    var_a7_6->unkC = (f32) (spC * var_a7_6->unkC);
                    var_a7_6->unk8 = (f32) (sp8 * var_a7_6->unk8);
                    var_a7_6->unk4 = (f32) (sp4 * var_a7_6->unk4);
                    var_a7_6->unk0 = (f32) (sp0 * var_a7_6->unk0);
                    var_a7_6 += 0x10;
                } while ((f32) ((u64) (var_t1_6 << 0x20) >> 0x20) < (second half of f64));
            }
            /* Duplicate return node #29. Try simplifying control flow for better match */
            var_s2->unkC = 1;
            var_s2->unk0 = 8;
            var_s2->unk4 = (void *) (sub_0d990000 + 0x5650);
            var_s2->unk8 = (s32) (var_s2->unk8 | 0x34);
            __glOdysseyImageChainFree((f32 *) unksp40, (s64) var_s2, unksp40->unk8, 0, (f32 *)1);
            return 1;
        }
        return 0;
    }
    if (var_f20 == 0.0f) {
        var_a3 = (? **)1;
        temp_v0->unk2FC->unk40 = 1;
        if (var_f24 == 0.0f) {
            var_a0 = (s64) temp_v0->unk2FC;
            var_f24 = 1.0f;
            var_a0->unk44 = 1;
        }
        var_f20 = 1.0f;
        temp_v0->unk11BEB = 1;
    }
    temp_f22_5 = ceilf(0.5f * ceilf((bitwise f32) var_a0, var_a3, (bitwise ? **) (var_f20 * 0.5f)));
    temp_v0_4 = __glOdysseyImageChainFree();
    var_s2 = temp_v0_4;
    if (temp_v0_4 == 0) {
        return 0;
    }
    temp_a1_5 = (s64) temp_f22_5 << 0;
    unksp30 = temp_a1_5;
    __glOdysseyImageChainFree((f32 *) temp_v0_4, temp_a1_5 + 1);
    if (var_s2->unk14 != 0) {
        temp_at = M2C_ERROR(/* unknown instruction: movf $at, $zero, $fcc6 */);
        unksp28 = temp_at;
        if (temp_at != 0) {
            var_a7_7 = temp_s1_2;
            var_t1_7 = 1;
            do {
                temp_f23 = (f32) ((f64) sp8 + (f64) fabsf(var_a7_7->unk8));
                temp_f25 = (f64) fabsf(var_a7_7->unk0);
                var_f24 = second half of f64;
                temp_f21 = (f64) sp4 + (f64) fabsf(var_a7_7->unk4);
                var_f20 = second half of f64;
                spC = (f32) ((f64) spC + (f64) fabsf(var_a7_7->unkC));
                sp8 = temp_f23;
                sp4 = (f32) temp_f21;
                var_a7_7 += 0x10;
                sp0 = (f32) ((f64) sp0 + temp_f25);
                var_t1_7 += 1;
            } while ((f32) ((u64) (var_t1_7 << 0x20) >> 0x20) < (second half of f64));
        }
        if ((f64) sp0 <= 1.0) {
            sp0 = 1.0f;
        }
        var_f0_9 = sp->unk4;
        temp_v0->unkFA0C = (f32) (second half of f64);
        if ((f64) var_f0_9 <= 1.0) {
            var_f0_9 = 1.0f;
            sp->unk4 = 1.0f;
        }
        var_f0_10 = sp->unk8;
        temp_v0->unkFA10 = (f32) (unksp48->unk4 * var_f0_9);
        if ((f64) var_f0_10 <= (second half of f64)) {
            var_f0_10 = 1.0f;
            sp->unk8 = 1.0f;
        }
        var_f0_11 = sp->unkC;
        temp_v0->unkFA14 = (f32) (unksp48->unk8 * var_f0_10);
        if ((f64) var_f0_11 <= (second half of f64)) {
            var_f0_11 = 1.0f;
            sp->unkC = 1.0f;
        }
        temp_v0->unkFA18 = (f32) (unksp48->unkC * var_f0_11);
        if (spC == (var_f24 * var_f20)) {
            temp_v0->unkFA18 = (f32) unksp48->unkC;
        }
        if (unksp28 != 0) {
            var_a7_8 = temp_s1_2;
            var_t1_8 = 0;
            do {
                var_t1_8 += 1;
                var_a7_8->unkC = (f32) (var_a7_8->unkC / spC);
                var_a7_8->unk8 = (f32) (var_a7_8->unk8 / sp8);
                var_a7_8->unk4 = (f32) (var_a7_8->unk4 / sp4);
                var_a7_8->unk0 = (f32) (var_a7_8->unk0 / sp0);
                var_a7_8 += 0x10;
            } while ((f32) ((u64) (var_t1_8 << 0x20) >> 0x20) < var_f20);
        }
        __glOdysseyMap1DFilterToAlphas(var_s2, temp_s1_2, unksp30, arg1);
        if (unksp28 != 0) {
            var_a7_9 = temp_s1_2;
            var_t1_9 = 0;
            do {
                var_t1_9 += 1;
                var_a7_9->unkC = (f32) (spC * var_a7_9->unkC);
                var_a7_9->unk8 = (f32) (sp8 * var_a7_9->unk8);
                var_a7_9->unk4 = (f32) (sp4 * var_a7_9->unk4);
                var_a7_9->unk0 = (f32) (sp0 * var_a7_9->unk0);
                var_a7_9 += 0x10;
            } while ((f32) ((u64) (var_t1_9 << 0x20) >> 0x20) < var_f20);
        }
        var_s2->unkC = 1;
        var_s2->unk0 = 8;
        var_s2->unk4 = (void *) (sub_0d990000 + 0x5650);
        var_s2->unk8 = (s32) (var_s2->unk8 | 0x34);
        __glOdysseyImageChainFree((f32 *) unksp40, (s64) var_s2, unksp40->unk8, 0, (f32 *)1);
        return 1;
    }
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x198, 0x19c, 0x1a0, 0x1a4, 0x1a8, 0x1ac, 0x1b0, 0x1b4, 0x200, 0x204, 0x208, 0x20c, 0x218, 0x21c], gap at: 0x1c0. */
s32 RenderFunc_ConvolveResidue(? **arg0, s64 arg1) {
    s64 sp230;
    s64 sp190;
    s64 sp188;
    s64 sp180;
    s64 sp178;
    s64 sp170;
    s64 sp168;
    s64 sp160;
    s64 sp158;
    s64 sp150;
    s64 sp140;
    s64 sp138;
    s64 sp130;
    s64 sp128;
    s64 sp120;
    s64 sp118;
    s64 sp110;
    f32 sp104;
    f32 sp100;
    ?32 spFC;
    ?32 spF8;
    f32 spF4;
    f32 spF0;
    s64 spE8;                                       /* compiler-managed */
    ? spA8;
    s32 sp88;
    s64 sp48;
    s32 sp28;
    s32 sp20;
    f32 sp1C;
    f32 sp18;
    ?32 sp14;
    ?32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    ? *var_a5;
    ? *var_a5_6;
    ? *var_a7;
    f32 *temp_a4_2;
    s32 *temp_ra;
    s32 *temp_ra_2;
    s32 *temp_ra_3;
    s32 *temp_v0_2;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_ra_4;
    s32 temp_s4;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t8_2;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_t9_3;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a5_2;
    s32 var_a5_4;
    s32 var_a5_5;
    s32 var_a6;
    s32 var_s1_2;
    s32 var_s2;
    s32 var_s2_2;
    s32 var_s4;
    s32 var_s4_2;
    s32 var_t0;
    s32 var_t0_2;
    s64 temp_s8;
    s64 var_a7_2;
    s64 var_s1;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_s1;
    void *temp_s7;
    void *temp_t2;
    void *temp_t8;
    void *var_a5_3;

    unksp1E8 = arg1;
    temp_s8 = arg0->unk10 - 1;
    sp20 = arg1->unk20;
    sp1C = arg1->unk1C;
    sp18 = arg1->unk18;
    sp14 = arg1->unk14;
    sp10 = arg1->unk10;
    spC = arg1->unkC;
    sp8 = arg1->unk8;
    sp4 = arg1->unk4;
    sp0 = arg1->unk0;
    temp_s7 = *(void **)0x1010;
    sp28.unk4 = (s32) temp_s7->unk7CC8;
    sp28.unk8 = (s32) temp_s7->unk7CCC;
    sp28.unkC = (s32) temp_s7->unk7CD0;
    sp28.unk10 = (s32) temp_s7->unk7CD4;
    sp28.unk14 = (s32) temp_s7->unk7CD8;
    sp28.unk18 = (s32) temp_s7->unk7CDC;
    sp28 = temp_s7->unk7CC4;
    temp_s4 = temp_s7->unk11BCC;
    sp190 = (s64) temp_s7->unk96A8;
    sp188 = (s64) temp_s7->unk7BFC;
    sp180 = (s64) temp_s7->unk7C34;
    sp178 = (s64) temp_s7->unk7C38;
    sp170 = (s64) temp_s7->unk7C3C;
    sp168 = (s64) temp_s7->unk969C;
    sp160 = (s64) temp_s7->unk96A0;
    sp158 = (s64) temp_s7->unk96A4;
    sp48.unk18 = (s64) temp_s7->unk8C00;
    sp48.unk20 = (s64) temp_s7->unk8C08;
    sp48.unk28 = (s64) temp_s7->unk8C10;
    sp48.unk38 = (s64) temp_s7->unk8C20;
    sp48.unk30 = (s64) temp_s7->unk8C18;
    sp48.unk8 = (s64) temp_s7->unk8BF0;
    sp48.unk10 = (s64) temp_s7->unk8BF8;
    sp48 = temp_s7->unk8BE8;
    sp150 = (s64) temp_s7->unk8BE4;
    sp88.unk4 = (s32) temp_s7->unk8CF0;
    sp88.unk8 = (s32) temp_s7->unk8CF4;
    sp88.unkC = (s32) temp_s7->unk8CF8;
    sp88.unk10 = (s32) temp_s7->unk8CFC;
    sp88.unk14 = (s32) temp_s7->unk8D00;
    sp88.unk18 = (s32) temp_s7->unk8D04;
    sp88.unk1C = (s32) temp_s7->unk8D08;
    sp88 = temp_s7->unk8CEC;
    temp_a2 = temp_s7->unk8CE8;
    temp_a3 = temp_s7->unk8D6C;
    temp_a4 = temp_s7->unk8D70;
    sp130 = (s64) temp_s7->unk8D74;
    temp_s7->unk11BA0 = 1;
    temp_s7->unk11B94 = 0x1403;
    temp_s7->unk11B90 = 0x1908;
    temp_t1 = temp_s7->unk11E18;
    temp_t0 = temp_s7->unk11E1C;
    temp_s7->unk11B88 = 1;
    temp_s7->unk11B8C = 0;
    temp_s7->unk11BC0 = 0;
    temp_s7->unk11B9C = temp_t1;
    temp_s7->unk11B98 = temp_t0;
    sp128 = (s64) temp_a4;
    sp138 = (s64) temp_a3;
    sp140 = (s64) temp_a2;
    temp_v0 = temp_s7->unk0(temp_s7, temp_t0 * temp_t1 * 0x10, temp_a2, temp_a3, temp_a4, 1, 0x1403, 0x1908);
    temp_s7->unk11BB4 = temp_v0;
    if (temp_v0 != 0) {
        if (temp_s7->unk11BEB != 1) {
            temp_a4_2 = temp_s7 + 0x11AD4;
            temp_s1 = temp_s7 + 0x11A98;
            unksp1E0 = (s64) temp_a4_2;
            sub_0d9a0000((f32 *) unksp1E8, (s32) arg0, (s32) unksp1E8, (s32) temp_s1, temp_a4_2);
            temp_s7->unk96A4 = (s32) (0xFFFEFFFF & (0xFFF9FFFF & temp_s7->unk96A4) & ~0x800000);
            temp_s7->unk16960 = (s32) (0x200000 | temp_s7->unk16960);
            *(s32 *)0x1018 = 2;
            temp_s7->unk7CD8 = (s32) (-0x1000 & (0xFF000FFF & temp_s7->unk7CD8));
            temp_s7->unk7CDC = (s32) (-0x1000 & (0xFF000FFF & temp_s7->unk7CDC));
            temp_s7->unk7CD4 = (s32) (((((((temp_s7->unk7CD4 | 0x10000000) & ~0x3000 & ~0xC00 & ~0x300) | 0x4000) & ~0xE0) | 0x20) & ~0x1E) | 2);
            temp_s7->unk16960 = (s32) (temp_s7->unk16960 | 0x200);
            *(void *)0x1018 = 2;
            temp_s7->unk7C00 = (s32) ((temp_s7->unk7C00 & ~0x180) | 0x80 | 0x800000);
            temp_s7->unk16960 = (s32) (temp_s7->unk16960 | 4);
            *(void *)0x1018 = 2;
            temp_s7->unk7BFC = (s32) (0x20000 | temp_s7->unk7BFC);
            temp_s7->unk16960 = (s32) (temp_s7->unk16960 | 2);
            *(void *)0x1018 = 2;
            temp_s7->unk16960 = (s32) (0x200000 | temp_s7->unk16960);
            temp_s7->unk96A4 = (s32) (0xFFEFFFFF & temp_s7->unk96A4);
            *(void *)0x1018 = 2;
            sp118 = (s64) temp_s1;
            temp_s7->unk7C3C = (s32) ((-0x1000 & ((0xFF000FFF & temp_s7->unk7C3C) | 0x1000)) | 1);
            temp_s7->unk7C38 = (s32) ((-0x1000 & ((0xFF000FFF & temp_s7->unk7C38) | 0x1000)) | 1);
            unksp1C0 = (s64) (&spA8 + 0x10);
            temp_s7->unk16960 = (s32) (temp_s7->unk16960 | 1);
            var_s2 = 0;
            var_a5 = &spA8;
            *(void *)0x1018 = 2;
            do {
                var_a5->unkC = 0.0f;
                var_a5->unk8 = 0.0f;
                var_a5->unk4 = 0.0f;
                var_a5->unk0 = 0.0f;
                var_s2 += 1;
                var_a5 += 0x10;
            } while (var_s2 != 4);
            var_s2_2 = 0;
            unksp1D0 = (s64) &spA8;
            temp_t8 = &spA8 + 0x40;
            sp110 = (s64) temp_t8;
            unksp1C8 = (s64) temp_t8;
            sp120 = (s64) temp_s4;
            unksp1B8 = (s64) (temp_s7 + 0x11B4C);
            unksp1D8 = (s64) (temp_s7 + 0x11B10);
            var_s1 = temp_s8 * 0xB60;
loop_8:
            unksp1D0->unk30 = 1.0f;
            unksp1D0->unk20 = 1.0f;
            unksp1D0->unk10 = 1.0f;
            unksp1D0->unk0 = 1.0f;
            var_a5_2 = 0;
            var_a7 = &spA8;
            do {
                *(var_a5_2 + (arg0->unk14 + var_s1)) = var_a7->unk0;
                (var_a5_2 + (arg0->unk14 + var_s1))->unk4 = (f32) var_a7->unk4;
                (var_a5_2 + (arg0->unk14 + var_s1))->unk8 = (f32) var_a7->unk8;
                var_a7 += 0x10;
                temp_t2 = var_a5_2 + (arg0->unk14 + var_s1);
                var_a5_2 += 0x94;
                temp_t2->unkC = (f32) var_a7->unk-4;
            } while (var_a7 != sp110);
            temp_a2_2 = 0xFFFDFFFF & temp_s7->unk7BFC;
            temp_s7->unk7BFC = temp_a2_2;
            temp_a1 = temp_s7->unk16960 | 2;
            temp_s7->unk16960 = temp_a1;
            *(void *)0x1018 = 2;
            __glOdysseyProgramTexFilter(arg0->unk14 + var_s1, (void *) temp_a1, (f32 *) temp_a2_2, (void *)4);
            temp_s7->unk7CD4 = (s32) (0x10000 | temp_s7->unk7CD4 | 0x4000);
            temp_s7->unk16960 = (s32) (temp_s7->unk16960 | 0x200);
            *(void *)0x1018 = 2;
            __glOdysseyImageChainAddOpAcceptSignedDataFromHost(arg0, temp_s8);
            spE8 = (s64) sp0;
            spE8.unk8 = (s64) sp8;
            spE8.unk10 = (s64) sp10;
            spE8.unk20 = sp20;
            spE8.unk18 = (bitwise s64) sp18;
            sp104 = spF4;
            sp100 = spF0;
            spFC = unkspEC;
            spF8 = (?32) spE8;
            __glOdysseyImageMovePixelsTexture((f32 *) unksp1E0, (f32 *) sp118, (s64) &spE8, 0);
            temp_s7->unk7CD4 = (s32) (0xFFFEFFFF & temp_s7->unk7CD4);
            temp_s7->unk16960 = (s32) (temp_s7->unk16960 | 0x200);
            *(void *)0x1018 = 2;
            temp_s7->unk16960 = (s32) (0x200000 | temp_s7->unk16960);
            temp_s7->unk96A4 = (s32) (0x10000 | (0x20000 | (0xFFF9FFFF & temp_s7->unk96A4)));
            *(void *)0x1018 = 2;
            temp_s7->unk7BFC = (s32) (0x20000 | temp_s7->unk7BFC);
            temp_s7->unk16960 = (s32) (temp_s7->unk16960 | 2);
            *(void *)0x1018 = 2;
            var_a7_2 = 0xFFFF1FFF;
            var_a6 = -0x40 & ((-0x1FC1 & (0xFFFF1FFF & temp_s7->unk7C34)) | 0xA00);
            temp_s7->unk7C34 = var_a6;
            sp230 = var_s1;
            temp_s7->unk16960 = (s32) (temp_s7->unk16960 | 1);
            *(void *)0x1018 = 2;
            if (temp_s8 > 0) {
                var_s1_2 = 0;
                var_s4 = 0;
loop_18:
                if (var_s2_2 != 0) {
                    var_a5_3 = temp_s7 + 0x8BEC;
                    switch (var_s2_2) {             /* irregular */
                    case 3:
                        var_a7_2 = 0x10;
                        var_a5_4 = 0;
                        temp_t0_2 = arg0->unk14 + var_s1_2;
                        do {
                            var_a7_2 -= 2;
                            *(var_a5_4 + (temp_s7 + 0x8BE8)) = *(var_a5_4 + (temp_t0_2 + 0xAE0));
                            temp_ra = var_a5_4 + (temp_s7 + 0x8BEC);
                            temp_t9 = *(var_a5_4 + (temp_t0_2 + 0xAE4));
                            var_a5_4 += 8;
                            *temp_ra = temp_t9;
                        } while (var_a7_2 > 0);
                        var_a5_3 = arg0->unk14 + var_s1_2;
                        temp_s7->unk8CEC = (s32) var_a5_3->unkB20;
                        temp_s7->unk8CF0 = (s32) var_a5_3->unkB24;
                        temp_s7->unk8CF4 = (s32) var_a5_3->unkB28;
                        temp_s7->unk8CF8 = (s32) var_a5_3->unkB2C;
                        temp_s7->unk8CFC = (s32) var_a5_3->unkB30;
                        temp_s7->unk8D00 = (s32) var_a5_3->unkB34;
                        temp_s7->unk8D04 = (s32) var_a5_3->unkB38;
                        var_a6 = var_a5_3->unkB3C;
                        temp_s7->unk8D08 = var_a6;
                        temp_a0 = arg0->unk14 + var_s1_2;
                        temp_s7->unk8D6C = (s32) temp_a0->unkB54;
                        temp_s7->unk8D70 = (s32) temp_a0->unkB58;
                        var_a0 = temp_a0->unkB5C;
                        goto block_16;
                    case 1:
                        var_a7_2 = 0x10;
                        var_t0 = 0;
                        temp_t1_2 = arg0->unk14 + var_s1_2;
                        do {
                            var_a7_2 -= 2;
                            *(var_t0 + (temp_s7 + 0x8BE8)) = *(var_t0 + (temp_t1_2 + 0x540));
                            temp_ra_2 = var_t0 + var_a5_3;
                            temp_t9_2 = *(var_t0 + (temp_t1_2 + 0x544));
                            var_t0 += 8;
                            *temp_ra_2 = temp_t9_2;
                        } while (var_a7_2 > 0);
                        var_a5_3 = arg0->unk14 + var_s1_2;
                        temp_s7->unk8CEC = (s32) var_a5_3->unk580;
                        temp_s7->unk8CF0 = (s32) var_a5_3->unk584;
                        temp_s7->unk8CF4 = (s32) var_a5_3->unk588;
                        temp_s7->unk8CF8 = (s32) var_a5_3->unk58C;
                        temp_s7->unk8CFC = (s32) var_a5_3->unk590;
                        temp_s7->unk8D00 = (s32) var_a5_3->unk594;
                        temp_s7->unk8D04 = (s32) var_a5_3->unk598;
                        var_a6 = var_a5_3->unk59C;
                        temp_s7->unk8D08 = var_a6;
                        temp_a0_2 = arg0->unk14 + var_s1_2;
                        temp_s7->unk8D6C = (s32) temp_a0_2->unkB54;
                        temp_s7->unk8D70 = (s32) temp_a0_2->unkB58;
                        var_a0 = temp_a0_2->unkB5C;
                        goto block_16;
                    case 2:
                        var_a5_5 = 0x10;
                        var_a7_2 = 0;
                        temp_t8_2 = arg0->unk14 + var_s1_2;
                        do {
                            var_a5_5 -= 2;
                            *(var_a7_2 + (temp_s7 + 0x8BE8)) = *(var_a7_2 + (temp_t8_2 + 0x810));
                            temp_ra_3 = var_a7_2 + (temp_s7 + 0x8BEC);
                            temp_t9_3 = *(var_a7_2 + (temp_t8_2 + 0x814));
                            var_a7_2 += 8;
                            *temp_ra_3 = temp_t9_3;
                        } while (var_a5_5 > 0);
                        var_a5_3 = arg0->unk14 + var_s1_2;
                        temp_s7->unk8CEC = (s32) var_a5_3->unk850;
                        temp_s7->unk8CF0 = (s32) var_a5_3->unk854;
                        temp_s7->unk8CF4 = (s32) var_a5_3->unk858;
                        temp_s7->unk8CF8 = (s32) var_a5_3->unk85C;
                        temp_s7->unk8CFC = (s32) var_a5_3->unk860;
                        temp_s7->unk8D00 = (s32) var_a5_3->unk864;
                        temp_s7->unk8D04 = (s32) var_a5_3->unk868;
                        var_a6 = var_a5_3->unk86C;
                        temp_s7->unk8D08 = var_a6;
                        temp_a0_3 = arg0->unk14 + var_s1_2;
                        temp_s7->unk8D6C = (s32) temp_a0_3->unkB54;
                        temp_s7->unk8D70 = (s32) temp_a0_3->unkB58;
                        var_a0 = temp_a0_3->unkB5C;
                        goto block_16;
                    }
                } else {
                    var_t0_2 = 0x10;
                    var_a7_2 = 0;
                    temp_ra_4 = arg0->unk14 + var_s1_2;
                    do {
                        var_t0_2 -= 2;
                        *(var_a7_2 + (temp_s7 + 0x8BE8)) = *(var_a7_2 + (temp_ra_4 + 0x270));
                        temp_v0_2 = var_a7_2 + (temp_s7 + 0x8BEC);
                        temp_at = *(var_a7_2 + (temp_ra_4 + 0x274));
                        var_a7_2 += 8;
                        *temp_v0_2 = temp_at;
                    } while (var_t0_2 > 0);
                    var_a5_3 = arg0->unk14 + var_s1_2;
                    temp_s7->unk8CEC = (s32) var_a5_3->unk2B0;
                    temp_s7->unk8CF0 = (s32) var_a5_3->unk2B4;
                    temp_s7->unk8CF4 = (s32) var_a5_3->unk2B8;
                    temp_s7->unk8CF8 = (s32) var_a5_3->unk2BC;
                    temp_s7->unk8CFC = (s32) var_a5_3->unk2C0;
                    temp_s7->unk8D00 = (s32) var_a5_3->unk2C4;
                    temp_s7->unk8D04 = (s32) var_a5_3->unk2C8;
                    var_a6 = var_a5_3->unk2CC;
                    temp_s7->unk8D08 = var_a6;
                    temp_a0_4 = arg0->unk14 + var_s1_2;
                    temp_s7->unk8D6C = (s32) temp_a0_4->unkB54;
                    temp_s7->unk8D70 = (s32) temp_a0_4->unkB58;
                    var_a0 = temp_a0_4->unkB5C;
block_16:
                    temp_s7->unk8D74 = var_a0;
                }
                temp_s7->unk8CE8 = 2;
                temp_s7->unk8BE4 = 2;
                temp_a4_3 = 0x38000 | temp_s7->unk16960;
                temp_s7->unk16960 = temp_a4_3;
                *(void *)0x1018 = 2;
                __glOdysseyImageMovePixelsTexture((f32 *) unksp1D8, (f32 *) unksp1E0, unksp1E8, 0, temp_a4_3, (s64) var_a5_3, var_a6, var_a7_2);
                var_a7_2 = (s64) temp_s7->unk7C34;
                var_a6 = (-0x40 & var_a7_2) | 8;
                temp_s7->unk7C34 = var_a6;
                var_s4 += 1;
                temp_s7->unk16960 = (s32) (temp_s7->unk16960 | 1);
                var_s1_2 += 0xB60;
                *(void *)0x1018 = 2;
                if (temp_s8 != var_s4) {
                    goto loop_18;
                }
            }
            spE8 = unksp1E8->unk0;
            unkspEC = unksp1E8->unk4;
            spF0 = unksp1E8->unk8;
            spFC = 0;
            spF8 = 0;
            spF4 = unksp1E8->unkC;
            var_s1 = sp230;
            sp100 = unksp1E8->unk8 - unksp1E8->unk0;
            sp104 = unksp1E8->unkC - unksp1E8->unk4;
            __glOdysseyImageMovePixelsDMAtoHost(unksp1B8, unksp1D8, &spE8);
            __glOdysseyReconstructFromResidue(temp_s7->unk11B78, temp_s7->unk11BB4, (s32) (M2C_ERROR(/* unknown instruction: movt.s $f8, $f10, $fcc1 */) - M2C_ERROR(/* unknown instruction: movf.s $f10, $f12, $fcc0 */)), (s32) (M2C_ERROR(/* unknown instruction: movt.s $f9, $f11, $fcc3 */) - M2C_ERROR(/* unknown instruction: movf.s $f11, $f13, $fcc2 */)), sp120, var_s2_2, spF0, spF4);
            var_a5_6 = &spA8;
            var_s4_2 = 0;
            do {
                var_a5_6->unkC = 0.0f;
                var_a5_6->unk8 = 0.0f;
                var_s4_2 += 1;
                var_a5_6->unk4 = 0.0f;
                var_a5_6->unk0 = 0.0f;
                var_a5_6 += 0x10;
            } while (var_s4_2 != 4);
            var_s2_2 += 1;
            unksp1C8 += 4;
            unksp1D0 += 4;
            temp_s7->unk16960 = (s32) (0x200000 | temp_s7->unk16960);
            temp_s7->unk96A4 = (s32) (0xFFFEFFFF & (0xFFF9FFFF & temp_s7->unk96A4));
            *(void *)0x1018 = 2;
            if (var_s2_2 != 4) {
                goto loop_8;
            }
            spF8 = sp10;
            spFC = sp14;
            sp100 = sp18;
            sp104 = sp1C;
            __glOdysseyImageMovePixelsDMAtoGfx(arg0->unk48, temp_s7 + 0x11B88, (s64) &spE8, 1, 1, (s64) var_a5_6);
            temp_a1_2 = temp_s7->unk11BB4;
            if (temp_a1_2 != 0) {
                temp_s7->unkC(temp_s7, temp_a1_2);
            }
            temp_s7->unk7CC4 = sp28;
            temp_s7->unk7CDC = (s32) sp28.unk18;
            temp_s7->unk7CD8 = (s32) sp28.unk14;
            temp_s7->unk7CD4 = (s32) sp28.unk10;
            temp_s7->unk7CD0 = (s32) sp28.unkC;
            temp_s7->unk7CC8 = (s32) sp28.unk4;
            temp_s7->unk7CCC = (s32) sp28.unk8;
            temp_s7->unk96A8 = (s32) sp190;
            temp_s7->unk96A4 = (s32) sp158;
            temp_s7->unk96A0 = (s32) sp160;
            temp_s7->unk969C = (s32) sp168;
            temp_s7->unk7C3C = (s32) sp170;
            temp_s7->unk7C38 = (s32) sp178;
            temp_s7->unk7C34 = (s32) sp180;
            temp_s7->unk7BFC = (s32) sp188;
            temp_s7->unk8C20 = (s64) sp48.unk38;
            temp_s7->unk8C18 = (s64) sp48.unk30;
            temp_s7->unk8C10 = (s64) sp48.unk28;
            temp_s7->unk8C08 = (s64) sp48.unk20;
            temp_s7->unk8C00 = (s64) sp48.unk18;
            temp_s7->unk8BF8 = (s64) sp48.unk10;
            temp_s7->unk8BF0 = (s64) sp48.unk8;
            temp_s7->unk8BE8 = sp48;
            temp_s7->unk8BE4 = (s32) sp150;
            temp_s7->unk8D08 = (s32) sp88.unk1C;
            temp_s7->unk8D04 = (s32) sp88.unk18;
            temp_s7->unk8D00 = (s32) sp88.unk14;
            temp_s7->unk8CFC = (s32) sp88.unk10;
            temp_s7->unk8CF8 = (s32) sp88.unkC;
            temp_s7->unk8CF4 = (s32) sp88.unk8;
            temp_s7->unk8CF0 = (s32) sp88.unk4;
            temp_s7->unk8CEC = sp88;
            temp_s7->unk8CE8 = (s32) sp140;
            temp_s7->unk8D6C = (s32) sp138;
            temp_s7->unk8D70 = (s32) sp128;
            temp_s7->unk8D74 = (s32) sp130;
            temp_s7->unk16960 = (s32) (0x238203 | temp_s7->unk16960);
            *(void *)0x1018 = 2;
            return 1;
        }
        temp_s7->unk16960 = (s32) (0x200000 | temp_s7->unk16960);
        temp_s7->unk96A4 = (s32) (0xFFEFFFFF & temp_s7->unk96A4);
        *(void *)0x1018 = 2;
        temp_s7->unk7BFC = (s32) (0xFFFDFFFF & temp_s7->unk7BFC);
        temp_s7->unk16960 = (s32) (temp_s7->unk16960 | 2);
        *(void *)0x1018 = 2;
        temp_s7->unk8CE8 = 2;
        temp_a4_4 = temp_s7->unk8D08;
        temp_s7->unk16960 = (s32) (0x10000 | temp_s7->unk16960);
        temp_a7 = 0xFFFF0000 & temp_s7->unk8CFC;
        temp_a6 = 0xFFFF0000 & temp_s7->unk8D00;
        temp_a5 = 0xFFFF0000 & temp_s7->unk8D04;
        temp_s7->unk8D08 = (s32) (0xFFFF0000 & temp_a4_4);
        temp_s7->unk8D04 = temp_a5;
        temp_s7->unk8D00 = temp_a6;
        temp_s7->unk8CFC = temp_a7;
        temp_s7->unk8CF8 = (s32) (0xFFFF0000 & temp_s7->unk8CF8);
        temp_s7->unk8CF4 = (s32) (0xFFFF0000 & temp_s7->unk8CF4);
        temp_s7->unk8CF0 = (s32) (0xFFFF0000 & temp_s7->unk8CF0);
        temp_s7->unk8CEC = (s32) (0xFFFF0000 & temp_s7->unk8CEC);
        *(void *)0x1018 = 2;
        __glOdysseyImageMovePixelsTexture(arg0->unk48, arg0->unk44, unksp1E8, 0, temp_a4_4, (s64) temp_a5, temp_a6, (s64) temp_a7);
        temp_s7->unk7CC4 = sp28;
        temp_s7->unk7CDC = (s32) sp28.unk18;
        temp_s7->unk7CD8 = (s32) sp28.unk14;
        temp_s7->unk7CD4 = (s32) sp28.unk10;
        temp_s7->unk7CD0 = (s32) sp28.unkC;
        temp_s7->unk7CCC = (s32) sp28.unk8;
        temp_s7->unk7CC8 = (s32) sp28.unk4;
        temp_s7->unk96A8 = (s32) sp190;
        temp_s7->unk96A4 = (s32) sp158;
        temp_s7->unk96A0 = (s32) sp160;
        temp_s7->unk969C = (s32) sp168;
        temp_s7->unk7C3C = (s32) sp170;
        temp_s7->unk7C38 = (s32) sp178;
        temp_s7->unk7C34 = (s32) sp180;
        temp_s7->unk7BFC = (s32) sp188;
        temp_s7->unk8C20 = (s64) sp48.unk38;
        temp_s7->unk8C18 = (s64) sp48.unk30;
        temp_s7->unk8C10 = (s64) sp48.unk28;
        temp_s7->unk8C08 = (s64) sp48.unk20;
        temp_s7->unk8C00 = (s64) sp48.unk18;
        temp_s7->unk8BF8 = (s64) sp48.unk10;
        temp_s7->unk8BF0 = (s64) sp48.unk8;
        temp_s7->unk8BE8 = sp48;
        temp_s7->unk8BE4 = (s32) sp150;
        temp_s7->unk8D08 = (s32) sp88.unk1C;
        temp_s7->unk8D04 = (s32) sp88.unk18;
        temp_s7->unk8D00 = (s32) sp88.unk14;
        temp_s7->unk8CFC = (s32) sp88.unk10;
        temp_s7->unk8CF8 = (s32) sp88.unkC;
        temp_s7->unk8CF4 = (s32) sp88.unk8;
        temp_s7->unk8CF0 = (s32) sp88.unk4;
        temp_s7->unk8CEC = sp88;
        temp_s7->unk8CE8 = (s32) sp140;
        temp_s7->unk8D6C = (s32) sp138;
        temp_s7->unk8D70 = (s32) sp128;
        temp_s7->unk8D74 = (s32) sp130;
        temp_s7->unk16960 = (s32) (0x238203 | temp_s7->unk16960);
        *(void *)0x1018 = 2;
        return 1;
    }
    __glSetError(0x505);
    return 0;
}

s32 ImageChainAddOpScaleBias(f32 *arg0, s64 arg1, s64 arg2) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s32 temp_a0_2;
    s32 temp_v0;
    void *temp_a0;

    sp20 = arg1;
    sp28 = arg2;
    sp18 = (s64) *(s32 *)0x1010;
    temp_v0 = __glOdysseyImageChainFree();
    if (temp_v0 == 0) {
        return 0;
    }
    temp_v0->unk0 = 5;
    temp_v0->unk18 = (f32) sp20->unk0;
    temp_v0->unk1C = (f32) sp20->unk4;
    temp_v0->unk20 = (f32) sp20->unk8;
    temp_v0->unk24 = (f32) sp20->unkC;
    temp_v0->unk28 = (f32) sp28->unk0;
    temp_v0->unk2C = (f32) sp28->unk4;
    temp_v0->unk30 = (f32) sp28->unk8;
    temp_v0->unk34 = (f32) sp28->unkC;
    temp_a0 = arg0->unk14;
    __glOdysseyImageCalcXferWriteParams(temp_a0->unk8, temp_a0->unkC, arg0->unk18->unk34, sp, sp20, 5);
    if (sp4 != 1) {
        goto block_3;
    }
    if (sp18->unk7B70 & 0x80) {
        temp_v0->unk3C = 1;
        temp_a0_2 = arg0->unk14->unk8;
        if ((temp_a0_2 == 0x1908) || (temp_a0_2 == 0x8000) || (temp_a0_2 == 0x1906) || (temp_a0_2 == 0x190A)) {
            temp_v0->unk3C = 0;
        }
        temp_v0->unkC = 1;
        temp_v0->unk4 = (void *) (sub_0d9a0000 - 0x7FF0);
        temp_v0->unk8 = (s32) (temp_v0->unk8 | 0x1E);
    } else {
block_3:
        temp_v0->unkC = 1;
        temp_v0->unk4 = (void *) (sub_0d990000 + 0x67E0);
        temp_v0->unk8 = (s32) (temp_v0->unk8 | 0x1E);
    }
    __glOdysseyImageChainFree((f32 *) temp_v0, 1);
    __glOdysseyImageChainFree(arg0, (s64) temp_v0, arg0->unk8, 0);
    return 1;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0xf0, 0xf4, 0xf8, 0xfc, 0x198, 0x19c, 0x1a0, 0x1a4, 0x1a8, 0x1ac, 0x1b0, 0x1b4, 0x1b8, 0x1bc], gap at: 0x100. */
s32 RenderFunc_ScaleBias(void *arg0, void *arg1) {
    s64 sp1C8;
    s64 sp1C0;
    f64 spE8;
    f32 spDC;
    f32 spD8;
    f32 spD4;
    f32 spD0;
    f32 spCC;
    f32 spC8;
    f32 spC4;
    f32 spC0;
    s32 spA0;
    s64 sp60;
    s32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 sp1C;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    f32 *temp_s4;
    f32 *temp_s4_2;
    f32 *temp_s4_3;
    f32 *temp_s4_4;
    f32 *temp_s4_5;
    f32 *temp_s4_6;
    f32 *var_a0_10;
    f32 *var_a0_11;
    f32 *var_a0_13;
    f32 *var_a0_2;
    f32 *var_a0_3;
    f32 *var_a0_5;
    f32 *var_a0_6;
    f32 *var_a0_7;
    f32 *var_a0_8;
    f32 temp_a7;
    f32 temp_f10;
    f32 temp_f10_2;
    f32 temp_f13_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_4;
    f32 temp_f15;
    f32 temp_f15_2;
    f32 temp_f15_3;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f16_3;
    f32 temp_f17;
    f32 temp_f17_2;
    f32 temp_f17_3;
    f32 temp_f18;
    f32 temp_f19;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f20_3;
    f32 temp_f20_4;
    f32 temp_f30;
    f32 temp_f4;
    f32 temp_f4_10;
    f32 temp_f4_11;
    f32 temp_f4_12;
    f32 temp_f4_13;
    f32 temp_f4_14;
    f32 temp_f4_15;
    f32 temp_f4_16;
    f32 temp_f4_17;
    f32 temp_f4_18;
    f32 temp_f4_19;
    f32 temp_f4_20;
    f32 temp_f4_21;
    f32 temp_f4_22;
    f32 temp_f4_23;
    f32 temp_f4_24;
    f32 temp_f4_25;
    f32 temp_f4_26;
    f32 temp_f4_27;
    f32 temp_f4_28;
    f32 temp_f4_29;
    f32 temp_f4_2;
    f32 temp_f4_30;
    f32 temp_f4_31;
    f32 temp_f4_32;
    f32 temp_f4_33;
    f32 temp_f4_34;
    f32 temp_f4_35;
    f32 temp_f4_36;
    f32 temp_f4_37;
    f32 temp_f4_38;
    f32 temp_f4_3;
    f32 temp_f4_4;
    f32 temp_f4_5;
    f32 temp_f4_6;
    f32 temp_f4_7;
    f32 temp_f4_8;
    f32 temp_f4_9;
    f32 temp_f5;
    f32 temp_f5_10;
    f32 temp_f5_11;
    f32 temp_f5_12;
    f32 temp_f5_13;
    f32 temp_f5_14;
    f32 temp_f5_15;
    f32 temp_f5_16;
    f32 temp_f5_17;
    f32 temp_f5_18;
    f32 temp_f5_19;
    f32 temp_f5_20;
    f32 temp_f5_21;
    f32 temp_f5_2;
    f32 temp_f5_3;
    f32 temp_f5_4;
    f32 temp_f5_5;
    f32 temp_f5_6;
    f32 temp_f5_7;
    f32 temp_f5_8;
    f32 temp_f5_9;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f6_3;
    f32 temp_f6_4;
    f32 temp_f6_5;
    f32 temp_f6_6;
    f32 temp_f6_7;
    f32 temp_f6_8;
    f32 temp_f6_9;
    f32 temp_f7;
    f32 temp_f7_2;
    f32 temp_f8;
    f32 temp_f8_2;
    f32 temp_f9;
    f32 temp_f9_2;
    f32 var_f26;
    f32 var_f28;
    f32 var_f30;
    f32 var_f5;
    f32 var_f5_2;
    f32 var_f5_3;
    f32 var_f5_4;
    f64 temp_f13;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a6;
    s32 temp_cond;
    s32 temp_f14_3;
    s32 temp_f18_2;
    s32 var_a0_12;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s1_3;
    s32 var_s1_4;
    s32 var_s1_5;
    s32 var_s1_6;
    s64 var_a0;
    s64 var_a0_4;
    s64 var_a0_9;
    void *temp_s8;

    unksp138 = 0;
    sp3C = 0.0f;
    sp38 = 0.0f;
    sp34 = 0.0f;
    sp30 = 0.0f;
    sp2C = 0.0f;
    sp28 = 0.0f;
    sp24 = 0.0f;
    sp1C = 0.0f;
    sp18 = 0.0f;
    sp14 = 0.0f;
    var_f26 = 1.0f;
    sp10 = 0.0f;
    spC = 1.0f;
    sp8 = 1.0f;
    sp4 = 1.0f;
    sp0 = 1.0f;
    temp_s8 = *(void **)0x1010;
    sp20 = 0.0f;
    temp_a2 = temp_s8->unk7BFC;
    sp40 = temp_s8->unk7CC4;
    sp40.unk18 = (s32) temp_s8->unk7CDC;
    sp40.unk8 = (s32) temp_s8->unk7CCC;
    unksp130 = (s64) (temp_s8 + 0x8BE8);
    sp40.unk10 = (s32) temp_s8->unk7CD4;
    sp40.unkC = (s32) temp_s8->unk7CD0;
    sp40.unk14 = (s32) temp_s8->unk7CD8;
    sp40.unk4 = (s32) temp_s8->unk7CC8;
    unksp190 = (s64) temp_s8->unk969C;
    unksp188 = (s64) temp_s8->unk96A0;
    unksp180 = (s64) temp_s8->unk96A4;
    unksp178 = (s64) temp_s8->unk96A8;
    unksp170 = (s64) temp_s8->unk7C34;
    unksp168 = (s64) temp_s8->unk7C38;
    unksp160 = (s64) temp_s8->unk7C3C;
    sp60.unk8 = (s64) temp_s8->unk8BF0;
    sp60.unk10 = (s64) temp_s8->unk8BF8;
    sp60.unk18 = (s64) temp_s8->unk8C00;
    sp60.unk20 = (s64) temp_s8->unk8C08;
    sp60.unk28 = (s64) temp_s8->unk8C10;
    sp60.unk30 = (s64) temp_s8->unk8C18;
    sp60.unk38 = (s64) temp_s8->unk8C20;
    sp60 = temp_s8->unk8BE8;
    unksp158 = (s64) temp_s8->unk8BE4;
    spA0.unk4 = (s32) temp_s8->unk8CF0;
    spA0.unk8 = (s32) temp_s8->unk8CF4;
    spA0.unkC = (s32) temp_s8->unk8CF8;
    spA0.unk10 = (s32) temp_s8->unk8CFC;
    spA0.unk14 = (s32) temp_s8->unk8D00;
    spA0.unk18 = (s32) temp_s8->unk8D04;
    spA0.unk1C = (s32) temp_s8->unk8D08;
    spA0 = temp_s8->unk8CEC;
    temp_a6 = temp_s8->unk8CE8;
    temp_a7 = temp_s8->unk8D74;
    temp_s8->unk7BFC = (s32) (temp_a2 & ~0x20000);
    temp_a3 = temp_s8->unk16960 | 2;
    temp_s8->unk16960 = temp_a3;
    *(s32 *)0x1018 = 2;
    temp_s8->unk7CD4 = (s32) (temp_s8->unk7CD4 | 0x40000 | 0x4000);
    temp_s8->unk16960 = (s32) (temp_s8->unk16960 | 0x200);
    *(void *)0x1018 = 2;
    temp_s8->unk96A4 = (s32) (temp_s8->unk96A4 & ~0x100000);
    temp_s8->unk16960 = (s32) (temp_s8->unk16960 | 0x200000);
    *(void *)0x1018 = 2;
    temp_f10 = fabsf(arg0->unk18);
    sp0 = temp_f10;
    temp_f7 = fabsf(arg0->unk1C);
    sp4 = temp_f7;
    temp_f6 = fabsf(arg0->unk20);
    sp8 = temp_f6;
    temp_f8 = fabsf(arg0->unk24);
    spC = temp_f8;
    sp10 = arg0->unk28;
    sp14 = arg0->unk2C;
    sp18 = arg0->unk30;
    sp1C = arg0->unk34;
    M2C_ERROR(/* unknown instruction: movf.s $f13, $f9, $fcc3 */);
    M2C_ERROR(/* unknown instruction: movf.s $f12, $f13, $fcc2 */);
    temp_f9 = fabsf(sp10.unkC);
    M2C_ERROR(/* unknown instruction: movf.s $f11, $f12, $fcc1 */);
    unksp150 = (bitwise s64) temp_a7;
    unksp128 = (s64) temp_a6;
    unksp120 = (s64) temp_s8->unk8D6C;
    unksp118 = (s64) temp_s8->unk8D70;
    temp_f9_2 = M2C_ERROR(/* unknown instruction: movf.s $f9, $f11, $fcc0 */);
    temp_f4 = temp_s8->unk11E20;
    temp_f5 = arg0->unk28;
    unksp110 = (s64) temp_a2;
    if (temp_f10 != 0.0f) {
        temp_f14 = temp_f5 / temp_f10;
        sp20 = temp_f14;
        sp30 = temp_f4 * temp_f14;
    } else {
        sp30 = temp_f5;
        sp20 = temp_f5;
    }
    temp_f5_2 = arg0->unk2C;
    if (temp_f7 != 0.0f) {
        temp_f15 = temp_f5_2 / temp_f7;
        sp24 = temp_f15;
        sp34 = temp_f4 * temp_f15;
    } else {
        sp34 = temp_f5_2;
        sp24 = temp_f5_2;
    }
    temp_f5_3 = arg0->unk30;
    if (temp_f6 != 0.0f) {
        temp_f16 = temp_f5_3 / temp_f6;
        sp28 = temp_f16;
        sp38 = temp_f4 * temp_f16;
    } else {
        sp38 = temp_f5_3;
        sp28 = temp_f5_3;
    }
    temp_f5_4 = arg0->unk34;
    if (temp_f8 != 0.0f) {
        temp_f17 = temp_f5_4 / temp_f8;
        sp2C = temp_f17;
        sp3C = temp_f4 * temp_f17;
    } else {
        sp3C = temp_f5_4;
        sp2C = temp_f5_4;
    }
    M2C_ERROR(/* unknown instruction: movf.s $f23, $f7, $fcc7 */);
    M2C_ERROR(/* unknown instruction: movf.s $f21, $f8, $fcc6 */);
    M2C_ERROR(/* unknown instruction: movf.s $f11, $f23, $fcc5 */);
    M2C_ERROR(/* unknown instruction: movf.s $f10, $f21, $fcc4 */);
    M2C_ERROR(/* unknown instruction: movf.s $f19, $f11, $fcc3 */);
    M2C_ERROR(/* unknown instruction: movf.s $f18, $f10, $fcc2 */);
    temp_f7_2 = M2C_ERROR(/* unknown instruction: movf.s $f7, $f19, $fcc1 */);
    temp_f8_2 = M2C_ERROR(/* unknown instruction: movf.s $f8, $f18, $fcc0 */);
    var_f28 = fabsf(arg0->unk20) / temp_f4;
    temp_f5_5 = fabsf(arg0->unk18) / temp_f4;
    temp_cond = (f64) temp_f5_5 <= 1.0;
    temp_f30 = fabsf(second half of f64);
    unksp108 = (bitwise f64) (fabsf(arg0->unk24) / temp_f4);
    var_f30 = temp_f30 / temp_f4;
    sp0 = temp_f5_5;
    if (temp_cond) {
        sp0 = 1.0f;
    }
    sp4 = var_f30;
    if ((f64) var_f30 <= 1.0) {
        sp4 = 1.0f;
    }
    sp8 = var_f28;
    if ((f64) var_f28 <= 1.0) {
        sp8 = 1.0f;
    }
    temp_f13 = (f64) unksp108;
    spC = second half of f64;
    if (temp_f13 <= 1.0) {
        spC = 1.0f;
    }
    temp_f16_2 = M2C_ERROR(/* unknown instruction: movf.s $f16, $f6, $fcc7 */);
    temp_f15_2 = M2C_ERROR(/* unknown instruction: movf.s $f15, $f16, $fcc6 */);
    temp_f14_2 = M2C_ERROR(/* unknown instruction: movf.s $f14, $f15, $fcc5 */);
    temp_f10_2 = M2C_ERROR(/* unknown instruction: movf.s $f10, $f14, $fcc4 */);
    spC0 = arg1->unk0;
    spC4 = arg1->unk4;
    spC8 = arg1->unk8;
    spD4 = 0.0f;
    spD0 = 0.0f;
    spCC = arg1->unkC;
    spD8 = M2C_ERROR(/* unknown instruction: movf.s $f19, $f23, $fcc4 */) - M2C_ERROR(/* unknown instruction: movf.s $f21, $f23, $fcc3 */);
    temp_f19 = arg1->unkC;
    temp_f18 = M2C_ERROR(/* unknown instruction: movf.s $f18, $f19, $fcc1 */);
    temp_a0 = M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc0 */);
    temp_f17_2 = M2C_ERROR(/* unknown instruction: movf.s $f17, $f19, $fcc2 */) - temp_f18;
    spDC = temp_f17_2;
    if ((temp_a0 != 0) && (temp_f7_2 <= temp_s8->unk11E20)) {
        sp10 = 0.0f;
        sp14 = 0.0f;
        sp18 = 0.0f;
        sp1C = 0.0f;
        temp_f4_2 = temp_s8->unk11E20;
        unksp100 = second half of f64;
        var_a0 = 1;
        if (temp_f4_2 < temp_f10_2) {
            var_f5 = 1.0f;
            var_a0 = 1;
            do {
                var_f5 *= temp_f4_2;
                var_a0 += 1;
            } while (temp_f4_2 < (temp_f10_2 / var_f5));
            if (var_a0 > 0) {
                goto block_26;
            }
        } else {
block_26:
            var_s1 = 1;
            sp1C8 = var_a0;
            temp_s4 = temp_s8 + 0x119E4;
loop_53:
            temp_f4_3 = temp_s8->unk11E20;
            if (temp_f4_3 < sp0) {
                sp0 = temp_f4_3;
            }
            temp_f4_4 = temp_s8->unk11E20;
            if (temp_f4_4 < sp->unk4) {
                sp->unk4 = temp_f4_4;
            }
            temp_f4_5 = temp_s8->unk11E20;
            if (temp_f4_5 < sp->unk8) {
                sp->unk8 = temp_f4_5;
            }
            temp_f4_6 = temp_s8->unk11E20;
            if (temp_f4_6 < sp->unkC) {
                sp->unkC = temp_f4_6;
            }
            __glOdysseyImageChainAddOpAcceptSignedDataFromHost(sp, (s64) &sp10);
            if (var_s1 != 1) {
                spC0 = spD0;
                spC8 = spD8;
                spCC = spDC;
                var_a0_2 = temp_s4;
                spC4 = spD4;
                if (var_s1 == sp1C8) {
                    var_a0_2 = arg0->unk48;
                    spD0 = arg1->unk10;
                    spD4 = arg1->unk14;
                    spD8 = arg1->unk18;
                    spDC = arg1->unk1C;
                }
                __glOdysseyImageMovePixelsCopy(var_a0_2, temp_s4, (s64) &spC0, 1, 1);
            } else {
                var_a0_3 = temp_s4;
                if (var_s1 == sp1C8) {
                    var_a0_3 = arg0->unk48;
                    spD0 = arg1->unk10;
                    spD4 = arg1->unk14;
                    spD8 = arg1->unk18;
                    spDC = arg1->unk1C;
                }
                __glOdysseyImageMovePixelsCopy(var_a0_3, arg0->unk44, (s64) &spC0, 1, 1);
            }
            sp0 = (bitwise f32) unksp100 / powf(temp_s8->unk11E20, (f32) var_s1);
            sp4 = var_f30 / powf(temp_s8->unk11E20, second half of f64);
            sp8 = var_f28 / powf(temp_s8->unk11E20, second half of f64);
            var_s1 += 1;
            spC = (bitwise f32) unksp108 / powf(temp_s8->unk11E20, second half of f64);
            var_f28 = second half of f64;
            if ((f64) sp0 <= 1.0) {
                sp10 = 0.0f;
                sp0 = second half of f64;
            }
            var_f30 = second half of f64;
            if ((f64) sp->unk4 <= 1.0) {
                sp10.unk4 = 0.0f;
                sp->unk4 = (f32) (second half of f64);
            }
            if ((f64) sp->unk8 <= 1.0) {
                sp10.unk8 = 0.0f;
                sp->unk8 = (f32) (second half of f64);
            }
            if ((f64) sp->unkC <= 1.0) {
                sp10.unkC = 0.0f;
                sp->unkC = (f32) (second half of f64);
            }
            if (var_s1 != (var_a0 + 1)) {
                goto loop_53;
            }
        }
    } else if (((f64) temp_f10_2 <= 1.0) && (temp_f4_7 = temp_s8->unk11E20, var_s1_2 = 1, temp_s4_2 = temp_s8 + 0x119E4, (temp_f4_7 < temp_f9_2))) {
        spE8 = (bitwise f64) temp_f9_2;
        if (!(temp_f4_7 < temp_f8_2)) {
            sp10 = 0.0f;
            sp14 = 0.0f;
            sp18 = 0.0f;
            sp1C = 0.0f;
            sp0 = fabsf(arg0->unk18);
            sp4 = fabsf(arg0->unk1C);
            sp8 = fabsf(arg0->unk20);
            spC = fabsf(arg0->unk24);
            M2C_ERROR(/* unknown instruction: movf.s $f8, $f6, $fcc6 */);
            M2C_ERROR(/* unknown instruction: movf.s $f7, $f8, $fcc5 */);
            M2C_ERROR(/* unknown instruction: movf.s $f6, $f7, $fcc4 */);
            temp_f4_8 = temp_s8->unk11E20;
            temp_f5_6 = M2C_ERROR(/* unknown instruction: movf.s $f5, $f6, $fcc3 */);
            var_f5_2 = 1.0f;
            var_a0_4 = 1;
            if (temp_f4_8 < temp_f5_6) {
                do {
                    var_f5_2 *= temp_f4_8;
                    var_a0_4 += 1;
                } while (temp_f4_8 < (temp_f5_6 / var_f5_2));
                if (var_a0_4 > 0) {
                    goto block_33;
                }
            } else {
                var_a0_4 = 1;
block_33:
                unksp140 = var_a0_4;
loop_106:
                temp_f4_9 = temp_s8->unk11E20;
                if (temp_f4_9 < sp0) {
                    sp0 = temp_f4_9;
                }
                temp_f4_10 = temp_s8->unk11E20;
                if (temp_f4_10 < sp->unk4) {
                    sp->unk4 = temp_f4_10;
                }
                temp_f4_11 = temp_s8->unk11E20;
                if (temp_f4_11 < sp->unk8) {
                    sp->unk8 = temp_f4_11;
                }
                temp_f4_12 = temp_s8->unk11E20;
                if (temp_f4_12 < sp->unkC) {
                    sp->unkC = temp_f4_12;
                }
                __glOdysseyImageChainAddOpAcceptSignedDataFromHost(sp, (s64) &sp10);
                if (var_s1_2 != 1) {
                    var_a0_5 = temp_s4_2;
                    if (var_s1_2 != unksp140) {

                    } else {
                        var_a0_5 = arg0->unk48;
                        spD0 = arg1->unk10;
                        spD4 = arg1->unk14;
                        spD8 = arg1->unk18;
                        spDC = arg1->unk1C;
                    }
                    __glOdysseyImageMovePixelsCopy(var_a0_5, temp_s4_2, (s64) &spC0, 1, 1);
                } else {
                    var_a0_6 = temp_s4_2;
                    if (var_s1_2 == unksp140) {
                        var_a0_6 = arg0->unk48;
                        spD0 = arg1->unk10;
                        spD4 = arg1->unk14;
                        spD8 = arg1->unk18;
                        spDC = arg1->unk1C;
                    }
                    __glOdysseyImageMovePixelsCopy(var_a0_6, arg0->unk44, (s64) &spC0, 1, 1);
                }
                temp_f20 = (f32) var_s1_2;
                sp0 = fabsf(arg0->unk18) / powf(temp_s8->unk11E20, temp_f20);
                sp4 = fabsf(arg0->unk1C) / powf(temp_s8->unk11E20, temp_f20);
                sp8 = fabsf(arg0->unk20) / powf(temp_s8->unk11E20, temp_f20);
                spC = fabsf(arg0->unk24) / powf(temp_s8->unk11E20, temp_f20);
                if ((f64) sp0 <= 1.0) {
                    sp0 = 1.0f;
                }
                if ((f64) sp->unk4 <= 1.0) {
                    sp->unk4 = 1.0f;
                }
                var_s1_2 += 1;
                if ((f64) sp->unk8 <= 1.0) {
                    sp->unk8 = 1.0f;
                }
                if ((f64) sp->unkC <= 1.0) {
                    sp->unkC = 1.0f;
                }
                if (var_s1_2 != (var_a0_4 + 1)) {
                    goto loop_106;
                }
            }
        } else {
            sp0 = 1.0f;
            sp4 = 1.0f;
            sp8 = 1.0f;
            spC = 1.0f;
            temp_f14_3 = (s32) ceilf((bitwise f32) temp_a0, (? **) &sp30, (? **) temp_a2, (bitwise f32) temp_a3, (bitwise f32) &sp10, sp, temp_a6, temp_a7, (bitwise f32) spE8 / (second half of f64), second half of f64, temp_f14_2, temp_f15_2, temp_f16_2, temp_f17_2, temp_f18, temp_f19);
            unksp148 = (s64) temp_f14_3;
            if (temp_f14_3 > 0) {
                var_s1_3 = 1;
                temp_s4_3 = temp_s8 + 0x119E4;
loop_194:
                temp_f4_13 = temp_s8->unk11E20;
                if (temp_f4_13 < sp10) {
                    sp10 = temp_f4_13;
                } else {
                    temp_f6_2 = -temp_f4_13;
                    if (sp10 < temp_f6_2) {
                        sp10 = temp_f6_2;
                    }
                }
                temp_f5_7 = sp10.unk4;
                temp_f4_14 = temp_s8->unk11E20;
                if (temp_f4_14 < temp_f5_7) {
                    sp10.unk4 = temp_f4_14;
                } else {
                    temp_f6_3 = -temp_f4_14;
                    if (temp_f5_7 < temp_f6_3) {
                        sp10.unk4 = temp_f6_3;
                    }
                }
                temp_f5_8 = sp10.unk8;
                temp_f4_15 = temp_s8->unk11E20;
                if (temp_f4_15 < temp_f5_8) {
                    sp10.unk8 = temp_f4_15;
                } else {
                    temp_f6_4 = -temp_f4_15;
                    if (temp_f5_8 < temp_f6_4) {
                        sp10.unk8 = temp_f6_4;
                    }
                }
                temp_f5_9 = sp10.unkC;
                temp_f4_16 = temp_s8->unk11E20;
                if (temp_f4_16 < temp_f5_9) {
                    sp10.unkC = temp_f4_16;
                } else {
                    temp_f6_5 = -temp_f4_16;
                    if (temp_f5_9 < temp_f6_5) {
                        sp10.unkC = temp_f6_5;
                    }
                }
                __glOdysseyImageChainAddOpAcceptSignedDataFromHost(sp, (s64) &sp10);
                if (var_s1_3 != 1) {
                    spC0 = spD0;
                    spC8 = spD8;
                    spCC = spDC;
                    var_a0_7 = temp_s4_3;
                    spC4 = spD4;
                    if (var_s1_3 == unksp148) {
                        var_a0_7 = arg0->unk48;
                        spD0 = arg1->unk10;
                        spD4 = arg1->unk14;
                        spD8 = arg1->unk18;
                        spDC = arg1->unk1C;
                    }
                    __glOdysseyImageMovePixelsCopy(var_a0_7, temp_s4_3, (s64) &spC0, 1, 1);
                } else {
                    var_a0_8 = temp_s4_3;
                    if (var_s1_3 == unksp148) {
                        var_a0_8 = arg0->unk48;
                        spD0 = arg1->unk10;
                        spD4 = arg1->unk14;
                        spD8 = arg1->unk18;
                        spDC = arg1->unk1C;
                    }
                    __glOdysseyImageMovePixelsCopy(var_a0_8, arg0->unk44, (s64) &spC0, 1, 1);
                }
                temp_f20_2 = (f32) var_s1_3;
                temp_f5_10 = arg0->unk28;
                temp_f4_17 = temp_s8->unk11E20 * temp_f20_2;
                if (temp_f4_17 < temp_f5_10) {
                    sp10 = M2C_ERROR(/* unknown instruction: nmsub.s $f21, $f5, $f6, $f20 */);
                } else if (temp_f5_10 < -temp_f4_17) {
                    sp10 = M2C_ERROR(/* unknown instruction: madd.s $f25, $f5, $f6, $f20 */);
                } else {
                    sp10 = 0.0f;
                }
                temp_f5_11 = arg0->unk2C;
                temp_f4_18 = temp_s8->unk11E20 * temp_f20_2;
                var_s1_3 += 1;
                if (temp_f4_18 < temp_f5_11) {
                    sp14 = M2C_ERROR(/* unknown instruction: nmsub.s $f27, $f5, $f6, $f20 */);
                } else if (temp_f5_11 < -temp_f4_18) {
                    sp14 = M2C_ERROR(/* unknown instruction: madd.s $f31, $f5, $f6, $f20 */);
                } else {
                    sp14 = 0.0f;
                }
                temp_f5_12 = arg0->unk30;
                temp_f4_19 = temp_s8->unk11E20 * temp_f20_2;
                if (temp_f4_19 < temp_f5_12) {
                    sp18 = M2C_ERROR(/* unknown instruction: nmsub.s $f0, $f5, $f6, $f20 */);
                } else if (temp_f5_12 < -temp_f4_19) {
                    sp18 = M2C_ERROR(/* unknown instruction: madd.s $f2, $f5, $f6, $f20 */);
                } else {
                    sp18 = 0.0f;
                }
                temp_f5_13 = arg0->unk34;
                temp_f4_20 = temp_s8->unk11E20 * temp_f20_2;
                if (temp_f4_20 < temp_f5_13) {
                    sp1C = M2C_ERROR(/* unknown instruction: nmsub.s $f3, $f5, $f6, $f20 */);
                } else if (temp_f5_13 < -temp_f4_20) {
                    sp1C = M2C_ERROR(/* unknown instruction: madd.s $f8, $f5, $f6, $f20 */);
                } else {
                    sp1C = 0.0f;
                }
                if (var_s1_3 != (unksp148 + 1)) {
                    goto loop_194;
                }
            }
        }
    } else if ((temp_a0 != 0) && (temp_f4_21 = temp_s8->unk11E20, (temp_f4_21 < temp_f7_2))) {
        unksp100 = second half of f64;
        if (!(temp_f4_21 < temp_f8_2)) {
            sp10 = 0.0f;
            sp14 = 0.0f;
            sp18 = 0.0f;
            sp1C = 0.0f;
            sp0 = fabsf(arg0->unk18);
            sp4 = fabsf(arg0->unk1C);
            sp8 = fabsf(arg0->unk20);
            spC = fabsf(arg0->unk24);
            M2C_ERROR(/* unknown instruction: movf.s $f16, $f6, $fcc6 */);
            M2C_ERROR(/* unknown instruction: movf.s $f15, $f16, $fcc5 */);
            M2C_ERROR(/* unknown instruction: movf.s $f14, $f15, $fcc4 */);
            temp_f5_14 = M2C_ERROR(/* unknown instruction: movf.s $f5, $f14, $fcc3 */);
            temp_f4_22 = temp_s8->unk11E20;
            var_a0_9 = 1;
            var_s1_4 = 1;
            temp_s4_4 = temp_s8 + 0x119E4;
            var_f5_3 = 1.0f;
            if (temp_f4_22 < temp_f5_14) {
                var_a0_9 = 1;
                do {
                    var_f5_3 *= temp_f4_22;
                    var_a0_9 += 1;
                } while (temp_f4_22 < (temp_f5_14 / var_f5_3));
                if (var_a0_9 > 0) {
                    goto block_41;
                }
            } else {
block_41:
                sp1C0 = var_a0_9;
loop_81:
                temp_f4_23 = temp_s8->unk11E20;
                if (temp_f4_23 < sp0) {
                    sp0 = temp_f4_23;
                }
                temp_f4_24 = temp_s8->unk11E20;
                if (temp_f4_24 < sp->unk4) {
                    sp->unk4 = temp_f4_24;
                }
                temp_f4_25 = temp_s8->unk11E20;
                if (temp_f4_25 < sp->unk8) {
                    sp->unk8 = temp_f4_25;
                }
                temp_f4_26 = temp_s8->unk11E20;
                if (temp_f4_26 < sp->unkC) {
                    sp->unkC = temp_f4_26;
                }
                __glOdysseyImageChainAddOpAcceptSignedDataFromHost(sp, (s64) &sp10);
                if (var_s1_4 != 1) {
                    var_a0_10 = temp_s4_4;
                    if (var_s1_4 == sp1C0) {
                        var_a0_10 = arg0->unk48;
                        spD0 = arg1->unk10;
                        spD4 = arg1->unk14;
                        spD8 = arg1->unk18;
                        spDC = arg1->unk1C;
                    }
                    __glOdysseyImageMovePixelsCopy(var_a0_10, temp_s4_4, (s64) &spC0, 1, 1);
                } else {
                    var_a0_11 = temp_s4_4;
                    if (var_s1_4 == sp1C0) {
                        var_a0_11 = arg0->unk48;
                        spD0 = arg1->unk10;
                        spD4 = arg1->unk14;
                        spD8 = arg1->unk18;
                        spDC = arg1->unk1C;
                    }
                    __glOdysseyImageMovePixelsCopy(var_a0_11, arg0->unk44, (s64) &spC0, 1, 1);
                }
                temp_f20_3 = (f32) var_s1_4;
                sp0 = fabsf(arg0->unk18) / powf(temp_s8->unk11E20, temp_f20_3);
                sp4 = fabsf(arg0->unk1C) / powf(temp_s8->unk11E20, temp_f20_3);
                sp8 = fabsf(arg0->unk20) / powf(temp_s8->unk11E20, temp_f20_3);
                var_s1_4 += 1;
                spC = fabsf(arg0->unk24) / powf(temp_s8->unk11E20, temp_f20_3);
                if ((f64) sp0 <= 1.0) {
                    sp10 = 0.0f;
                    sp0 = 1.0f;
                }
                if ((f64) sp->unk4 <= 1.0) {
                    sp10.unk4 = 0.0f;
                    sp->unk4 = 1.0f;
                }
                if ((f64) sp->unk8 <= 1.0) {
                    sp10.unk8 = 0.0f;
                    sp->unk8 = 1.0f;
                }
                if ((f64) sp->unkC <= 1.0) {
                    sp10.unkC = 0.0f;
                    sp->unkC = 1.0f;
                }
                if (var_s1_4 != (var_a0_9 + 1)) {
                    goto loop_81;
                }
            }
        } else {
            var_a0_12 = 1;
            var_f5_4 = 1.0f;
            var_s1_5 = 1;
            spE8 = (bitwise f64) temp_f9_2;
            temp_s4_5 = temp_s8 + 0x119E4;
            if (temp_f4_21 < temp_f10_2) {
                var_a0_12 = 1;
                do {
                    var_f5_4 *= temp_f4_21;
                    var_a0_12 += 1;
                } while (temp_f4_21 < (temp_f10_2 / var_f5_4));
                if (var_a0_12 > 0) {
                    goto block_124;
                }
            } else {
block_124:
loop_135:
                temp_f4_27 = temp_s8->unk11E20;
                if (temp_f4_27 < sp0) {
                    sp0 = temp_f4_27;
                }
                temp_f4_28 = temp_s8->unk11E20;
                if (temp_f4_28 < sp->unk4) {
                    sp->unk4 = temp_f4_28;
                }
                temp_f4_29 = temp_s8->unk11E20;
                if (temp_f4_29 < sp->unk8) {
                    sp->unk8 = temp_f4_29;
                }
                temp_f4_30 = temp_s8->unk11E20;
                if (temp_f4_30 < sp->unkC) {
                    sp->unkC = temp_f4_30;
                }
                sp10 = 0.0f;
                sp14 = 0.0f;
                sp18 = 0.0f;
                sp1C = 0.0f;
                __glOdysseyImageChainAddOpAcceptSignedDataFromHost(sp, (s64) &sp10);
                if (var_s1_5 == 1) {
                    __glOdysseyImageMovePixelsCopy(temp_s4_5, arg0->unk44, (s64) &spC0, 1, 1, (bitwise s64) spD0);
                } else {
                    spCC = spDC;
                    spC8 = spD8;
                    spC4 = spD4;
                    spC0 = spD0;
                    __glOdysseyImageMovePixelsCopy(temp_s4_5, temp_s4_5, (s64) &spC0, 1, 1, (bitwise s64) spD0, (bitwise s32) spD4, (bitwise s64) spD8, spDC);
                }
                sp0 = (bitwise f32) unksp100 / powf(temp_s8->unk11E20, (f32) var_s1_5);
                sp4 = var_f30 / powf(temp_s8->unk11E20, second half of f64);
                sp8 = var_f28 / powf(temp_s8->unk11E20, second half of f64);
                var_f26 = second half of f64;
                var_s1_5 += 1;
                spC = (bitwise f32) unksp108 / powf(temp_s8->unk11E20, second half of f64);
                var_f28 = second half of f64;
                if ((f64) sp0 <= 1.0) {
                    sp0 = second half of f64;
                }
                var_f30 = second half of f64;
                if ((f64) sp->unk4 <= 1.0) {
                    sp->unk4 = (f32) (second half of f64);
                }
                if ((f64) sp->unk8 <= 1.0) {
                    sp->unk8 = (f32) (second half of f64);
                }
                if ((f64) sp->unkC <= 1.0) {
                    sp->unkC = (f32) (second half of f64);
                }
                if (var_s1_5 != (var_a0_12 + 1)) {
                    goto loop_135;
                }
            }
            temp_f17_3 = arg0->unk28;
            sp10 = temp_f17_3;
            temp_f16_3 = arg0->unk2C;
            sp14 = temp_f16_3;
            temp_f15_3 = arg0->unk30;
            sp18 = temp_f15_3;
            temp_f14_4 = arg0->unk34;
            sp1C = temp_f14_4;
            temp_f13_2 = temp_s8->unk11E20;
            temp_f18_2 = (s32) ceilf((bitwise f32) spE8 / temp_f13_2, (bitwise ? **) temp_f13_2, (bitwise ? **) temp_f14_4, temp_f15_3, temp_f16_3, (bitwise ? **) temp_f17_3);
            var_s1_6 = 1;
            temp_s4_6 = temp_s8 + 0x119E4;
            if (temp_f18_2 > 0) {
loop_151:
                temp_f4_31 = temp_s8->unk11E20;
                if (temp_f4_31 < sp10) {
                    sp10 = temp_f4_31;
                } else {
                    temp_f6_6 = -temp_f4_31;
                    if (sp10 < temp_f6_6) {
                        sp10 = temp_f6_6;
                    }
                }
                temp_f5_15 = sp10.unk4;
                temp_f4_32 = temp_s8->unk11E20;
                if (temp_f4_32 < temp_f5_15) {
                    sp10.unk4 = temp_f4_32;
                } else {
                    temp_f6_7 = -temp_f4_32;
                    if (temp_f5_15 < temp_f6_7) {
                        sp10.unk4 = temp_f6_7;
                    }
                }
                temp_f5_16 = sp10.unk8;
                temp_f4_33 = temp_s8->unk11E20;
                if (temp_f4_33 < temp_f5_16) {
                    sp10.unk8 = temp_f4_33;
                } else {
                    temp_f6_8 = -temp_f4_33;
                    if (temp_f5_16 < temp_f6_8) {
                        sp10.unk8 = temp_f6_8;
                    }
                }
                temp_f5_17 = sp10.unkC;
                temp_f4_34 = temp_s8->unk11E20;
                if (temp_f4_34 < temp_f5_17) {
                    sp10.unkC = temp_f4_34;
                } else {
                    temp_f6_9 = -temp_f4_34;
                    if (temp_f5_17 < temp_f6_9) {
                        sp10.unkC = temp_f6_9;
                    }
                }
                sp0 = var_f26;
                sp4 = var_f26;
                sp8 = var_f26;
                spC = var_f26;
                __glOdysseyImageChainAddOpAcceptSignedDataFromHost(sp, (s64) &sp10);
                spCC = spDC;
                spC8 = spD8;
                spC4 = spD4;
                var_a0_13 = temp_s4_6;
                spC0 = spD0;
                if (var_s1_6 == temp_f18_2) {
                    var_a0_13 = arg0->unk48;
                    spD0 = arg1->unk10;
                    spD4 = arg1->unk14;
                    spD8 = arg1->unk18;
                    spDC = arg1->unk1C;
                }
                __glOdysseyImageMovePixelsCopy(var_a0_13, temp_s4_6, (s64) &spC0, 1, 1);
                temp_f20_4 = (f32) var_s1_6;
                temp_f5_18 = arg0->unk28;
                temp_f4_35 = temp_s8->unk11E20 * temp_f20_4;
                if (temp_f4_35 < temp_f5_18) {
                    sp10 = M2C_ERROR(/* unknown instruction: nmsub.s $f21, $f5, $f6, $f20 */);
                } else if (temp_f5_18 < -temp_f4_35) {
                    sp10 = M2C_ERROR(/* unknown instruction: madd.s $f25, $f5, $f6, $f20 */);
                } else {
                    sp10 = 0.0f;
                }
                temp_f5_19 = arg0->unk2C;
                temp_f4_36 = temp_s8->unk11E20 * temp_f20_4;
                if (temp_f4_36 < temp_f5_19) {
                    sp14 = M2C_ERROR(/* unknown instruction: nmsub.s $f27, $f5, $f6, $f20 */);
                } else if (temp_f5_19 < -temp_f4_36) {
                    sp14 = M2C_ERROR(/* unknown instruction: madd.s $f31, $f5, $f6, $f20 */);
                } else {
                    sp14 = 0.0f;
                }
                temp_f5_20 = arg0->unk30;
                temp_f4_37 = temp_s8->unk11E20 * temp_f20_4;
                var_s1_6 += 1;
                if (temp_f4_37 < temp_f5_20) {
                    sp18 = M2C_ERROR(/* unknown instruction: nmsub.s $f0, $f5, $f6, $f20 */);
                } else if (temp_f5_20 < -temp_f4_37) {
                    sp18 = M2C_ERROR(/* unknown instruction: madd.s $f2, $f5, $f6, $f20 */);
                } else {
                    sp18 = 0.0f;
                }
                temp_f5_21 = arg0->unk34;
                temp_f4_38 = temp_s8->unk11E20 * temp_f20_4;
                if (temp_f4_38 < temp_f5_21) {
                    sp1C = M2C_ERROR(/* unknown instruction: nmsub.s $f3, $f5, $f6, $f20 */);
                } else if (temp_f5_21 < -temp_f4_38) {
                    sp1C = M2C_ERROR(/* unknown instruction: madd.s $f8, $f5, $f6, $f20 */);
                } else {
                    sp1C = 0.0f;
                }
                if (var_s1_6 < (temp_f18_2 + 1)) {
                    goto loop_151;
                }
            }
        }
    } else {
        __glOdysseyImageMovePixelsCopy(arg0->unk48, arg0->unk44, (s64) arg1, 0, 1, (s64) sp, temp_a6, (bitwise s64) temp_a7, second half of f64, temp_f13, temp_f14_2, temp_f15_2, temp_f16_2, temp_f17_2, temp_f18, temp_f19);
    }
    temp_s8->unk7CC4 = sp40;
    temp_s8->unk7CDC = (s32) sp40.unk18;
    temp_s8->unk7CD8 = (s32) sp40.unk14;
    temp_s8->unk7CD4 = (s32) sp40.unk10;
    temp_s8->unk7CD0 = (s32) sp40.unkC;
    temp_s8->unk7CCC = (s32) sp40.unk8;
    temp_s8->unk7CC8 = (s32) sp40.unk4;
    temp_s8->unk96A8 = (s32) unksp178;
    temp_s8->unk96A4 = (s32) unksp180;
    temp_s8->unk96A0 = (s32) unksp188;
    temp_s8->unk969C = (s32) unksp190;
    temp_s8->unk7C3C = (s32) unksp160;
    temp_s8->unk7C38 = (s32) unksp168;
    temp_s8->unk7C34 = (s32) unksp170;
    temp_s8->unk7BFC = (s32) unksp110;
    temp_s8->unk8C20 = (s64) sp60.unk38;
    temp_s8->unk8C18 = (s64) sp60.unk30;
    temp_s8->unk8C10 = (s64) sp60.unk28;
    temp_s8->unk8C08 = (s64) sp60.unk20;
    temp_s8->unk8C00 = (s64) sp60.unk18;
    temp_s8->unk8BF8 = (s64) sp60.unk10;
    temp_s8->unk8BF0 = (s64) sp60.unk8;
    temp_s8->unk8BE8 = sp60;
    temp_s8->unk8BE4 = (s32) unksp158;
    temp_s8->unk8D08 = (s32) spA0.unk1C;
    temp_s8->unk8D04 = (s32) spA0.unk18;
    temp_s8->unk8D00 = (s32) spA0.unk14;
    temp_s8->unk8CFC = (s32) spA0.unk10;
    temp_s8->unk8CF8 = (s32) spA0.unkC;
    temp_s8->unk8CF4 = (s32) spA0.unk8;
    temp_s8->unk8CF0 = (s32) spA0.unk4;
    temp_s8->unk8CEC = spA0;
    temp_s8->unk8D74 = (bitwise f32) unksp150;
    temp_s8->unk8D70 = (s32) unksp118;
    temp_s8->unk8D6C = (s32) unksp120;
    temp_s8->unk8CE8 = (s32) unksp128;
    temp_s8->unk16960 = (s32) (temp_s8->unk16960 | 0x238203);
    *(void *)0x1018 = 2;
    return 1;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0xf8, 0xfc, 0x100, 0x104, 0x188, 0x18c, 0x1c0, 0x1c4, 0x1c8, 0x1cc, 0x1d0, 0x1d4, 0x238, 0x23c], gap at: 0x108. */
s32 RenderFunc_ScaleBiasForSignedTypes(void *arg0, void *arg1, f32 fparg6, f32 fparg7) {
    f64 spF0;
    f64 spE8;
    f32 spDC;
    f32 spD8;
    f32 spD4;
    f32 spD0;
    f32 spCC;
    f32 spC8;
    f32 spC4;
    f32 spC0;
    s32 spA0;
    s64 sp60;
    s32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 sp1C;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    ? **temp_a6;
    f32 temp_f10;
    f32 temp_f11;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f14_2;
    f32 temp_f15;
    f32 temp_f16;
    f32 temp_f17;
    f32 temp_f18;
    f32 temp_f19;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f20_3;
    f32 temp_f20_4;
    f32 temp_f21;
    f32 temp_f23;
    f32 temp_f4;
    f32 temp_f4_10;
    f32 temp_f4_11;
    f32 temp_f4_12;
    f32 temp_f4_13;
    f32 temp_f4_14;
    f32 temp_f4_15;
    f32 temp_f4_16;
    f32 temp_f4_17;
    f32 temp_f4_18;
    f32 temp_f4_19;
    f32 temp_f4_20;
    f32 temp_f4_21;
    f32 temp_f4_22;
    f32 temp_f4_23;
    f32 temp_f4_24;
    f32 temp_f4_25;
    f32 temp_f4_26;
    f32 temp_f4_27;
    f32 temp_f4_28;
    f32 temp_f4_29;
    f32 temp_f4_2;
    f32 temp_f4_30;
    f32 temp_f4_31;
    f32 temp_f4_32;
    f32 temp_f4_33;
    f32 temp_f4_34;
    f32 temp_f4_35;
    f32 temp_f4_36;
    f32 temp_f4_37;
    f32 temp_f4_38;
    f32 temp_f4_3;
    f32 temp_f4_4;
    f32 temp_f4_5;
    f32 temp_f4_6;
    f32 temp_f4_7;
    f32 temp_f4_8;
    f32 temp_f4_9;
    f32 temp_f5;
    f32 temp_f5_10;
    f32 temp_f5_11;
    f32 temp_f5_12;
    f32 temp_f5_13;
    f32 temp_f5_14;
    f32 temp_f5_15;
    f32 temp_f5_16;
    f32 temp_f5_17;
    f32 temp_f5_18;
    f32 temp_f5_19;
    f32 temp_f5_20;
    f32 temp_f5_21;
    f32 temp_f5_2;
    f32 temp_f5_3;
    f32 temp_f5_4;
    f32 temp_f5_5;
    f32 temp_f5_6;
    f32 temp_f5_7;
    f32 temp_f5_8;
    f32 temp_f5_9;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f6_3;
    f32 temp_f6_4;
    f32 temp_f6_5;
    f32 temp_f6_6;
    f32 temp_f6_7;
    f32 temp_f6_8;
    f32 temp_f6_9;
    f32 temp_f7;
    f32 temp_f7_2;
    f32 temp_f8;
    f32 temp_f8_2;
    f32 temp_f9;
    f32 temp_f9_2;
    f32 var_f17;
    f32 var_f18;
    f32 var_f19;
    f32 var_f26;
    f32 var_f28;
    f32 var_f30;
    f32 var_f5;
    f32 var_f5_2;
    f32 var_f5_3;
    f32 var_f5_4;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a1_5;
    s32 temp_a1_6;
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_f14;
    s32 temp_f18_2;
    s32 temp_s5;
    s32 temp_s5_2;
    s32 temp_s5_3;
    s32 temp_s5_4;
    s32 temp_s5_5;
    s32 temp_s5_6;
    s32 var_a0_4;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s1_3;
    s32 var_s1_4;
    s32 var_s1_5;
    s32 var_s1_6;
    s32 var_s3;
    s64 var_a0;
    s64 var_a0_2;
    s64 var_a0_3;
    s64 var_s6;
    void *temp_a4;

    var_f18 = fparg6;
    var_f19 = fparg7;
    unksp120 = 0;
    var_f26 = 0.0f;
    sp3C = 0.0f;
    sp38 = 0.0f;
    sp34 = 0.0f;
    sp30 = 0.0f;
    sp2C = 0.0f;
    sp28 = 0.0f;
    sp24 = 0.0f;
    sp20 = 0.0f;
    sp1C = 0.0f;
    sp18 = 0.0f;
    sp14 = 0.0f;
    sp10 = 0.0f;
    spC = 1.0f;
    sp8 = 1.0f;
    sp4 = 1.0f;
    sp0 = 1.0f;
    temp_a4 = *(void **)0x1010;
    unksp110 = 8;
    temp_a5 = temp_a4->unk7BFC;
    sp40 = temp_a4->unk7CC4;
    sp40.unk10 = (s32) temp_a4->unk7CD4;
    sp40.unk18 = (s32) temp_a4->unk7CDC;
    unksp118 = (s64) (temp_a4 + 0x8BE8);
    sp40.unkC = (s32) temp_a4->unk7CD0;
    sp40.unk14 = (s32) temp_a4->unk7CD8;
    sp40.unk8 = (s32) temp_a4->unk7CCC;
    sp40.unk4 = (s32) temp_a4->unk7CC8;
    unksp1B8 = (s64) temp_a4->unk96A4;
    unksp1B0 = (s64) temp_a4->unk96A0;
    unksp1A8 = (s64) temp_a4->unk7C34;
    unksp170 = (s64) temp_a4->unk96A8;
    unksp168 = (s64) temp_a4->unk969C;
    unksp160 = (s64) temp_a4->unk7C38;
    unksp158 = (s64) temp_a4->unk7C3C;
    sp60.unk10 = (s64) temp_a4->unk8BF8;
    sp60.unk18 = (s64) temp_a4->unk8C00;
    sp60.unk20 = (s64) temp_a4->unk8C08;
    sp60.unk28 = (s64) temp_a4->unk8C10;
    sp60.unk30 = (s64) temp_a4->unk8C18;
    sp60.unk38 = (s64) temp_a4->unk8C20;
    sp60.unk8 = (s64) temp_a4->unk8BF0;
    sp60 = temp_a4->unk8BE8;
    unksp178 = (s64) temp_a4->unk8BE4;
    spA0.unk4 = (s32) temp_a4->unk8CF0;
    spA0.unk8 = (s32) temp_a4->unk8CF4;
    spA0.unkC = (s32) temp_a4->unk8CF8;
    spA0.unk10 = (s32) temp_a4->unk8CFC;
    spA0.unk14 = (s32) temp_a4->unk8D00;
    spA0.unk18 = (s32) temp_a4->unk8D04;
    spA0.unk1C = (s32) temp_a4->unk8D08;
    spA0 = temp_a4->unk8CEC;
    temp_a6 = temp_a4->unk8D74;
    temp_a7 = temp_a4->unk8D70;
    temp_a4->unk7BFC = (s32) (temp_a5 & ~0x20000);
    temp_a4->unk16960 = (s32) (temp_a4->unk16960 | 2);
    *(s32 *)0x1018 = 2;
    temp_a4->unk7CD4 = (s32) (temp_a4->unk7CD4 | 0x40000 | 0x4000);
    temp_a2 = temp_a4->unk16960 | 0x200;
    temp_a4->unk16960 = temp_a2;
    *(void *)0x1018 = 2;
    temp_a4->unk16960 = (s32) (0x200000 | temp_a4->unk16960);
    temp_a4->unk96A4 = (s32) (temp_a4->unk96A4 | 0x100000);
    *(void *)0x1018 = 2;
    spC0 = arg1->unk0;
    spC4 = arg1->unk4;
    spC8 = arg1->unk8;
    spD4 = 0.0f;
    spD0 = 0.0f;
    spCC = arg1->unkC;
    spD8 = M2C_ERROR(/* unknown instruction: movf.s $f10, $f12, $fcc3 */) - M2C_ERROR(/* unknown instruction: movf.s $f11, $f12, $fcc2 */);
    spDC = M2C_ERROR(/* unknown instruction: movf.s $f8, $f10, $fcc1 */) - M2C_ERROR(/* unknown instruction: movf.s $f9, $f10, $fcc0 */);
    temp_f7 = fabsf(arg0->unk18);
    sp0 = temp_f7;
    temp_f8 = fabsf(arg0->unk1C);
    sp4 = temp_f8;
    temp_f6 = fabsf(arg0->unk20);
    sp8 = temp_f6;
    temp_f10 = fabsf(arg0->unk24);
    spC = temp_f10;
    sp10 = arg0->unk28;
    sp14 = arg0->unk2C;
    sp18 = arg0->unk30;
    sp1C = arg0->unk34;
    var_f17 = M2C_ERROR(/* unknown instruction: movf.s $f17, $f9, $fcc7 */);
    M2C_ERROR(/* unknown instruction: movf.s $f11, $f17, $fcc6 */);
    temp_f9 = fabsf(sp10.unkC);
    M2C_ERROR(/* unknown instruction: movf.s $f16, $f11, $fcc5 */);
    unksp1A0 = (s64) temp_a4->unk8D6C;
    unksp198 = (s64) temp_a7;
    unksp190 = (s64) temp_a6;
    unksp180 = (s64) temp_a4->unk8CE8;
    temp_f9_2 = M2C_ERROR(/* unknown instruction: movf.s $f9, $f16, $fcc4 */);
    temp_f4 = temp_a4->unk11E20;
    temp_f5 = arg0->unk28;
    unksp150 = (s64) arg1;
    unksp148 = (s64) temp_a5;
    unksp140 = (s64) temp_a4;
    if (temp_f7 != 0.0f) {
        temp_f18 = temp_f5 / temp_f7;
        sp20 = temp_f18;
        var_f18 = temp_f4 * temp_f18;
        sp30 = var_f18;
    } else {
        sp30 = temp_f5;
        sp20 = temp_f5;
    }
    temp_f5_2 = arg0->unk2C;
    if (temp_f8 != 0.0f) {
        temp_f19 = temp_f5_2 / temp_f8;
        sp24 = temp_f19;
        var_f19 = temp_f4 * temp_f19;
        sp34 = var_f19;
    } else {
        sp34 = temp_f5_2;
        sp24 = temp_f5_2;
    }
    temp_f5_3 = arg0->unk30;
    if (temp_f6 != 0.0f) {
        temp_f21 = temp_f5_3 / temp_f6;
        sp28 = temp_f21;
        sp38 = temp_f4 * temp_f21;
    } else {
        sp38 = temp_f5_3;
        sp28 = temp_f5_3;
    }
    temp_f5_4 = arg0->unk34;
    if (temp_f10 != 0.0f) {
        temp_f23 = temp_f5_4 / temp_f10;
        sp2C = temp_f23;
        sp3C = temp_f4 * temp_f23;
    } else {
        sp3C = temp_f5_4;
        sp2C = temp_f5_4;
    }
    M2C_ERROR(/* unknown instruction: movf.s $f31, $f8, $fcc3 */);
    M2C_ERROR(/* unknown instruction: movf.s $f29, $f10, $fcc2 */);
    M2C_ERROR(/* unknown instruction: movf.s $f12, $f31, $fcc1 */);
    M2C_ERROR(/* unknown instruction: movf.s $f11, $f29, $fcc0 */);
    M2C_ERROR(/* unknown instruction: movf.s $f27, $f12, $fcc7 */);
    M2C_ERROR(/* unknown instruction: movf.s $f25, $f11, $fcc6 */);
    temp_f8_2 = M2C_ERROR(/* unknown instruction: movf.s $f8, $f27, $fcc5 */);
    M2C_ERROR(/* unknown instruction: movf.s $f10, $f25, $fcc4 */);
    temp_f7_2 = fabsf(arg0->unk24) / temp_f4;
    temp_f5_5 = fabsf(arg0->unk18) / temp_f4;
    var_f28 = fabsf(arg0->unk20) / temp_f4;
    var_f30 = fabsf(second half of f64) / temp_f4;
    sp0 = temp_f5_5;
    if ((f64) temp_f5_5 <= 1.0) {
        sp0 = 1.0f;
    }
    sp4 = var_f30;
    if ((f64) var_f30 <= 1.0) {
        sp4 = 1.0f;
    }
    sp8 = var_f28;
    if ((f64) var_f28 <= 1.0) {
        sp8 = 1.0f;
    }
    spC = temp_f7_2;
    if ((f64) temp_f7_2 <= 1.0) {
        spC = 1.0f;
    }
    temp_f11 = M2C_ERROR(/* unknown instruction: movf.s $f11, $f14, $fcc0 */);
    temp_a0 = M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc4 */);
    if ((temp_a0 != 0) && (var_f17 = temp_a4->unk11E20, (temp_f8_2 <= var_f17))) {
        sp1C = 0.0f;
        sp18 = 0.0f;
        sp14 = 0.0f;
        sp10 = 0.0f;
        temp_f4_2 = temp_a4->unk11E20;
        spE8 = (bitwise f64) temp_f7_2;
        var_a0 = 1;
        unksp108 = second half of f64;
        if (temp_f4_2 < temp_f11) {
            var_f5 = 1.0f;
            var_a0 = 1;
            do {
                var_f5 *= temp_f4_2;
                var_a0 += 1;
            } while (temp_f4_2 < (temp_f11 / var_f5));
            if (var_a0 > 0) {
                goto block_26;
            }
            var_s3 = 0;
        } else {
block_26:
            var_s3 = 0;
            var_s1 = 1;
            unksp1E8 = var_a0 + 1;
            unksp1D8 = var_a0;
            temp_s5 = unksp140 + 0x119E4;
loop_56:
            temp_f4_3 = temp_a4->unk11E20;
            if (temp_f4_3 < sp0) {
                sp0 = temp_f4_3;
            }
            temp_f4_4 = temp_a4->unk11E20;
            if (temp_f4_4 < sp->unk4) {
                sp->unk4 = temp_f4_4;
            }
            temp_f4_5 = temp_a4->unk11E20;
            if (temp_f4_5 < sp->unk8) {
                sp->unk8 = temp_f4_5;
            }
            temp_f4_6 = temp_a4->unk11E20;
            if (temp_f4_6 < sp->unkC) {
                sp->unkC = temp_f4_6;
            }
            __glOdysseyImageChainAddOpAcceptSignedDataFromHost(sp, (s64) &sp10);
            if (var_s1 == 1) {
                if (var_s1 == unksp1D8) {
                    temp_a4->unk16960 = (s32) (0x200000 | temp_a4->unk16960);
                    temp_a4->unk96A4 = (s32) (temp_a4->unk96A4 | 1);
                    *(void *)0x1018 = 2;
                }
                var_s3 = temp_s5;
                __glOdysseyImageMovePixelsCopy((f32 *) temp_s5, arg0->unk44, (s64) &spC0, 1, 0);
            } else {
                spC0 = spD0;
                temp_a1 = var_s3;
                spC8 = spD8;
                var_s3 = (var_s3 == temp_s5) ? (unksp140 + 0x11A20) : temp_s5;
                spCC = spDC;
                spC4 = spD4;
                if (var_s1 == unksp1D8) {
                    temp_a4->unk16960 = (s32) (0x200000 | temp_a4->unk16960);
                    temp_a4->unk96A4 = (s32) (temp_a4->unk96A4 | 1);
                    *(void *)0x1018 = 2;
                }
                __glOdysseyImageMovePixelsCopy((f32 *) var_s3, (f32 *) temp_a1, (s64) &spC0, 1, 0, (bitwise s64) spD8, (bitwise s32) spDC);
            }
            sp0 = (bitwise f32) unksp108 / powf(temp_a4->unk11E20, (f32) var_s1);
            sp4 = var_f30 / powf(temp_a4->unk11E20, second half of f64);
            sp8 = var_f28 / powf(temp_a4->unk11E20, second half of f64);
            spC = (bitwise f32) spE8 / powf(temp_a4->unk11E20, second half of f64);
            var_f28 = second half of f64;
            if ((f64) sp0 <= 1.0) {
                sp0 = 1.0f;
            }
            var_f30 = second half of f64;
            if ((f64) sp->unk4 <= 1.0) {
                sp->unk4 = 1.0f;
            }
            if ((f64) sp->unk8 <= 1.0) {
                sp->unk8 = 1.0f;
            }
            if ((f64) sp->unkC <= 1.0) {
                sp->unkC = 1.0f;
            }
            var_s1 += 1;
            if (var_s1 != unksp1E8) {
                goto loop_56;
            }
        }
    } else if (((f64) temp_f11 <= 1.0) && (temp_f4_7 = temp_a4->unk11E20, var_s1_2 = 1, var_s3 = 0, (temp_f4_7 < temp_f9_2))) {
        spF0 = (bitwise f64) temp_f9_2;
        if (!(temp_f4_7 < (second half of f64))) {
            sp10 = 0.0f;
            sp14 = 0.0f;
            sp18 = 0.0f;
            sp1C = 0.0f;
            sp0 = fabsf(arg0->unk18);
            sp4 = fabsf(arg0->unk1C);
            sp8 = fabsf(arg0->unk20);
            spC = fabsf(arg0->unk24);
            M2C_ERROR(/* unknown instruction: movf.s $f31, $f6, $fcc6 */);
            M2C_ERROR(/* unknown instruction: movf.s $f29, $f31, $fcc5 */);
            M2C_ERROR(/* unknown instruction: movf.s $f27, $f29, $fcc4 */);
            temp_f5_6 = M2C_ERROR(/* unknown instruction: movf.s $f5, $f27, $fcc3 */);
            temp_f4_8 = temp_a4->unk11E20;
            var_a0_2 = 1;
            var_f5_2 = 1.0f;
            if (temp_f4_8 < temp_f5_6) {
                var_a0_2 = 1;
                do {
                    var_f5_2 *= temp_f4_8;
                    var_a0_2 += 1;
                } while (temp_f4_8 < (temp_f5_6 / var_f5_2));
                var_s6 = var_a0_2 + 1;
                if (var_a0_2 > 0) {
                    goto block_34;
                }
                var_s3 = 0;
            } else {
                var_s6 = 2;
block_34:
                unksp1E8 = var_s6;
                unksp130 = var_a0_2;
                temp_s5_2 = unksp140 + 0x119E4;
loop_87:
                temp_f4_9 = temp_a4->unk11E20;
                if (temp_f4_9 < sp0) {
                    sp0 = temp_f4_9;
                }
                temp_f4_10 = temp_a4->unk11E20;
                if (temp_f4_10 < sp->unk4) {
                    sp->unk4 = temp_f4_10;
                }
                temp_f4_11 = temp_a4->unk11E20;
                if (temp_f4_11 < sp->unk8) {
                    sp->unk8 = temp_f4_11;
                }
                temp_f4_12 = temp_a4->unk11E20;
                if (temp_f4_12 < sp->unkC) {
                    sp->unkC = temp_f4_12;
                }
                __glOdysseyImageChainAddOpAcceptSignedDataFromHost(sp, (s64) &sp10);
                if (var_s1_2 == 1) {
                    if (var_s1_2 == unksp130) {
                        temp_a4->unk16960 = (s32) (0x200000 | temp_a4->unk16960);
                        temp_a4->unk96A4 = (s32) (temp_a4->unk96A4 | 1);
                        *(void *)0x1018 = 2;
                    }
                    var_s3 = temp_s5_2;
                    __glOdysseyImageMovePixelsCopy((f32 *) temp_s5_2, arg0->unk44, (s64) &spC0, 1, 1);
                } else {
                    spC0 = spD0;
                    temp_a1_2 = var_s3;
                    spC8 = spD8;
                    var_s3 = (var_s3 == temp_s5_2) ? (unksp140 + 0x11A20) : temp_s5_2;
                    spCC = spDC;
                    spC4 = spD4;
                    if (var_s1_2 == unksp130) {
                        temp_a4->unk16960 = (s32) (0x200000 | temp_a4->unk16960);
                        temp_a4->unk96A4 = (s32) (temp_a4->unk96A4 | 1);
                        *(void *)0x1018 = 2;
                    }
                    __glOdysseyImageMovePixelsCopy((f32 *) var_s3, (f32 *) temp_a1_2, (s64) &spC0, 1, 1);
                }
                temp_f20 = (f32) var_s1_2;
                sp0 = fabsf(arg0->unk18) / powf(temp_a4->unk11E20, temp_f20);
                sp4 = fabsf(arg0->unk1C) / powf(temp_a4->unk11E20, temp_f20);
                sp8 = fabsf(arg0->unk20) / powf(temp_a4->unk11E20, temp_f20);
                spC = fabsf(arg0->unk24) / powf(temp_a4->unk11E20, temp_f20);
                if ((f64) sp0 <= 1.0) {
                    sp0 = 1.0f;
                }
                if ((f64) sp->unk4 <= 1.0) {
                    sp->unk4 = 1.0f;
                }
                if ((f64) sp->unk8 <= 1.0) {
                    sp->unk8 = 1.0f;
                }
                if ((f64) sp->unkC <= 1.0) {
                    sp->unkC = 1.0f;
                }
                var_s1_2 += 1;
                if (var_s1_2 != unksp1E8) {
                    goto loop_87;
                }
            }
        } else {
            sp0 = 1.0f;
            sp4 = 1.0f;
            sp8 = 1.0f;
            spC = 1.0f;
            temp_f14 = (s32) ceilf((bitwise f32) temp_a0, (? **) temp_a2, sp, (bitwise f32) temp_a4, (bitwise f32) temp_a5, temp_a6, temp_a7, (bitwise f32) spF0 / (second half of f64), second half of f64, M2C_ERROR(/* unknown instruction: movf.s $f14, $f15, $fcc1 */), M2C_ERROR(/* unknown instruction: movf.s $f15, $f16, $fcc2 */), M2C_ERROR(/* unknown instruction: movf.s $f16, $f6, $fcc3 */), var_f17, var_f18, var_f19);
            unksp138 = (s64) temp_f14;
            if (temp_f14 > 0) {
                var_s3 = 0;
                unksp1F0 = unksp138 + 1;
                var_s1_3 = 1;
                temp_s5_3 = unksp140 + 0x119E4;
loop_199:
                temp_f4_13 = temp_a4->unk11E20;
                if (temp_f4_13 < sp10) {
                    sp10 = temp_f4_13;
                } else {
                    temp_f6_2 = -temp_f4_13;
                    if (sp10 < temp_f6_2) {
                        sp10 = temp_f6_2;
                    }
                }
                temp_f5_7 = sp10.unk4;
                temp_f4_14 = temp_a4->unk11E20;
                if (temp_f4_14 < temp_f5_7) {
                    sp10.unk4 = temp_f4_14;
                } else {
                    temp_f6_3 = -temp_f4_14;
                    if (temp_f5_7 < temp_f6_3) {
                        sp10.unk4 = temp_f6_3;
                    }
                }
                temp_f5_8 = sp10.unk8;
                temp_f4_15 = temp_a4->unk11E20;
                if (temp_f4_15 < temp_f5_8) {
                    sp10.unk8 = temp_f4_15;
                } else {
                    temp_f6_4 = -temp_f4_15;
                    if (temp_f5_8 < temp_f6_4) {
                        sp10.unk8 = temp_f6_4;
                    }
                }
                temp_f5_9 = sp10.unkC;
                temp_f4_16 = temp_a4->unk11E20;
                if (temp_f4_16 < temp_f5_9) {
                    sp10.unkC = temp_f4_16;
                } else {
                    temp_f6_5 = -temp_f4_16;
                    if (temp_f5_9 < temp_f6_5) {
                        sp10.unkC = temp_f6_5;
                    }
                }
                __glOdysseyImageChainAddOpAcceptSignedDataFromHost(sp, (s64) &sp10);
                if (var_s1_3 != 1) {
                    spC0 = spD0;
                    temp_a1_3 = var_s3;
                    spC8 = spD8;
                    var_s3 = (var_s3 == temp_s5_3) ? (unksp140 + 0x11A20) : temp_s5_3;
                    spCC = spDC;
                    spC4 = spD4;
                    if (var_s1_3 == unksp138) {
                        temp_a4->unk16960 = (s32) (0x200000 | temp_a4->unk16960);
                        temp_a4->unk96A4 = (s32) (temp_a4->unk96A4 | 1);
                        *(void *)0x1018 = 2;
                    }
                    __glOdysseyImageMovePixelsCopy((f32 *) var_s3, (f32 *) temp_a1_3, (s64) &spC0, 1, 1);
                } else {
                    if (var_s1_3 == unksp138) {
                        temp_a4->unk16960 = (s32) (0x200000 | temp_a4->unk16960);
                        temp_a4->unk96A4 = (s32) (temp_a4->unk96A4 | 1);
                        *(void *)0x1018 = 2;
                    }
                    var_s3 = temp_s5_3;
                    __glOdysseyImageMovePixelsCopy((f32 *) temp_s5_3, arg0->unk44, (s64) &spC0, 1, 1);
                }
                temp_f20_2 = (f32) var_s1_3;
                temp_f5_10 = arg0->unk28;
                temp_f4_17 = temp_a4->unk11E20 * temp_f20_2;
                if (temp_f4_17 < temp_f5_10) {
                    sp10 = M2C_ERROR(/* unknown instruction: nmsub.s $f21, $f5, $f6, $f20 */);
                } else if (temp_f5_10 < -temp_f4_17) {
                    sp10 = M2C_ERROR(/* unknown instruction: madd.s $f25, $f5, $f6, $f20 */);
                } else {
                    sp10 = 0.0f;
                }
                temp_f5_11 = arg0->unk2C;
                temp_f4_18 = temp_a4->unk11E20 * temp_f20_2;
                var_s1_3 += 1;
                if (temp_f4_18 < temp_f5_11) {
                    sp14 = M2C_ERROR(/* unknown instruction: nmsub.s $f27, $f5, $f6, $f20 */);
                } else if (temp_f5_11 < -temp_f4_18) {
                    sp14 = M2C_ERROR(/* unknown instruction: madd.s $f31, $f5, $f6, $f20 */);
                } else {
                    sp14 = 0.0f;
                }
                temp_f5_12 = arg0->unk30;
                temp_f4_19 = temp_a4->unk11E20 * temp_f20_2;
                if (temp_f4_19 < temp_f5_12) {
                    sp18 = M2C_ERROR(/* unknown instruction: nmsub.s $f0, $f5, $f6, $f20 */);
                } else if (temp_f5_12 < -temp_f4_19) {
                    sp18 = M2C_ERROR(/* unknown instruction: madd.s $f2, $f5, $f6, $f20 */);
                } else {
                    sp18 = 0.0f;
                }
                temp_f5_13 = arg0->unk34;
                temp_f4_20 = temp_a4->unk11E20 * temp_f20_2;
                if (temp_f4_20 < temp_f5_13) {
                    sp1C = M2C_ERROR(/* unknown instruction: nmsub.s $f3, $f5, $f6, $f20 */);
                } else if (temp_f5_13 < -temp_f4_20) {
                    sp1C = M2C_ERROR(/* unknown instruction: madd.s $f8, $f5, $f6, $f20 */);
                } else {
                    sp1C = 0.0f;
                }
                if (var_s1_3 != unksp1F0) {
                    goto loop_199;
                }
            } else {
                var_s3 = 0;
            }
        }
    } else if (temp_a0 != 0) {
        temp_f4_21 = temp_a4->unk11E20;
        unksp108 = second half of f64;
        if (temp_f4_21 < temp_f8_2) {
            if (!(temp_f4_21 < (second half of f64))) {
                sp10 = 0.0f;
                sp14 = 0.0f;
                sp18 = 0.0f;
                sp1C = 0.0f;
                sp0 = fabsf(arg0->unk18);
                sp4 = fabsf(arg0->unk1C);
                sp8 = fabsf(arg0->unk20);
                var_s3 = 0;
                var_s1_4 = 1;
                spC = fabsf(arg0->unk24);
                M2C_ERROR(/* unknown instruction: movf.s $f8, $f6, $fcc6 */);
                M2C_ERROR(/* unknown instruction: movf.s $f7, $f8, $fcc5 */);
                M2C_ERROR(/* unknown instruction: movf.s $f6, $f7, $fcc4 */);
                temp_f5_14 = M2C_ERROR(/* unknown instruction: movf.s $f5, $f6, $fcc3 */);
                temp_f4_22 = temp_a4->unk11E20;
                var_a0_3 = 1;
                var_f5_3 = 1.0f;
                if (temp_f4_22 < temp_f5_14) {
                    var_a0_3 = 1;
                    do {
                        var_f5_3 *= temp_f4_22;
                        var_a0_3 += 1;
                    } while (temp_f4_22 < (temp_f5_14 / var_f5_3));
                    if (var_a0_3 > 0) {
                        goto block_42;
                    }
                    var_s3 = 0;
                } else {
block_42:
                    unksp1E8 = var_a0_3 + 1;
                    unksp128 = var_a0_3;
                    temp_s5_4 = unksp140 + 0x119E4;
loop_111:
                    temp_f4_23 = temp_a4->unk11E20;
                    if (temp_f4_23 < sp0) {
                        sp0 = temp_f4_23;
                    }
                    temp_f4_24 = temp_a4->unk11E20;
                    if (temp_f4_24 < sp->unk4) {
                        sp->unk4 = temp_f4_24;
                    }
                    temp_f4_25 = temp_a4->unk11E20;
                    if (temp_f4_25 < sp->unk8) {
                        sp->unk8 = temp_f4_25;
                    }
                    temp_f4_26 = temp_a4->unk11E20;
                    if (temp_f4_26 < sp->unkC) {
                        sp->unkC = temp_f4_26;
                    }
                    __glOdysseyImageChainAddOpAcceptSignedDataFromHost(sp, (s64) &sp10);
                    if (var_s1_4 == 1) {
                        if (var_s1_4 == unksp128) {
                            temp_a4->unk16960 = (s32) (0x200000 | temp_a4->unk16960);
                            temp_a4->unk96A4 = (s32) (temp_a4->unk96A4 | 1);
                            *(void *)0x1018 = 2;
                        }
                        var_s3 = temp_s5_4;
                        __glOdysseyImageMovePixelsCopy((f32 *) temp_s5_4, arg0->unk44, (s64) &spC0, 1, 1);
                    } else {
                        spC0 = spD0;
                        temp_a1_4 = var_s3;
                        temp_a6_2 = var_s3 == temp_s5_4;
                        spC8 = spD8;
                        var_s3 = (temp_a6_2 != 0) ? (unksp140 + 0x11A20) : temp_s5_4;
                        spCC = spDC;
                        spC4 = spD4;
                        if (var_s1_4 == unksp128) {
                            temp_a4->unk16960 = (s32) (0x200000 | temp_a4->unk16960);
                            temp_a4->unk96A4 = (s32) (temp_a4->unk96A4 | 1);
                            *(void *)0x1018 = 2;
                        }
                        __glOdysseyImageMovePixelsCopy((f32 *) var_s3, (f32 *) temp_a1_4, (s64) &spC0, 1, 1, unksp128, temp_a6_2);
                    }
                    temp_f20_3 = (f32) var_s1_4;
                    sp0 = fabsf(arg0->unk18) / powf(temp_a4->unk11E20, temp_f20_3);
                    sp4 = fabsf(arg0->unk1C) / powf(temp_a4->unk11E20, temp_f20_3);
                    sp8 = fabsf(arg0->unk20) / powf(temp_a4->unk11E20, temp_f20_3);
                    spC = fabsf(arg0->unk24) / powf(temp_a4->unk11E20, temp_f20_3);
                    if ((f64) sp0 <= 1.0) {
                        sp0 = 1.0f;
                    }
                    if ((f64) sp->unk4 <= 1.0) {
                        sp->unk4 = 1.0f;
                    }
                    if ((f64) sp->unk8 <= 1.0) {
                        sp->unk8 = 1.0f;
                    }
                    if ((f64) sp->unkC <= 1.0) {
                        sp->unkC = 1.0f;
                    }
                    var_s1_4 += 1;
                    if (var_s1_4 != unksp1E8) {
                        goto loop_111;
                    }
                }
            } else {
                spF0 = (bitwise f64) temp_f9_2;
                var_a0_4 = 1;
                var_s3 = 0;
                var_f5_4 = 1.0f;
                var_s1_5 = 1;
                spE8 = (bitwise f64) temp_f7_2;
                if (temp_f4_21 < temp_f11) {
                    do {
                        var_f5_4 *= temp_f4_21;
                        var_a0_4 += 1;
                    } while (temp_f4_21 < (temp_f11 / var_f5_4));
                    if (var_a0_4 > 0) {
                        goto block_127;
                    }
                    var_s3 = 0;
                } else {
                    var_a0_4 = 1;
block_127:
                    unksp1E8 = var_a0_4 + 1;
                    temp_s5_5 = unksp140 + 0x119E4;
loop_138:
                    temp_f4_27 = temp_a4->unk11E20;
                    if (temp_f4_27 < sp0) {
                        sp0 = temp_f4_27;
                    }
                    temp_f4_28 = temp_a4->unk11E20;
                    if (temp_f4_28 < sp->unk4) {
                        sp->unk4 = temp_f4_28;
                    }
                    temp_f4_29 = temp_a4->unk11E20;
                    if (temp_f4_29 < sp->unk8) {
                        sp->unk8 = temp_f4_29;
                    }
                    temp_f4_30 = temp_a4->unk11E20;
                    if (temp_f4_30 < sp->unkC) {
                        sp->unkC = temp_f4_30;
                    }
                    sp10 = var_f26;
                    sp14 = var_f26;
                    sp18 = var_f26;
                    sp1C = var_f26;
                    __glOdysseyImageChainAddOpAcceptSignedDataFromHost(sp, (s64) &sp10);
                    if (var_s1_5 == 1) {
                        var_s3 = temp_s5_5;
                        __glOdysseyImageMovePixelsCopy((f32 *) temp_s5_5, arg0->unk44, (s64) &spC0, 1, 1);
                    } else {
                        spCC = spDC;
                        temp_a1_5 = var_s3;
                        spC8 = spD8;
                        spC4 = spD4;
                        var_s3 = (var_s3 == temp_s5_5) ? (unksp140 + 0x11A20) : temp_s5_5;
                        spC0 = spD0;
                        __glOdysseyImageMovePixelsCopy((f32 *) var_s3, (f32 *) temp_a1_5, (s64) &spC0, 1, 1);
                    }
                    sp0 = (bitwise f32) unksp108 / powf(temp_a4->unk11E20, (f32) var_s1_5);
                    sp4 = var_f30 / powf(temp_a4->unk11E20, second half of f64);
                    sp8 = var_f28 / powf(temp_a4->unk11E20, second half of f64);
                    var_f26 = second half of f64;
                    spC = (bitwise f32) spE8 / powf(temp_a4->unk11E20, second half of f64);
                    var_f28 = second half of f64;
                    if ((f64) sp0 <= 1.0) {
                        sp0 = 1.0f;
                    }
                    var_f30 = second half of f64;
                    var_s1_5 += 1;
                    if ((f64) sp->unk4 <= 1.0) {
                        sp->unk4 = 1.0f;
                    }
                    if ((f64) sp->unk8 <= 1.0) {
                        sp->unk8 = 1.0f;
                    }
                    if ((f64) sp->unkC <= 1.0) {
                        sp->unkC = 1.0f;
                    }
                    if (var_s1_5 != unksp1E8) {
                        goto loop_138;
                    }
                }
                temp_f17 = arg0->unk28;
                sp10 = temp_f17;
                temp_f16 = arg0->unk2C;
                sp14 = temp_f16;
                temp_f15 = arg0->unk30;
                sp18 = temp_f15;
                temp_f14_2 = arg0->unk34;
                sp1C = temp_f14_2;
                temp_f13 = temp_a4->unk11E20;
                temp_f18_2 = (s32) ceilf((bitwise f32) spF0 / temp_f13, (bitwise ? **) temp_f13, (bitwise ? **) temp_f14_2, temp_f15, temp_f16, (bitwise ? **) temp_f17);
                var_s1_6 = 1;
                unksp1E0 = (s64) temp_f18_2;
                if (temp_f18_2 > 0) {
                    unksp1F0 = unksp1E0 + 1;
                    temp_s5_6 = unksp140 + 0x119E4;
loop_154:
                    temp_f4_31 = temp_a4->unk11E20;
                    if (temp_f4_31 < sp10) {
                        sp10 = temp_f4_31;
                    } else {
                        temp_f6_6 = -temp_f4_31;
                        if (sp10 < temp_f6_6) {
                            sp10 = temp_f6_6;
                        }
                    }
                    temp_f5_15 = sp10.unk4;
                    temp_f4_32 = temp_a4->unk11E20;
                    if (temp_f4_32 < temp_f5_15) {
                        sp10.unk4 = temp_f4_32;
                    } else {
                        temp_f6_7 = -temp_f4_32;
                        if (temp_f5_15 < temp_f6_7) {
                            sp10.unk4 = temp_f6_7;
                        }
                    }
                    temp_f5_16 = sp10.unk8;
                    temp_f4_33 = temp_a4->unk11E20;
                    if (temp_f4_33 < temp_f5_16) {
                        sp10.unk8 = temp_f4_33;
                    } else {
                        temp_f6_8 = -temp_f4_33;
                        if (temp_f5_16 < temp_f6_8) {
                            sp10.unk8 = temp_f6_8;
                        }
                    }
                    temp_f5_17 = sp10.unkC;
                    temp_f4_34 = temp_a4->unk11E20;
                    if (temp_f4_34 < temp_f5_17) {
                        sp10.unkC = temp_f4_34;
                    } else {
                        temp_f6_9 = -temp_f4_34;
                        if (temp_f5_17 < temp_f6_9) {
                            sp10.unkC = temp_f6_9;
                        }
                    }
                    sp0 = 1.0f;
                    sp4 = 1.0f;
                    sp8 = 1.0f;
                    spC = 1.0f;
                    __glOdysseyImageChainAddOpAcceptSignedDataFromHost(sp, (s64) &sp10);
                    spCC = spDC;
                    temp_a1_6 = var_s3;
                    spC8 = spD8;
                    var_s3 = (var_s3 == temp_s5_6) ? (unksp140 + 0x11A20) : temp_s5_6;
                    spC4 = spD4;
                    spC0 = spD0;
                    if (var_s1_6 == unksp1E0) {
                        temp_a4->unk16960 = (s32) (0x200000 | temp_a4->unk16960);
                        temp_a4->unk96A4 = (s32) (temp_a4->unk96A4 | 1);
                        *(void *)0x1018 = 2;
                    }
                    __glOdysseyImageMovePixelsCopy((f32 *) var_s3, (f32 *) temp_a1_6, (s64) &spC0, 1, 1);
                    temp_f20_4 = (f32) var_s1_6;
                    temp_f5_18 = arg0->unk28;
                    temp_f4_35 = temp_a4->unk11E20 * temp_f20_4;
                    if (temp_f4_35 < temp_f5_18) {
                        sp10 = M2C_ERROR(/* unknown instruction: nmsub.s $f21, $f5, $f6, $f20 */);
                    } else if (temp_f5_18 < -temp_f4_35) {
                        sp10 = M2C_ERROR(/* unknown instruction: madd.s $f25, $f5, $f6, $f20 */);
                    } else {
                        sp10 = var_f26;
                    }
                    temp_f5_19 = arg0->unk2C;
                    temp_f4_36 = temp_a4->unk11E20 * temp_f20_4;
                    if (temp_f4_36 < temp_f5_19) {
                        sp14 = M2C_ERROR(/* unknown instruction: nmsub.s $f27, $f5, $f6, $f20 */);
                    } else if (temp_f5_19 < -temp_f4_36) {
                        sp14 = M2C_ERROR(/* unknown instruction: madd.s $f31, $f5, $f6, $f20 */);
                    } else {
                        sp14 = var_f26;
                    }
                    temp_f5_20 = arg0->unk30;
                    temp_f4_37 = temp_a4->unk11E20 * temp_f20_4;
                    var_s1_6 += 1;
                    if (temp_f4_37 < temp_f5_20) {
                        sp18 = M2C_ERROR(/* unknown instruction: nmsub.s $f0, $f5, $f6, $f20 */);
                    } else if (temp_f5_20 < -temp_f4_37) {
                        sp18 = M2C_ERROR(/* unknown instruction: madd.s $f2, $f5, $f6, $f20 */);
                    } else {
                        sp18 = var_f26;
                    }
                    temp_f5_21 = arg0->unk34;
                    temp_f4_38 = temp_a4->unk11E20 * temp_f20_4;
                    if (temp_f4_38 < temp_f5_21) {
                        sp1C = M2C_ERROR(/* unknown instruction: nmsub.s $f3, $f5, $f6, $f20 */);
                    } else if (temp_f5_21 < -temp_f4_38) {
                        sp1C = M2C_ERROR(/* unknown instruction: madd.s $f8, $f5, $f6, $f20 */);
                    } else {
                        sp1C = var_f26;
                    }
                    if (var_s1_6 < unksp1F0) {
                        goto loop_154;
                    }
                }
            }
        } else {
            goto block_69;
        }
    } else {
block_69:
        var_s3 = (s32) arg0->unk44;
    }
    temp_a4->unk16960 = (s32) (0x200000 | temp_a4->unk16960);
    temp_a4->unk96A4 = (s32) (temp_a4->unk96A4 & ~1);
    *(void *)0x1018 = 2;
    temp_a4->unk16960 = (s32) (0x200000 | temp_a4->unk16960);
    temp_a4->unk96A4 = (s32) (temp_a4->unk96A4 & ~0x100000);
    *(void *)0x1018 = 2;
    sp10 = 0.00024414062f;
    sp14 = 0.00024414062f;
    sp18 = 0.00024414062f;
    sp1C = 0.00024414062f;
    sp0 = 2.0f;
    sp4 = 2.0f;
    sp8 = 2.0f;
    spC = 2.0f;
    __glOdysseyImageChainAddOpAcceptSignedDataFromHost(sp, (s64) &sp10);
    if (arg0->unk3C != 0) {
        temp_a4->unk8D08 = (s32) ((temp_a4->unk8D08 & 0xFFFF0000) | 0x1000);
    }
    temp_a4->unk8CE8 = 2;
    temp_a4->unk16960 = (s32) (0x10000 | temp_a4->unk16960);
    *(void *)0x1018 = 2;
    temp_f12 = unksp150->unk10;
    spD0 = temp_f12;
    spD4 = unksp150->unk14;
    spD8 = unksp150->unk18;
    spDC = unksp150->unk1C;
    __glOdysseyImageMovePixelsCopy(arg0->unk48, (f32 *) var_s3, (s64) &spC0, 1, 1, (bitwise s64) temp_f12);
    unksp140->unk7CDC = (s32) sp40.unk18;
    unksp140->unk7CD8 = (s32) sp40.unk14;
    unksp140->unk7CD4 = (s32) sp40.unk10;
    unksp140->unk7CD0 = (s32) sp40.unkC;
    unksp140->unk7CCC = (s32) sp40.unk8;
    unksp140->unk7CC8 = (s32) sp40.unk4;
    unksp140->unk7CC4 = sp40;
    temp_a4->unk96A8 = (s32) unksp170;
    temp_a4->unk96A4 = (s32) unksp1B8;
    temp_a4->unk96A0 = (s32) unksp1B0;
    temp_a4->unk969C = (s32) unksp168;
    unksp140->unk7C3C = (s32) unksp158;
    unksp140->unk7C38 = (s32) unksp160;
    unksp140->unk7C34 = (s32) unksp1A8;
    unksp140->unk7BFC = (s32) unksp148;
    temp_a4->unk8C20 = (s64) sp60.unk38;
    temp_a4->unk8C18 = (s64) sp60.unk30;
    temp_a4->unk8C10 = (s64) sp60.unk28;
    temp_a4->unk8C08 = (s64) sp60.unk20;
    temp_a4->unk8C00 = (s64) sp60.unk18;
    temp_a4->unk8BF8 = (s64) sp60.unk10;
    temp_a4->unk8BF0 = (s64) sp60.unk8;
    temp_a4->unk8BE8 = sp60;
    temp_a4->unk8BE4 = (s32) unksp178;
    temp_a4->unk8D08 = (s32) spA0.unk1C;
    temp_a4->unk8D04 = (s32) spA0.unk18;
    temp_a4->unk8D00 = (s32) spA0.unk14;
    temp_a4->unk8CFC = (s32) spA0.unk10;
    temp_a4->unk8CF8 = (s32) spA0.unkC;
    temp_a4->unk8CF4 = (s32) spA0.unk8;
    temp_a4->unk8CF0 = (s32) spA0.unk4;
    temp_a4->unk8CEC = spA0;
    temp_a4->unk8D70 = (s32) unksp198;
    temp_a4->unk8CE8 = (s32) unksp180;
    temp_a4->unk8D6C = (s32) unksp1A0;
    temp_a4->unk8D74 = (? **) unksp190;
    temp_a4->unk16960 = (s32) (temp_a4->unk16960 | 0x238203);
    *(void *)0x1018 = 2;
    return 1;
}

s32 ImageChainAddOpScaleBiasGfx(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s64 temp_v0;

    sp10 = arg0;
    sp0 = arg1;
    sp8 = arg2;
    temp_v0 = sub_0d990000();
    sp18 = temp_v0;
    if (temp_v0 == 0) {
        return 0;
    }
    sp18->unk0 = 5;
    sp18->unk18 = (f32) sp0->unk0;
    sp18->unk1C = (f32) sp0->unk4;
    sp18->unk20 = (f32) sp0->unk8;
    sp18->unk24 = (f32) sp0->unkC;
    sp18->unk28 = (f32) sp8->unk0;
    sp18->unk2C = (f32) sp8->unk4;
    sp18->unk30 = (f32) sp8->unk8;
    sp18->unkC = 1;
    sp18->unk4 = (void *) (sub_0d9a0000 - 0x64E0);
    sp18->unk8 = (s32) (sp18->unk8 | 0x1E);
    sp18->unk34 = (f32) sp8->unkC;
    sub_0d990000((f32 *) sp18, (f32 *)1);
    sub_0d990000((f32 *) sp10, (f32 *) sp18, sp10->unk8, 0);
    return 1;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0xe8, 0xec, 0x158, 0x15c, 0x160, 0x164, 0x168, 0x16c, 0x170, 0x174, 0x178, 0x17c, 0x180, 0x184, 0x188, 0x18c, 0x190, 0x194, 0x198, 0x19c, 0x1a0, 0x1a4, 0x1a8, 0x1ac, 0x1b0, 0x1b4, 0x1b8, 0x1bc], gap at: 0xf0. */
s32 RenderFunc_ScaleBiasGfx(void *arg0, void *arg1) {
    f32 spE4;
    f32 spE0;
    f32 spDC;
    f32 spD8;
    f32 spC8;
    f32 spBC;
    f32 spB8;
    f32 spB4;
    f32 spB0;
    f32 spAC;
    f32 spA8;
    f32 spA4;
    f32 spA0;
    f32 sp9C;
    f32 sp98;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    f32 sp80;
    s32 sp60;
    s64 sp20;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    ? **temp_a5;
    f32 *temp_s2;
    f32 *temp_s2_2;
    f32 *temp_s2_3;
    f32 *var_a0;
    f32 *var_a0_2;
    f32 *var_a1;
    f32 temp_a3;
    f32 temp_a4;
    f32 temp_a7;
    f32 temp_f11;
    f32 temp_f13;
    f32 temp_f13_2;
    f32 temp_f13_4;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f15;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f17;
    f32 temp_f18;
    f32 temp_f19;
    f32 temp_f19_2;
    f32 temp_f21;
    f32 temp_f23;
    f32 temp_f25;
    f32 temp_f4;
    f32 temp_f4_10;
    f32 temp_f4_11;
    f32 temp_f4_12;
    f32 temp_f4_13;
    f32 temp_f4_14;
    f32 temp_f4_15;
    f32 temp_f4_16;
    f32 temp_f4_17;
    f32 temp_f4_18;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f4_4;
    f32 temp_f4_5;
    f32 temp_f4_6;
    f32 temp_f4_7;
    f32 temp_f4_8;
    f32 temp_f4_9;
    f32 temp_f5;
    f32 temp_f5_10;
    f32 temp_f5_11;
    f32 temp_f5_12;
    f32 temp_f5_2;
    f32 temp_f5_3;
    f32 temp_f5_4;
    f32 temp_f5_5;
    f32 temp_f5_6;
    f32 temp_f5_7;
    f32 temp_f5_8;
    f32 temp_f5_9;
    f32 temp_f6;
    f32 temp_f6_10;
    f32 temp_f6_11;
    f32 temp_f6_12;
    f32 temp_f6_2;
    f32 temp_f6_3;
    f32 temp_f6_4;
    f32 temp_f6_5;
    f32 temp_f6_6;
    f32 temp_f6_7;
    f32 temp_f6_8;
    f32 temp_f6_9;
    f32 var_f22;
    f32 var_f5;
    f32 var_f5_2;
    f32 var_f5_3;
    f32 var_f5_4;
    f32 var_f5_5;
    f32 var_f5_6;
    f64 temp_f15_2;
    s32 temp_a2;
    s32 temp_a6;
    s32 temp_f13_3;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s1_3;
    s32 var_s4;
    s32 var_s4_2;
    void *temp_s8;

    temp_s8 = *(void **)0x1010;
    temp_a5 = temp_s8->unk7C34;
    temp_a2 = temp_s8->unk7BFC;
    sp10 = temp_s8->unk7CD4;
    sp8 = temp_s8->unk7CCC;
    sp4 = temp_s8->unk7CC8;
    sp14 = temp_s8->unk7CD8;
    spC = temp_s8->unk7CD0;
    sp18 = temp_s8->unk7CDC;
    sp0 = temp_s8->unk7CC4;
    unksp150 = (s64) temp_s8->unk969C;
    unksp148 = (s64) temp_s8->unk96A0;
    unksp140 = (s64) temp_s8->unk96A4;
    unksp138 = (s64) temp_s8->unk96A8;
    unksp130 = (s64) temp_s8->unk7C38;
    unksp128 = (s64) temp_s8->unk7C3C;
    unksp120 = (s64) temp_a5;
    sp20.unk8 = (s64) temp_s8->unk8BF0;
    sp20.unk10 = (s64) temp_s8->unk8BF8;
    sp20.unk18 = (s64) temp_s8->unk8C00;
    sp20.unk20 = (s64) temp_s8->unk8C08;
    sp20.unk28 = (s64) temp_s8->unk8C10;
    sp20.unk30 = (s64) temp_s8->unk8C18;
    sp20.unk38 = (s64) temp_s8->unk8C20;
    sp20 = temp_s8->unk8BE8;
    unksp110 = (s64) temp_s8->unk8BE4;
    temp_a7 = temp_s8->unk8D00;
    temp_a6 = temp_s8->unk8CFC;
    sp60.unk4 = (s32) temp_s8->unk8CF0;
    sp60.unk8 = (s32) temp_s8->unk8CF4;
    sp60.unkC = (s32) temp_s8->unk8CF8;
    sp60.unk10 = temp_a6;
    sp60.unk14 = temp_a7;
    sp60.unk18 = (s32) temp_s8->unk8D04;
    sp60.unk1C = (s32) temp_s8->unk8D08;
    sp60 = temp_s8->unk8CEC;
    temp_a3 = temp_s8->unk8D6C;
    temp_a4 = temp_s8->unk8CE8;
    unkspF0 = (s64) temp_s8->unk8D70;
    temp_s8->unk7BFC = (s32) (temp_a2 & ~0x20000);
    unksp108 = (s64) temp_s8->unk8D74;
    temp_s8->unk16960 = (s32) (temp_s8->unk16960 | 2);
    *(s32 *)0x1018 = 2;
    temp_s8->unk7CD4 = (s32) (temp_s8->unk7CD4 | 0x40000 | 0x4000);
    temp_s8->unk16960 = (s32) (temp_s8->unk16960 | 0x200);
    *(void *)0x1018 = 2;
    temp_s8->unk16960 = (s32) (temp_s8->unk16960 | 0x200000);
    temp_s8->unk96A4 = (s32) (temp_s8->unk96A4 & ~0x100000);
    *(void *)0x1018 = 2;
    sp80 = arg0->unk18;
    sp84 = arg0->unk1C;
    unksp100 = (bitwise s64) temp_a4;
    sp88 = arg0->unk20;
    unkspF8 = (bitwise s64) temp_a3;
    sp8C = arg0->unk24;
    M2C_ERROR(/* unknown instruction: movf.s $f5, $f20, $fcc3 */);
    M2C_ERROR(/* unknown instruction: movf.s $f6, $f5, $fcc2 */);
    M2C_ERROR(/* unknown instruction: movf.s $f4, $f6, $fcc1 */);
    temp_f5 = M2C_ERROR(/* unknown instruction: movf.s $f5, $f4, $fcc0 */);
    sp90 = arg0->unk28;
    sp94 = arg0->unk2C;
    sp98 = arg0->unk30;
    sp9C = arg0->unk34;
    M2C_ERROR(/* unknown instruction: movf.s $f8, $f12, $fcc6 */);
    M2C_ERROR(/* unknown instruction: movf.s $f11, $f8, $fcc5 */);
    temp_s8->unk11E20 = 7.0f;
    spA0 = arg1->unk0;
    temp_f19 = arg1->unk4;
    spA4 = temp_f19;
    temp_f18 = arg1->unk8;
    spA8 = temp_f18;
    spB4 = 0.0f;
    spB0 = 0.0f;
    spAC = arg1->unkC;
    temp_f16 = M2C_ERROR(/* unknown instruction: movf.s $f16, $f17, $fcc3 */);
    spB8 = M2C_ERROR(/* unknown instruction: movf.s $f15, $f17, $fcc4 */) - temp_f16;
    temp_f14 = M2C_ERROR(/* unknown instruction: movf.s $f14, $f15, $fcc1 */);
    temp_f13 = M2C_ERROR(/* unknown instruction: movf.s $f13, $f15, $fcc2 */) - temp_f14;
    spBC = temp_f13;
    temp_f4 = temp_s8->unk11E20;
    unksp118 = (s64) temp_a2;
    if (!(temp_f5 <= temp_f4) || !(M2C_ERROR(/* unknown instruction: movf.s $f7, $f11, $fcc4 */) <= temp_f4)) {
        if ((temp_f4 < temp_f5) && (fabsf(arg0->unk28) <= fabsf(arg0->unk18)) && (fabsf(arg0->unk2C) <= fabsf(arg0->unk1C)) && (var_s1 = 0, (fabsf(arg0->unk30) <= fabsf(arg0->unk20))) && (var_f22 = 1.0f, var_s4 = 1, (fabsf(arg0->unk34) <= fabsf(arg0->unk24)))) {
            if (temp_f4 < temp_f5) {
                var_f5 = 1.0f;
                do {
                    var_f5 *= temp_f4;
                    var_s4 += 1;
                } while (temp_f4 < (temp_f5 / var_f5));
            } else {
                var_s4 = 1;
            }
            spC8.unkC = (f32) sp80.unkC;
            spC8.unk8 = (f32) sp80.unk8;
            spC8.unk4 = (f32) sp80.unk4;
            spC8 = sp80;
            if (var_s4 > 0) {
                temp_s2 = temp_s8 + 0x119E4;
loop_86:
                sp80 = spC8;
                temp_f4_2 = temp_s8->unk11E20;
                if (temp_f4_2 < spC8) {
                    sp80 = temp_f4_2;
                } else {
                    temp_f6 = -temp_f4_2;
                    if (spC8 < temp_f6) {
                        sp80 = temp_f6;
                    }
                }
                temp_f19_2 = fabsf(spC8 / temp_s8->unk11E20);
                spC8.unk0 = temp_f19_2;
                if ((f64) temp_f19_2 <= (second half of f64)) {
                    spC8.unk0 = var_f22;
                }
                temp_f5_2 = spC8.unk4;
                sp80.unk4 = temp_f5_2;
                temp_f4_3 = temp_s8->unk11E20;
                if (temp_f4_3 < temp_f5_2) {
                    sp80.unk4 = temp_f4_3;
                } else {
                    temp_f6_2 = -temp_f4_3;
                    if (temp_f5_2 < temp_f6_2) {
                        sp80.unk4 = temp_f6_2;
                    }
                }
                temp_f21 = fabsf(temp_f5_2 / temp_s8->unk11E20);
                var_f22 = second half of f64;
                spC8.unk4 = temp_f21;
                if ((f64) temp_f21 <= (second half of f64)) {
                    spC8.unk4 = (f32) (second half of f64);
                }
                temp_f5_3 = spC8.unk8;
                sp80.unk8 = temp_f5_3;
                temp_f4_4 = temp_s8->unk11E20;
                if (temp_f4_4 < temp_f5_3) {
                    sp80.unk8 = temp_f4_4;
                } else {
                    temp_f6_3 = -temp_f4_4;
                    if (temp_f5_3 < temp_f6_3) {
                        sp80.unk8 = temp_f6_3;
                    }
                }
                temp_f23 = fabsf(temp_f5_3 / temp_s8->unk11E20);
                spC8.unk8 = temp_f23;
                if ((f64) temp_f23 <= (second half of f64)) {
                    spC8.unk8 = (f32) (second half of f64);
                }
                temp_f5_4 = spC8.unkC;
                sp80.unkC = temp_f5_4;
                temp_f4_5 = temp_s8->unk11E20;
                if (temp_f4_5 < temp_f5_4) {
                    sp80.unkC = temp_f4_5;
                } else {
                    temp_f6_4 = -temp_f4_5;
                    if (temp_f5_4 < temp_f6_4) {
                        sp80.unkC = temp_f6_4;
                    }
                }
                temp_f25 = fabsf(temp_f5_4 / temp_s8->unk11E20);
                spC8.unkC = temp_f25;
                if ((f64) temp_f25 <= (second half of f64)) {
                    spC8.unkC = (f32) (second half of f64);
                }
                if (var_s1 == 0) {
                    temp_f4_6 = arg0->unk18;
                    if (temp_f4_6 != (second half of f64)) {
                        sp90 = (arg0->unk28 * sp80) / temp_f4_6;
                    }
                    temp_f4_7 = arg0->unk1C;
                    if (temp_f4_7 != (second half of f64)) {
                        sp94 = (arg0->unk2C * sp84) / temp_f4_7;
                    }
                    temp_f4_8 = arg0->unk20;
                    if (temp_f4_8 != (second half of f64)) {
                        sp98 = (arg0->unk30 * sp88) / temp_f4_8;
                    }
                    temp_f4_9 = arg0->unk24;
                    if (temp_f4_9 != (second half of f64)) {
                        sp9C = (arg0->unk34 * sp8C) / temp_f4_9;
                    }
                    __glOdysseyImageChainAddOpAcceptSignedDataFromHost((? **) &sp80, (s64) &sp90);
                    __glOdysseyImageMovePixelsCopy(temp_s2, arg0->unk44, (s64) &spA0, 1, 0);
                    sp90 = second half of f64;
                    sp94 = second half of f64;
                    sp98 = second half of f64;
                    sp9C = second half of f64;
                    spAC = spBC;
                    spA8 = spB8;
                    spA4 = spB4;
                    spA0 = spB0;
                } else {
                    __glOdysseyImageChainAddOpAcceptSignedDataFromHost((? **) &sp80, (s64) &sp90);
                    var_a0 = temp_s2;
                    if ((var_s4 - 1) == var_s1) {
                        var_a0 = arg0->unk48;
                        spB0 = arg1->unk10;
                        spB4 = arg1->unk14;
                        spB8 = arg1->unk18;
                        spBC = arg1->unk1C;
                    }
                    __glOdysseyImageMovePixelsCopy(var_a0, temp_s2, (s64) &spA0, 1, 1);
                }
                var_s1 += 1;
                if (var_s4 != var_s1) {
                    goto loop_86;
                }
            }
        } else if (temp_f5 != 0.0f) {
            temp_f13_2 = fabsf(arg0->unk18);
            sp80 = temp_f13_2;
            sp84 = fabsf(arg0->unk1C);
            sp88 = fabsf(arg0->unk20);
            sp8C = fabsf(arg0->unk24);
            temp_f5_5 = arg0->unk28;
            spE4 = arg0->unk34;
            spE0 = arg0->unk30;
            spDC = arg0->unk2C;
            spD8 = temp_f5_5;
            var_f5_2 = temp_f5_5;
            if (temp_f13_2 != 0.0f) {
                var_f5_2 /= temp_f13_2;
                spD8 = var_f5_2;
            }
            temp_f14_2 = fabsf(var_f5_2);
            var_f5_3 = spD8.unk4;
            if (!(temp_f14_2 > 0.0f)) {
                var_f5_3 /= sp80.unk4;
                spD8.unk4 = var_f5_3;
            }
            temp_f15 = fabsf(var_f5_3);
            var_f5_4 = spD8.unk8;
            if (!(M2C_ERROR(/* unknown instruction: movt.s $f6, $f14, $fcc7 */) < temp_f15)) {
                var_f5_4 /= sp80.unk8;
                spD8.unk8 = var_f5_4;
            }
            temp_f16_2 = fabsf(var_f5_4);
            var_f5_5 = spD8.unkC;
            M2C_ERROR(/* unknown instruction: movt.s $f6, $f16, $fcc3 */);
            if (!(M2C_ERROR(/* unknown instruction: movt.s $f6, $f15, $fcc1 */) < temp_f16_2)) {
                var_f5_5 /= sp80.unkC;
                spD8.unkC = var_f5_5;
            }
            temp_f17 = fabsf(var_f5_5);
            sp8C = 1.0f;
            sp88 = 1.0f;
            sp84 = 1.0f;
            sp80 = 1.0f;
            temp_f13_3 = (s32) ceilf((bitwise f32) &sp80, (? **) &sp90, (? **) temp_a2, temp_a3, (bitwise f32) &spD8, temp_a5, temp_a6, temp_a7, M2C_ERROR(/* unknown instruction: movt.s $f6, $f17, $fcc5 */) / temp_s8->unk11E20, temp_f13_2, temp_f14_2, temp_f15, temp_f16_2, temp_f17, temp_f18, temp_f19);
            if (temp_f13_3 > 0) {
                var_s1_2 = 0;
                temp_s2_2 = temp_s8 + 0x119E4;
loop_26:
                temp_f5_6 = spD8;
                temp_f4_10 = temp_s8->unk11E20;
                if (temp_f4_10 < temp_f5_6) {
                    sp90 = temp_f4_10;
                    spD8 = temp_f5_6 - temp_s8->unk11E20;
                } else {
                    temp_f6_5 = -temp_f4_10;
                    if (temp_f5_6 < temp_f6_5) {
                        sp90 = temp_f6_5;
                        spD8 = temp_s8->unk11E20 + temp_f5_6;
                    } else {
                        spD8 = 0.0f;
                        sp90 = temp_f5_6;
                    }
                }
                temp_f5_7 = spD8.unk4;
                temp_f4_11 = temp_s8->unk11E20;
                if (temp_f4_11 < temp_f5_7) {
                    sp90.unk4 = temp_f4_11;
                    spD8.unk4 = (f32) (temp_f5_7 - temp_s8->unk11E20);
                } else {
                    temp_f6_6 = -temp_f4_11;
                    if (temp_f5_7 < temp_f6_6) {
                        sp90.unk4 = temp_f6_6;
                        spD8.unk4 = (f32) (temp_s8->unk11E20 + temp_f5_7);
                    } else {
                        spD8.unk4 = 0.0f;
                        sp90.unk4 = temp_f5_7;
                    }
                }
                temp_f5_8 = spD8.unk8;
                temp_f4_12 = temp_s8->unk11E20;
                if (temp_f4_12 < temp_f5_8) {
                    sp90.unk8 = temp_f4_12;
                    spD8.unk8 = (f32) (temp_f5_8 - temp_s8->unk11E20);
                } else {
                    temp_f6_7 = -temp_f4_12;
                    if (temp_f5_8 < temp_f6_7) {
                        sp90.unk8 = temp_f6_7;
                        spD8.unk8 = (f32) (temp_s8->unk11E20 + temp_f5_8);
                    } else {
                        spD8.unk8 = 0.0f;
                        sp90.unk8 = temp_f5_8;
                    }
                }
                temp_f5_9 = spD8.unkC;
                temp_f4_13 = temp_s8->unk11E20;
                if (temp_f4_13 < temp_f5_9) {
                    sp90.unkC = temp_f4_13;
                    spD8.unkC = (f32) (temp_f5_9 - temp_s8->unk11E20);
                } else {
                    temp_f6_8 = -temp_f4_13;
                    if (temp_f5_9 < temp_f6_8) {
                        sp90.unkC = temp_f6_8;
                        spD8.unkC = (f32) (temp_s8->unk11E20 + temp_f5_9);
                    } else {
                        spD8.unkC = 0.0f;
                        sp90.unkC = temp_f5_9;
                    }
                }
                __glOdysseyImageChainAddOpAcceptSignedDataFromHost((? **) &sp80, (s64) &sp90);
                var_a1 = temp_s2_2;
                if (var_s1_2 == 0) {
                    var_a1 = arg0->unk44;
                }
                __glOdysseyImageMovePixelsCopy(temp_s2_2, var_a1, (s64) &spA0, 1, 1);
                spAC = spBC;
                var_s1_2 += 1;
                spA8 = spB8;
                spA4 = spB4;
                spA0 = spB0;
                if (temp_f13_3 != var_s1_2) {
                    goto loop_26;
                }
            }
            sp90 = 0.0f;
            sp94 = 0.0f;
            sp98 = 0.0f;
            sp9C = 0.0f;
            sp80 = arg0->unk18;
            sp84 = arg0->unk1C;
            sp88 = arg0->unk20;
            sp8C = arg0->unk24;
            temp_f4_14 = temp_s8->unk11E20;
            var_s4_2 = 1;
            if (temp_f4_14 < temp_f5) {
                var_s4_2 = 1;
                var_f5_6 = 1.0f;
                do {
                    var_f5_6 *= temp_f4_14;
                    var_s4_2 += 1;
                } while (temp_f4_14 < (temp_f5 / var_f5_6));
            }
            spC8.unkC = (f32) sp80.unkC;
            spC8.unk8 = (f32) sp80.unk8;
            spC8.unk4 = (f32) sp80.unk4;
            spC8 = sp80;
            if (var_s4_2 > 0) {
                var_s1_3 = 0;
                temp_s2_3 = temp_s8 + 0x119E4;
loop_52:
                sp80 = spC8;
                temp_f4_15 = temp_s8->unk11E20;
                if (temp_f4_15 < spC8) {
                    sp80 = temp_f4_15;
                } else {
                    temp_f6_9 = -temp_f4_15;
                    if (spC8 < temp_f6_9) {
                        sp80 = temp_f6_9;
                    }
                }
                temp_f11 = fabsf(spC8 / temp_s8->unk11E20);
                spC8.unk0 = temp_f11;
                if ((f64) temp_f11 <= 1.0) {
                    spC8.unk0 = 1.0f;
                }
                temp_f5_10 = spC8.unk4;
                sp80.unk4 = temp_f5_10;
                temp_f4_16 = temp_s8->unk11E20;
                if (temp_f4_16 < temp_f5_10) {
                    sp80.unk4 = temp_f4_16;
                } else {
                    temp_f6_10 = -temp_f4_16;
                    if (temp_f5_10 < temp_f6_10) {
                        sp80.unk4 = temp_f6_10;
                    }
                }
                spC8.unk4 = (f32) (second half of f64);
                if ((f64) fabsf(temp_f5_10 / temp_s8->unk11E20) <= 1.0) {
                    spC8.unk4 = 1.0f;
                }
                temp_f5_11 = spC8.unk8;
                sp80.unk8 = temp_f5_11;
                temp_f4_17 = temp_s8->unk11E20;
                if (temp_f4_17 < temp_f5_11) {
                    sp80.unk8 = temp_f4_17;
                } else {
                    temp_f6_11 = -temp_f4_17;
                    if (temp_f5_11 < temp_f6_11) {
                        sp80.unk8 = temp_f6_11;
                    }
                }
                temp_f13_4 = fabsf(temp_f5_11 / temp_s8->unk11E20);
                spC8.unk8 = temp_f13_4;
                if ((f64) temp_f13_4 <= 1.0) {
                    spC8.unk8 = 1.0f;
                }
                temp_f5_12 = spC8.unkC;
                sp80.unkC = temp_f5_12;
                temp_f4_18 = temp_s8->unk11E20;
                if (temp_f4_18 < temp_f5_12) {
                    sp80.unkC = temp_f4_18;
                } else {
                    temp_f6_12 = -temp_f4_18;
                    if (temp_f5_12 < temp_f6_12) {
                        sp80.unkC = temp_f6_12;
                    }
                }
                temp_f15_2 = (f64) fabsf(temp_f5_12 / temp_s8->unk11E20);
                spC8.unkC = (f32) (second half of f64);
                if (temp_f15_2 <= 1.0) {
                    spC8.unkC = 1.0f;
                }
                __glOdysseyImageChainAddOpAcceptSignedDataFromHost((? **) &sp80, (s64) &sp90, (bitwise s32) (second half of f64), temp_f13_4, second half of f64, (bitwise ? **) temp_f15_2);
                var_a0_2 = temp_s2_3;
                if ((var_s4_2 - 1) == var_s1_3) {
                    var_a0_2 = arg0->unk48;
                    spB0 = arg1->unk10;
                    spB4 = arg1->unk14;
                    spB8 = arg1->unk18;
                    spBC = arg1->unk1C;
                }
                __glOdysseyImageMovePixelsCopy(var_a0_2, temp_s2_3, (s64) &spA0, 1, 1);
                var_s1_3 += 1;
                if (var_s4_2 != var_s1_3) {
                    goto loop_52;
                }
            }
        }
    } else {
        __glOdysseyImageChainAddOpAcceptSignedDataFromHost((? **) &sp80, (s64) &sp90, temp_a2, temp_a3, temp_a4, temp_a5, temp_a6, temp_a7, M2C_ERROR(/* unknown instruction: movf.s $f12, $f6, $fcc7 */), temp_f13, temp_f14, arg1->unkC, temp_f16, arg1->unk8, temp_f18, temp_f19);
        __glOdysseyImageMovePixelsCopy(arg0->unk48, arg0->unk44, (s64) arg1, 1, 1);
    }
    temp_s8->unk7CDC = sp18;
    temp_s8->unk7CD8 = sp14;
    temp_s8->unk7CD4 = sp10;
    temp_s8->unk7CD0 = spC;
    temp_s8->unk7CCC = sp8;
    temp_s8->unk7CC8 = sp4;
    temp_s8->unk7CC4 = sp0;
    temp_s8->unk96A8 = (s32) unksp138;
    temp_s8->unk96A4 = (s32) unksp140;
    temp_s8->unk96A0 = (s32) unksp148;
    temp_s8->unk969C = (s32) unksp150;
    temp_s8->unk7C3C = (s32) unksp128;
    temp_s8->unk7C38 = (s32) unksp130;
    temp_s8->unk7C34 = (? **) unksp120;
    temp_s8->unk7BFC = (s32) unksp118;
    temp_s8->unk8C18 = (s64) sp20.unk30;
    temp_s8->unk8C10 = (s64) sp20.unk28;
    temp_s8->unk8C08 = (s64) sp20.unk20;
    temp_s8->unk8C00 = (s64) sp20.unk18;
    temp_s8->unk8BF8 = (s64) sp20.unk10;
    temp_s8->unk8BF0 = (s64) sp20.unk8;
    temp_s8->unk8C20 = (s64) sp20.unk38;
    temp_s8->unk8BE8 = sp20;
    temp_s8->unk8BE4 = (s32) unksp110;
    temp_s8->unk8D08 = (s32) sp60.unk1C;
    temp_s8->unk8D04 = (s32) sp60.unk18;
    temp_s8->unk8D00 = (f32) sp60.unk14;
    temp_s8->unk8CFC = (s32) sp60.unk10;
    temp_s8->unk8CF8 = (s32) sp60.unkC;
    temp_s8->unk8CF4 = (s32) sp60.unk8;
    temp_s8->unk8CF0 = (s32) sp60.unk4;
    temp_s8->unk8CEC = sp60;
    temp_s8->unk8D74 = (s32) unksp108;
    temp_s8->unk8D70 = (s32) unkspF0;
    temp_s8->unk8D6C = (bitwise f32) unkspF8;
    temp_s8->unk8CE8 = (bitwise f32) unksp100;
    temp_s8->unk16960 = (s32) (temp_s8->unk16960 | 0x238203);
    *(void *)0x1018 = 2;
    return 1;
}

s32 __glOdysseyImageChainAddOpAcceptSignedDataFromHost(s64 arg0, void *arg1, void *arg2, s32 arg3) {
    s64 sp0;
    s64 temp_v0;
    void *temp_a4;

    sp0 = arg0;
    temp_v0 = sub_0d990000();
    if (temp_v0 != 0) {
        temp_v0->unk0 = 4;
        temp_v0->unk18 = (f32) arg1->unk0;
        temp_v0->unk28 = (f32) arg2->unk0;
        temp_v0->unk1C = (f32) arg1->unk4;
        temp_v0->unk2C = (f32) arg2->unk4;
        temp_v0->unk20 = (f32) arg1->unk8;
        temp_v0->unk30 = (f32) arg2->unk8;
        if ((arg3 != 0x190A) && (arg3 != 0x1906) && (arg3 != 0x1908)) {
            temp_v0->unk24 = 0.0f;
            temp_v0->unk34 = (f32) (arg1->unkC + arg2->unkC);
        } else {
            temp_v0->unk24 = (f32) arg1->unkC;
            temp_v0->unk34 = (f32) arg2->unkC;
        }
        temp_v0->unkC = 1;
        temp_a4 = sub_0d9a0000 - 0x5560;
        temp_v0->unk4 = temp_a4;
        temp_v0->unk8 = (s32) (temp_v0->unk8 | 0x1A);
        sub_0d990000((f32 *) sp0, (f32 *) temp_v0, sp0->unk8, 0, temp_a4);
        return 1;
    }
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0xd8, 0xdc, 0xe0, 0xe4, 0x100, 0x104, 0x108, 0x10c, 0x110, 0x114, 0x118, 0x11c, 0x120, 0x124, 0x128, 0x12c, 0x130, 0x134], gap at: 0xf0. */
s32 RenderFunc_AcceptSignedDataFromHost(void *arg0, void *arg1) {
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s64 spB8;
    s32 sp98;
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    s32 sp40;
    s32 sp3C;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s64 sp8;                                        /* compiler-managed */
    s32 sp0;
    f32 temp_f17;
    f32 temp_f18;
    f64 temp_f0;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_a7_4;
    s32 temp_at;
    s32 temp_s5;
    s32 temp_s7;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t8;
    s64 temp_a5;
    void *temp_s1;

    temp_s1 = *(void **)0x1010;
    sp0 = 0;
    sp8 = 0;
    sp8.unk38 = 0;
    sp8.unk30 = 0;
    sp8.unk28 = 0;
    sp8.unk20 = 0;
    sp8.unk18 = 0;
    sp8.unk10 = 0;
    sp8.unk8 = 0;
    sp8 = 1;
    unkspC = 0;
    sp40 = 1;
    temp_a2 = temp_s1->unk11E1C;
    sp28 = temp_a2;
    sp2C = temp_s1->unk11E18;
    temp_f0 = ceil((bitwise f64) temp_a2, 1, &sp8, (f64) ((f32) ((u64) ((s64) temp_s1->unk11E1C << 0x20) >> 0x20) * 0.0625f), second half of f64);
    sp34 = 2;
    sp30 = 2;
    sp3C = 0xC;
    sp38 = 0;
    sp24 = (s32) (s64) temp_f0;
    sp18 = temp_s1->unkA714;
    sp1C = temp_s1->unkA718;
    sp20 = temp_s1->unkA71C;
    sp48 = arg1->unk0;
    sp4C = arg1->unk4;
    sp50 = arg1->unk8;
    sp5C = 0.0f;
    sp58 = 0.0f;
    sp54 = arg1->unkC;
    temp_f18 = M2C_ERROR(/* unknown instruction: movf.s $f18, $f23, $fcc3 */) - M2C_ERROR(/* unknown instruction: movf.s $f21, $f23, $fcc2 */);
    sp60 = temp_f18;
    sp78 = temp_f18;
    sp74 = 0.0f;
    sp70 = 0.0f;
    temp_f17 = M2C_ERROR(/* unknown instruction: movf.s $f17, $f23, $fcc1 */) - M2C_ERROR(/* unknown instruction: movf.s $f21, $f23, $fcc0 */);
    sp7C = temp_f17;
    sp64 = temp_f17;
    sp80 = arg1->unk10;
    sp84 = arg1->unk14;
    sp88 = arg1->unk18;
    sp8C = arg1->unk1C;
    temp_s7 = temp_s1->unk96A8;
    unkspF8 = (s64) temp_s1->unk969C;
    unkspF0 = (s64) temp_s1->unk96A0;
    temp_a7 = temp_s1->unk96A4;
    unkspE8 = (s64) temp_a7;
    temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 0x200000);
    temp_s1->unk96A4 = (s32) (temp_a7 | 0x100000);
    *(s32 *)0x1018 = 2;
    temp_t3 = temp_s1->unk8D08;
    temp_t8 = temp_s1->unk8D04;
    temp_t1 = temp_s1->unk8D00;
    temp_t0 = temp_s1->unk8CFC;
    temp_a7_2 = temp_s1->unk8CF8;
    temp_a6 = temp_s1->unk8CF4;
    temp_t2 = temp_s1->unk8CF0;
    temp_at = temp_s1->unk8CEC;
    spD0 = (s64) temp_at;
    sp98.unk4 = temp_t2;
    sp98.unk8 = temp_a6;
    sp98.unkC = temp_a7_2;
    sp98.unk10 = temp_t0;
    sp98.unk14 = temp_t1;
    sp98.unk18 = temp_t8;
    sp98.unk1C = temp_t3;
    sp98 = temp_at;
    temp_s1->unk8CEC = (s32) (((s32) (arg0->unk18 * 4096.0f) & 0xFFFF) | (0xFFFF0000 & spD0));
    temp_s1->unk8CF0 = (s32) (((s32) (arg0->unk28 * 4096.0f) & 0xFFFF) | (0xFFFF0000 & temp_t2));
    temp_a6_2 = 0xFFFF0000 & temp_a6;
    temp_s1->unk8CF4 = (s32) (((s32) (arg0->unk1C * 4096.0f) & 0xFFFF) | temp_a6_2);
    temp_a5 = 0xFFFF0000 & temp_a7_2;
    temp_s1->unk8CF8 = (s32) (((s32) (arg0->unk2C * 4096.0f) & 0xFFFF) | temp_a5);
    temp_s1->unk8CFC = (s32) (((s32) (arg0->unk20 * 4096.0f) & 0xFFFF) | (0xFFFF0000 & temp_t0));
    temp_s1->unk8D00 = (s32) (((s32) (arg0->unk30 * 4096.0f) & 0xFFFF) | (0xFFFF0000 & temp_t1));
    temp_s1->unk8D04 = (s32) (((s32) (arg0->unk24 * 4096.0f) & 0xFFFF) | (0xFFFF0000 & temp_t8));
    temp_s5 = temp_s1->unk8CE8;
    temp_s1->unk16960 = (s32) (0x10000 | temp_s1->unk16960);
    temp_s1->unk8CE8 = 2;
    temp_s1->unk8D08 = (s32) (((s32) (arg0->unk34 * 4096.0f) & 0xFFFF) | (0xFFFF0000 & temp_t3));
    *(void *)0x1018 = 2;
    __glOdysseyImageMovePixelsDMAtoGfx((f32 *) &sp8, arg0->unk44, (s64) &sp48, 1, 0, temp_a5, temp_a6_2, (s64) temp_a7_2);
    temp_s1->unk96A8 = temp_s7;
    temp_s1->unk96A4 = (s32) unkspE8;
    temp_s1->unk96A0 = (s32) unkspF0;
    temp_s1->unk969C = (s32) unkspF8;
    temp_a6_3 = sp98.unkC;
    temp_a7_3 = sp98.unk10;
    temp_s1->unk8D08 = (s32) sp98.unk1C;
    temp_s1->unk8D04 = (s32) sp98.unk18;
    temp_s1->unk8D00 = (s32) sp98.unk14;
    temp_s1->unk8CFC = temp_a7_3;
    temp_s1->unk8CF8 = temp_a6_3;
    temp_s1->unk8CF4 = (s32) sp98.unk8;
    temp_s1->unk8CF0 = (s32) sp98.unk4;
    temp_s1->unk8CEC = sp98;
    temp_s1->unk8CE8 = temp_s5;
    temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 0x210000);
    *(void *)0x1018 = 2;
    spC8 = (s64) temp_s1->unk9820;
    spC0 = (s64) temp_s1->unk981C;
    if (__glOdysseyOpenPMObjReference((s64) temp_s1, temp_s1->unkEFB0, 0, 0, sp, 1, (void *) temp_a6_3, (void *) temp_a7_3) != 0) {
        temp_a4 = temp_s1->unkF7B8;
        temp_s1->unk9820 = temp_a4;
        temp_s1->unk981C = sp0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10842;
        HQ2_READ_FIFO = temp_s1->unk981C;
        HQ2_READ_FIFO = temp_s1->unk9820;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0x96;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        temp_s1->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
        if (__glOdysseyClosePMObjReference((s64) temp_s1, temp_s1->unkEFB0, 0, 0, temp_a4, sp0) != 0) {
            temp_a7_4 = temp_s1->unk7C00;
            spB8 = (s64) temp_a7_4;
            temp_s1->unk7C00 = (s32) (temp_a7_4 | 0x40);
            temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 4);
            *(void *)0x1018 = 2;
            __glOdysseyImageMovePixelsCopy(arg0->unk48, (f32 *) &sp8, (s64) &sp70, 1, 1);
            temp_s1->unk981C = (s32) spC0;
            temp_s1->unk9820 = (s32) spC8;
            temp_s1->unk7C00 = (s32) spB8;
            temp_s1->unk16960 = (s32) (temp_s1->unk16960 | 4);
            *(void *)0x1018 = 2;
            return 1;
        }
        M2C_ERROR(/* Read from unset register $t9 */)(0x505);
        return 0;
    }
    __glSetError(0x505);
    return 0;
}

s32 ImageChainAddOpColorMatrix(s64 arg0, void *arg1, s64 arg2, s64 arg3) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    f32 *temp_a2;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f9;
    s32 temp_t1;
    s32 var_a6;
    s32 var_a7;
    s64 temp_v0;
    void *temp_a7;
    void *temp_v1;
    void *var_a1;
    void *var_v0;
    void *var_v0_2;

    sp0 = arg0;
    sp8 = arg2;
    sp10 = arg3;
    sp18 = (s64) *(s32 *)0x1010;
    temp_v0 = sub_0d990000();
    if (temp_v0 == 0) {
        return 0;
    }
    sub_0d990000((f32 *) temp_v0, (f32 *)1);
    var_a7 = 0;
    temp_t1 = arg1 + 0x10;
    if (temp_v0->unk14 != NULL) {
        temp_v0->unk0 = 9;
        do {
            M2C_ERROR(/* unknown instruction: movf.s $f1, $f4, $fcc3 */);
            M2C_ERROR(/* unknown instruction: movf.s $f7, $f1, $fcc2 */);
            M2C_ERROR(/* unknown instruction: movf.s $f0, $f7, $fcc1 */);
            M2C_ERROR(/* unknown instruction: movf.s $f6, $f0, $fcc0 */);
            var_a7 += 1;
        } while (var_a7 != 4);
        var_a6 = 0;
        temp_f5 = M2C_ERROR(/* unknown instruction: movt.s $f5, $f2, $fcc4 */);
        var_v0 = arg1;
        temp_v0->unk40 = temp_f5;
        do {
            temp_a2 = temp_v0->unk14 + var_a6;
            *temp_a2 = var_v0->unk0 / temp_f5;
            (temp_v0->unk14 + var_a6)->unk4 = (f32) (var_v0->unk10 / temp_f5);
            (temp_v0->unk14 + var_a6)->unk8 = (f32) (var_v0->unk20 / temp_f5);
            temp_f6 = var_v0->unk30 / temp_f5;
            var_v0 += 4;
            temp_v1 = temp_v0->unk14 + var_a6;
            var_a6 += 0x94;
            temp_v1->unkC = temp_f6;
        } while (var_v0 != temp_t1);
        temp_v0->unk3D = 0;
        var_a1 = NULL;
        var_v0_2 = arg1;
loop_8:
        if (!((f64) var_v0_2->unk0 < GLUE_F64(temp_f5, 0U))) {
            if (!((f64) var_v0_2->unk10 < GLUE_F64(temp_f5, 0U))) {
                if (!((f64) var_v0_2->unk20 < GLUE_F64(temp_f5, 0U))) {
                    var_v0_2 += 4;
                    if (!((f64) var_v0_2->unk30 < GLUE_F64(temp_f5, 0U))) {
                        if (var_v0_2 == temp_t1) {

                        } else {
                            goto loop_8;
                        }
                    } else {
                        temp_v0->unk3D = 1;
                        var_a1 = (void *)1;
                    }
                } else {
                    temp_v0->unk3D = 1;
                    var_a1 = (void *)1;
                }
            } else {
                temp_v0->unk3D = 1;
                var_a1 = (void *)1;
            }
        } else {
            temp_v0->unk3D = 1;
            var_a1 = (void *)1;
        }
        // Error: negative shift count
        // At instruction: bltz $a4, .L0d99b2d4
        if (M2C_ERROR() && (var_a1 != NULL)) {
            temp_v0->unk34 = (f32) ((f64) temp_f9 * (second half of f64));
            temp_v0->unk30 = (f32) ((f64) temp_f6_2 * (second half of f64));
            temp_v0->unk2C = (f32) (second half of f64);
            temp_v0->unk28 = (f32) ((second half of f64) * (second half of f64));
        }
        temp_v0->unk14->unk24 = temp_f4;
        temp_v0->unk14->unkB8 = (f32) temp_v0->unk1C;
        temp_v0->unk14->unk14C = (f32) temp_v0->unk20;
        temp_v0->unk14->unk1E0 = (f32) temp_v0->unk24;
        temp_v0->unk14->unk28 = (f32) temp_v0->unk28;
        temp_v0->unk14->unkBC = (f32) temp_v0->unk2C;
        temp_v0->unk14->unk150 = (f32) temp_v0->unk30;
        temp_a7 = temp_v0->unk14;
        temp_a7->unk1E4 = (f32) temp_v0->unk34;
        __glOdysseyProgramTexFilter(temp_v0->unk14, var_a1, temp_a2, (void *)1, (void *) ((s64) sp18->unk7B70 << 0x2C), (void *) sp8, (void *) sp10, temp_a7);
        temp_v0->unk4 = (void *) (sub_0d9a0000 - 0x4C20);
        temp_v0->unkC = 1;
        temp_v0->unk8 = (s32) (temp_v0->unk8 | 0x3C);
        sub_0d990000((f32 *) sp0, (f32 *) temp_v0, sp0->unk8, 0);
        return 1;
    }
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x428, 0x42c, 0x430, 0x434, 0x438, 0x43c, 0x440, 0x444, 0x448, 0x44c, 0x450, 0x454, 0x458, 0x45c, 0x4b0, 0x4b4], gap at: 0x468. */
s32 RenderFunc_ColorMatrix(void *arg0, void *arg1) {
    s64 sp4D8;
    s64 sp4D0;
    s64 sp4C8;
    s64 sp4C0;
    s64 sp4B8;
    s64 sp420;
    s64 sp418;
    s64 sp410;
    s64 sp408;
    s64 sp400;
    s64 sp3F8;
    s64 sp3F0;
    s64 sp3E8;
    s64 sp3E0;
    s64 sp3D8;
    s64 sp3D0;
    s64 sp3C8;
    s64 sp3C0;
    s64 sp3B8;
    s64 sp3B0;
    s64 sp3A8;
    s64 sp3A0;
    s64 sp398;
    s64 sp390;
    f64 sp388;
    s64 sp380;
    f64 sp378;
    s64 sp370;
    f64 sp368;
    f64 sp360;
    f64 sp358;
    f64 sp350;
    f64 sp348;
    f64 sp340;
    f64 sp338;
    f64 sp330;
    s32 sp310;
    s32 sp2F0;
    f32 sp2E4;
    f32 sp2E0;
    f32 sp2DC;
    s32 sp2D8;
    f32 sp2D4;
    f32 sp2D0;
    f32 sp2CC;
    f32 sp2C8;
    s32 sp2C0;
    s32 sp2BC;
    s32 sp2B8;
    s32 sp2B4;
    s32 sp2B0;
    s32 sp2AC;
    s32 sp2A8;
    s32 sp2A4;
    s32 sp2A0;
    s32 sp29C;
    s32 sp298;
    s8 sp293;
    s64 sp288;                                      /* compiler-managed */
    s32 sp268;
    s64 sp228;
    s32 sp208;
    f32 sp1FC;
    f32 sp1F8;
    f32 sp1F4;
    s32 sp1F0;                                      /* compiler-managed */
    s32 sp1EC;
    f32 sp1E8;
    f32 sp1E4;
    f32 sp1E0;
    s32 sp1C0;
    s32 sp1A0;
    f32 sp194;
    f32 sp190;
    f32 sp18C;
    f32 sp188;                                      /* compiler-managed */
    f32 sp184;
    f32 sp180;
    f32 sp17C;
    f32 sp178;
    s32 sp170;
    f32 sp164;
    f32 sp160;
    f32 sp15C;
    f32 sp158;
    f32 sp154;
    f32 sp150;
    f32 sp14C;
    f32 sp148;
    s32 sp128;
    s64 spE8;
    s32 spC8;
    f32 spBC;
    f32 spB8;
    f32 spB4;
    f32 spB0;
    f32 spAC;
    f32 spA8;
    f32 spA4;
    f32 spA0;
    s32 sp80;
    s32 sp78;
    s32 sp74;
    s32 sp70;
    s32 sp6C;
    s32 sp68;
    s32 sp64;
    s32 sp60;
    s32 sp5C;
    s32 sp58;
    s32 sp54;
    s32 sp50;
    s8 sp4B;
    s64 sp40;                                       /* compiler-managed */
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f15;
    f32 temp_f16;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f24;
    f32 temp_f24_2;
    f32 temp_f4;
    f32 var_f4;
    f32 var_f4_2;
    f64 temp_a3;
    f64 temp_a6;
    f64 temp_f0;
    f64 temp_f0_2;
    f64 temp_f14;
    f64 var_f28;
    f64 var_f30;
    s32 *temp_at;
    s32 *temp_v1;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2_2;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a5_3;
    s32 temp_a5_5;
    s32 temp_a5_6;
    s32 temp_a6_2;
    s32 temp_a6_4;
    s32 temp_a6_6;
    s32 temp_a7;
    s32 temp_a7_3;
    s32 temp_a7_5;
    s32 temp_at_2;
    s32 temp_f14_2;
    s32 temp_ra;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_v0;
    s32 temp_v1_2;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a4;
    s32 var_s2;
    s32 var_s2_2;
    s64 *temp_a2;
    s64 *temp_a5;
    s64 temp_a5_2;
    s64 temp_a7_4;
    s64 var_a0;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a4_2;
    void *temp_a5_4;
    void *temp_a5_7;
    void *temp_a6_3;
    void *temp_a6_5;
    void *temp_a7_2;
    void *temp_s6;
    void *temp_t0_2;
    void *temp_t0_3;
    void *temp_t9;

    var_f28 = saved_reg_f28;
    var_f30 = saved_reg_f30;
    temp_a6 = M2C_ERROR(/* unknown instruction: movf $a6, $zero, $fcc3 */);
    temp_s6 = *(void **)0x1010;
    temp_a4 = M2C_ERROR(/* unknown instruction: movf $a4, $zero, $fcc2 */);
    temp_a3 = M2C_ERROR(/* unknown instruction: movf $a3, $zero, $fcc1 */);
    temp_a5 = M2C_ERROR(/* unknown instruction: movf $a5, $zero, $fcc0 */);
    if (arg0->unk3D != 0) {
        sp358 = M2C_ERROR(/* unknown instruction: movz.s $f5, $f7, $a4 */);
        sp360 = M2C_ERROR(/* unknown instruction: movz.s $f4, $f6, $a3 */);
        temp_f14 = M2C_ERROR(/* unknown instruction: movz.s $f14, $f7, $a6 */);
        sp368 = M2C_ERROR(/* unknown instruction: movz.s $f13, $f6, $a5 */);
        sp350 = temp_f14;
        temp_a5_2 = (s64) ceil(temp_a3, temp_a4, temp_a5, temp_a6, (f64) ((f32) ((u64) ((s64) temp_s6->unk11E1C << 0x20) >> 0x20) * 0.0625f), second half of f64, temp_f14, 1, 0, 0, 1, 0, 0, temp_s6->unk11E1C, temp_s6->unk11E18, 0, 0, 1);
        temp_a3_2 = temp_s6->unkA714;
        temp_a2 = temp_s6->unkA718;
        temp_a1 = temp_s6->unkA71C;
        sp40 = 0;
        sp40.unk38 = 0;
        sp40.unk30 = 0;
        sp40.unk28 = 0;
        sp40.unk20 = 0;
        sp40.unk18 = 0;
        sp40.unk10 = 0;
        sp40.unk8 = 0;
        sp4B = 1;
        sp40 = 1;
        unksp44 = 0;
        sp78 = 1;
        sp60 = temp_s6->unk11E1C;
        sp64 = temp_s6->unk11E18;
        temp_f0 = ceil((bitwise f64) &sp40, temp_a1, temp_a2, (bitwise f64) temp_a3_2, 6e-323, temp_a5_2, (f64) ((f32) ((u64) ((s64) temp_s6->unk11E1C << 0x20) >> 0x20) * 0.0625f), second half of f64, temp_a3_2, (s64) temp_a2, temp_a1, (s64) (s32) temp_a5_2, 2, 2, 0, 0xC);
        sp6C = 2;
        sp68 = 2;
        sp74 = 0xC;
        sp70 = 0;
        sp5C = (s32) (s64) temp_f0;
        sp50 = temp_s6->unkA720;
        sp54 = temp_s6->unkA724;
        sp58 = temp_s6->unkA728;
        temp_t8 = temp_s6->unk8CEC;
        temp_t1 = temp_s6->unk8D08;
        temp_a6_2 = temp_s6->unk8D04;
        temp_t3 = temp_s6->unk8D00;
        temp_a5_3 = temp_s6->unk8CFC;
        temp_t0 = temp_s6->unk8CF8;
        temp_t2 = temp_s6->unk8CF4;
        temp_a7 = temp_s6->unk8CF0;
        sp80.unk4 = temp_a7;
        sp80.unk8 = temp_t2;
        sp80.unkC = temp_t0;
        sp80.unk10 = temp_a5_3;
        sp80.unk14 = temp_t3;
        sp80.unk18 = temp_a6_2;
        sp80.unk1C = temp_t1;
        sp80 = temp_t8;
        temp_f16 = (bitwise f32) sp368 - (second half of f64);
        sp380 = (bitwise s64) temp_f16;
        temp_t8_2 = temp_s6->unk8CE8;
        temp_s6->unk8CE8 = 2;
        temp_s6->unk8D08 = (s32) (0xFFFF0000 & temp_t1);
        temp_s6->unk8D00 = (s32) (0xFFFF0000 & temp_t3);
        temp_s6->unk8CF8 = (s32) (0xFFFF0000 & temp_t0);
        temp_s6->unk8CF0 = (s32) (0xFFFF0000 & temp_a7);
        temp_s6->unk8D04 = (s32) ((0xFFFF0000 & temp_a6_2) | 0x7FF);
        temp_s6->unk8CFC = (s32) ((0xFFFF0000 & temp_a5_3) | 0x7FF);
        temp_s6->unk8CF4 = (s32) ((0xFFFF0000 & temp_t2) | 0x7FF);
        temp_s6->unk8CEC = (s32) ((0xFFFF0000 & temp_t8) | 0x7FF);
        temp_s6->unk16960 = (s32) (0x10000 | temp_s6->unk16960);
        *(s32 *)0x1018 = 2;
        temp_f15 = (bitwise f32) sp358 - (second half of f64);
        sp388 = (bitwise f64) temp_f15;
        spA0 = arg1->unk0;
        sp420 = (s64) temp_t8_2;
        spA4 = arg1->unk4;
        spA8 = arg1->unk8;
        spBC = temp_f15;
        spB8 = temp_f16;
        spB4 = 0.0f;
        spB0 = 0.0f;
        spAC = arg1->unkC;
        __glOdysseyImageMovePixelsTexture(sp, arg0->unk44, (s64) &spA0, 0);
        temp_a0 = temp_s6 + 0x8CEC;
        temp_s6->unk8CE8 = (s32) sp420;
        temp_s6->unk8D08 = (s32) sp80.unk1C;
        temp_s6->unk8D04 = (s32) sp80.unk18;
        temp_s6->unk8D00 = (s32) sp80.unk14;
        temp_s6->unk8CFC = (s32) sp80.unk10;
        temp_s6->unk8CF8 = (s32) sp80.unkC;
        temp_s6->unk8CF4 = (s32) sp80.unk8;
        temp_s6->unk8CF0 = (s32) sp80.unk4;
        temp_s6->unk8CEC = sp80;
        temp_s6->unk16960 = (s32) (0x10000 | temp_s6->unk16960);
        *(void *)0x1018 = 2;
        temp_s2 = temp_s6->unk96A4;
        sp418 = (s64) temp_s6->unk96A8;
        sp408 = (s64) temp_s6->unk969C;
        spC8.unk4 = (s32) temp_s6->unk7CC8;
        spC8.unk8 = (s32) temp_s6->unk7CCC;
        spC8.unk10 = (s32) temp_s6->unk7CD4;
        spC8.unk14 = (s32) temp_s6->unk7CD8;
        spC8.unk18 = (s32) temp_s6->unk7CDC;
        sp410 = (s64) temp_s6->unk96A0;
        spC8.unkC = (s32) temp_s6->unk7CD0;
        temp_a6_3 = temp_s6 + 0x8BE8;
        spC8 = temp_s6->unk7CC4;
        spE8.unk38 = (s64) temp_s6->unk8C20;
        spE8.unk30 = (s64) temp_s6->unk8C18;
        spE8.unk28 = (s64) temp_s6->unk8C10;
        spE8.unk20 = (s64) temp_s6->unk8C08;
        spE8.unk18 = (s64) temp_s6->unk8C00;
        spE8.unk10 = (s64) temp_s6->unk8BF8;
        spE8.unk8 = (s64) temp_s6->unk8BF0;
        spE8 = temp_s6->unk8BE8;
        sp4B8 = (s64) temp_s6->unk8BE4;
        sp4C0 = (s64) temp_s6->unk8CE8;
        sp128.unk4 = (s32) temp_a0->unk4;
        sp128.unk8 = (s32) temp_a0->unk8;
        sp128.unkC = (s32) temp_a0->unkC;
        sp128.unk10 = (s32) temp_a0->unk10;
        sp128.unk14 = (s32) temp_a0->unk14;
        sp128.unk18 = (s32) temp_a0->unk18;
        sp128.unk1C = (s32) temp_a0->unk1C;
        sp128 = temp_s6->unk8CEC;
        temp_s6->unk96A4 = (s32) (temp_s2 | 0x100000);
        temp_s6->unk16960 = (s32) (0x200000 | temp_s6->unk16960);
        *(void *)0x1018 = 2;
        temp_s6->unk7CD4 = (s32) (0x40000 | (0x10000 | temp_s6->unk7CD4) | 0x4000);
        temp_s6->unk16960 = (s32) (temp_s6->unk16960 | 0x200);
        *(void *)0x1018 = 2;
        temp_a5_4 = temp_a6_3 + 4;
        temp_a7_2 = arg0->unk14;
        var_a4 = 0x10;
        var_a3 = 0;
        do {
            var_a4 -= 2;
            *(var_a3 + temp_a6_3) = *(var_a3 + (temp_a7_2 + 0x270));
            temp_v1 = var_a3 + temp_a5_4;
            temp_v0 = *(var_a3 + (temp_a7_2 + 0x274));
            var_a3 += 8;
            *temp_v1 = temp_v0;
        } while (var_a4 > 0);
        temp_s6->unk8BE4 = 2;
        temp_a0_2 = arg0->unk14;
        sp4C8 = (s64) temp_s6->unk8D6C;
        sp4D0 = (s64) temp_s6->unk8D74;
        sp4D8 = (s64) temp_s6->unk8D70;
        temp_s6->unk8CEC = (s32) temp_a0_2->unk2B0;
        temp_s6->unk8CF0 = (s32) temp_a0_2->unk2B4;
        temp_s6->unk8CF4 = (s32) temp_a0_2->unk2B8;
        temp_s6->unk8CF8 = (s32) temp_a0_2->unk2BC;
        temp_s6->unk8CFC = (s32) temp_a0_2->unk2C0;
        temp_s6->unk8D00 = (s32) temp_a0_2->unk2C4;
        temp_s6->unk8D04 = (s32) temp_a0_2->unk2C8;
        temp_s6->unk8D08 = (s32) temp_a0_2->unk2CC;
        temp_s6->unk8CE8 = 2;
        temp_t0_2 = arg0->unk14;
        temp_s6->unk8D6C = (s32) temp_t0_2->unkB54;
        temp_s6->unk8D70 = (s32) temp_t0_2->unkB58;
        temp_a7_3 = 0x38000 | temp_s6->unk16960;
        temp_s6->unk16960 = temp_a7_3;
        temp_s6->unk8D74 = (s32) temp_t0_2->unkB5C;
        *(void *)0x1018 = 2;
        sp164 = (f32) sp388;
        sp160 = (f32) sp380;
        sp15C = second half of f64;
        sp158 = second half of f64;
        sp154 = (f32) sp388;
        sp150 = (f32) sp380;
        sp14C = second half of f64;
        sp148 = second half of f64;
        __glOdysseyImageMovePixelsTexture((f32 *) &sp40, sp, (s64) &sp148, 0, var_a4, (s64) temp_a5_4, 0x38000, (s64) temp_a7_3);
        temp_s6->unk96A4 = temp_s2;
        temp_s6->unk96A8 = (s32) sp418;
        temp_s6->unk96A0 = (s32) sp410;
        temp_s6->unk969C = (s32) sp408;
        temp_s6->unk7CC4 = spC8;
        temp_s6->unk7CDC = (s32) spC8.unk18;
        temp_s6->unk7CD8 = (s32) spC8.unk14;
        temp_s6->unk7CD4 = (s32) spC8.unk10;
        temp_s6->unk7CD0 = (s32) spC8.unkC;
        temp_s6->unk7CCC = (s32) spC8.unk8;
        temp_s6->unk7CC8 = (s32) spC8.unk4;
        temp_s6->unk8C20 = (s64) spE8.unk38;
        temp_s6->unk8C18 = (s64) spE8.unk30;
        temp_s6->unk8C10 = (s64) spE8.unk28;
        temp_s6->unk8C08 = (s64) spE8.unk20;
        temp_s6->unk8C00 = (s64) spE8.unk18;
        temp_s6->unk8BF8 = (s64) spE8.unk10;
        temp_s6->unk8BF0 = (s64) spE8.unk8;
        temp_s6->unk8BE8 = spE8;
        temp_s6->unk8CE8 = (s32) sp4C0;
        temp_s6->unk8BE4 = (s32) sp4B8;
        temp_s6->unk8D08 = (s32) sp128.unk1C;
        temp_s6->unk8D04 = (s32) sp128.unk18;
        temp_s6->unk8D00 = (s32) sp128.unk14;
        temp_s6->unk8CFC = (s32) sp128.unk10;
        temp_s6->unk8CF8 = (s32) sp128.unkC;
        temp_s6->unk8CF4 = (s32) sp128.unk8;
        temp_s6->unk8CF0 = (s32) sp128.unk4;
        temp_s6->unk8CEC = sp128;
        temp_s6->unk8D74 = (s32) sp4D0;
        temp_s6->unk8D70 = (s32) sp4D8;
        temp_s6->unk8D6C = (s32) sp4C8;
        temp_s6->unk16960 = (s32) (0x238200 | temp_s6->unk16960);
        *(void *)0x1018 = 2;
        sp170 = 0;
        sp3F8 = (s64) temp_s6->unk7C00;
        temp_s2_2 = temp_s6->unk9820;
        sp400 = (s64) temp_s6->unk981C;
        if (__glOdysseyOpenPMObjReference((s64) temp_s6, temp_s6->unkEFB0, 0, 0, &sp170, 1) != 0) {
            temp_s6->unk981C = sp170;
            temp_s6->unk9820 = (s32) temp_s6->unkF7B8;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10842;
            HQ2_READ_FIFO = temp_s6->unk981C;
            HQ2_READ_FIFO = temp_s6->unk9820;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0x96;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            temp_s6->unk9830 = 0;
            HQ2_READ_FIFO = 0x10443;
            HQ2_READ_FIFO = 0xFA;
            HQ2_READ_FIFO = 0x10046;
            HQ2_READ_FIFO = 0x10046;
            if (__glOdysseyClosePMObjReference((s64) temp_s6, temp_s6->unkEFB0, 0, 0, sp170) != 0) {
                temp_a6_4 = temp_s6->unk7C00 | 0x40;
                temp_s6->unk7C00 = temp_a6_4;
                temp_a5_5 = temp_s6->unk16960 | 4;
                temp_s6->unk16960 = temp_a5_5;
                *(void *)0x1018 = 2;
                if ((second half of f64) < (f64) (second half of f64)) {
                    sp18C = second half of f64;
                    sp188 = second half of f64;
                    sp17C = second half of f64;
                    sp178 = second half of f64;
                    var_f30 = second half of f64;
                    var_f28 = second half of f64;
                    sp194 = (bitwise f32) sp388;
                    sp190 = (bitwise f32) sp380;
                    sp184 = (f32) sp388;
                    sp180 = (f32) sp380;
                    __glOdysseyImageMovePixelsCopy(sp, (f32 *) &sp40, (s64) &sp178, 1, 0, (s64) temp_a5_5, temp_a6_4);
                } else {
                    sp17C = second half of f64;
                    sp178 = second half of f64;
                    sp184 = second half of f64;
                    sp180 = (f32) sp380;
                    sp188 = arg1->unk10;
                    sp18C = arg1->unk14;
                    sp190 = arg1->unk18;
                    sp194 = arg1->unk1C;
                    __glOdysseyImageMovePixelsCopy(arg0->unk48, (f32 *) &sp40, (s64) &sp178, 1, 1, (s64) temp_a5_5, temp_a6_4);
                }
                temp_s6->unk9820 = temp_s2_2;
                temp_s6->unk981C = (s32) sp400;
                temp_s6->unk7C00 = (s32) sp3F8;
                temp_s6->unk16960 = (s32) (temp_s6->unk16960 | 4);
                *(void *)0x1018 = 2;
                if ((second half of f64) < (f64) arg0->unk40) {
                    unksp480 = second half of f64;
                    unksp488 = var_f28;
                    sp1A0.unk4 = (s32) temp_s6->unk8CF0;
                    sp1A0.unk8 = (s32) temp_s6->unk8CF4;
                    sp1A0.unkC = (s32) temp_s6->unk8CF8;
                    sp1A0.unk10 = (s32) temp_s6->unk8CFC;
                    sp1A0.unk14 = (s32) temp_s6->unk8D00;
                    sp1A0.unk18 = (s32) temp_s6->unk8D04;
                    sp1A0.unk1C = (s32) temp_s6->unk8D08;
                    sp1A0 = temp_s6->unk8CEC;
                    temp_a5_6 = temp_s6->unk7CD4;
                    temp_s6->unk7C00 = (s32) (temp_s6->unk7C00 & ~0x40);
                    temp_s6->unk16960 = (s32) (temp_s6->unk16960 | 4);
                    *(void *)0x1018 = 2;
                    temp_s6->unk7CD4 = (s32) (temp_s6->unk7CD4 & ~0x10000);
                    temp_s6->unk16960 = (s32) (temp_s6->unk16960 | 0x200);
                    *(void *)0x1018 = 2;
                    sp3F0 = (s64) temp_s6->unk8CE8;
                    temp_s6->unk7CD4 = (s32) (0x40000 | temp_s6->unk7CD4 | 0x4000);
                    sp1C0.unk4 = (s32) temp_s6->unk7CC8;
                    temp_s6->unk16960 = (s32) (temp_s6->unk16960 | 0x200);
                    *(void *)0x1018 = 2;
                    temp_s6->unk16960 = (s32) (0x200000 | temp_s6->unk16960);
                    temp_s6->unk96A4 = (s32) (temp_s6->unk96A4 & ~0x100000);
                    *(void *)0x1018 = 2;
                    temp_f20 = temp_s6->unk11E20;
                    temp_s6->unk8D08 = (s32) (0xFFFF0000 & temp_s6->unk8D08);
                    temp_s6->unk8D00 = (s32) (0xFFFF0000 & temp_s6->unk8D00);
                    temp_s6->unk8CF8 = (s32) (0xFFFF0000 & temp_s6->unk8CF8);
                    temp_s6->unk8CF0 = (s32) (0xFFFF0000 & temp_s6->unk8CF0);
                    temp_f24 = arg0->unk40;
                    sp1C0.unk8 = (s32) temp_s6->unk7CCC;
                    sp1C0.unkC = (s32) temp_s6->unk7CD0;
                    sp1C0.unk10 = temp_a5_6;
                    sp1C0.unk14 = (s32) temp_s6->unk7CD8;
                    sp1C0.unk18 = (s32) temp_s6->unk7CDC;
                    sp1C0 = temp_s6->unk7CC4;
                    if (temp_f20 < temp_f24) {
                        var_a0 = 1;
                        var_f4 = 1.0f;
                        do {
                            var_f4 *= temp_f20;
                            var_a0 += 1;
                        } while (temp_f20 < (temp_f24 / var_f4));
                        if (var_a0 > 0) {
                            goto block_13;
                        }
                    } else {
                        unksp490 = var_f30;
                        var_a0 = 1;
block_13:
                        unksp468 = var_a0;
                        unksp490 = var_f30;
                        var_s2 = 1;
loop_16:
                        temp_s6->unk8CE8 = 2;
                        temp_s6->unk16960 = (s32) (0x10000 | temp_s6->unk16960);
                        temp_v1_2 = (s32) (4096.0f * M2C_ERROR(/* unknown instruction: movf.s $f16, $f5, $fcc2 */)) & 0xFFFF;
                        temp_s6->unk8D04 = (s32) (temp_v1_2 | (0xFFFF0000 & temp_s6->unk8D04));
                        temp_s6->unk8CFC = (s32) (temp_v1_2 | (0xFFFF0000 & temp_s6->unk8CFC));
                        temp_s6->unk8CF4 = (s32) (temp_v1_2 | (0xFFFF0000 & temp_s6->unk8CF4));
                        temp_s6->unk8CEC = (s32) (temp_v1_2 | (0xFFFF0000 & temp_s6->unk8CEC));
                        *(void *)0x1018 = 2;
                        if (var_s2 != unksp468) {
                            sp1F4 = second half of f64;
                            sp1F0 = second half of f64;
                            sp1E4 = second half of f64;
                            sp1E0 = second half of f64;
                            sp1FC = (bitwise f32) sp388;
                            sp1F8 = (bitwise f32) sp380;
                            sp1EC = (s32) sp388;
                            sp1E8 = (f32) sp380;
                            __glOdysseyImageMovePixelsCopy(sp, sp, (s64) &sp1E0, 1, 1);
                        } else {
                            sp1E4 = second half of f64;
                            sp1E0 = second half of f64;
                            sp1EC = second half of f64;
                            sp1E8 = (f32) sp380;
                            sp1F0 = arg1->unk10;
                            sp1F4 = arg1->unk14;
                            sp1F8 = arg1->unk18;
                            sp1FC = arg1->unk1C;
                            __glOdysseyImageMovePixelsTexture(arg0->unk48, sp, (s64) &sp1E0, 1, second half of f64, sp380);
                        }
                        powf(temp_s6->unk11E20, (f32) var_s2);
                        M2C_ERROR(/* unknown instruction: movf $ra, $zero, $fcc1 */);
                        var_s2 += 1;
                        M2C_ERROR(/* unknown instruction: movf.s $f5, $f28, $fcc0 */);
                        if (var_s2 != (var_a0 + 1)) {
                            goto loop_16;
                        }
                    }
                    temp_s6->unk8CE8 = (s32) sp3F0;
                    temp_s6->unk8D08 = (s32) sp1A0.unk1C;
                    temp_s6->unk8D04 = (s32) sp1A0.unk18;
                    temp_s6->unk8D00 = (s32) sp1A0.unk14;
                    temp_s6->unk8CFC = (s32) sp1A0.unk10;
                    temp_s6->unk8CF8 = (s32) sp1A0.unkC;
                    temp_s6->unk8CF4 = (s32) sp1A0.unk8;
                    temp_s6->unk8CF0 = (s32) sp1A0.unk4;
                    temp_s6->unk8CEC = sp1A0;
                    temp_s6->unk7CC4 = sp1C0;
                    temp_s6->unk7CC8 = (s32) sp1C0.unk4;
                    temp_s6->unk7CCC = (s32) sp1C0.unk8;
                    temp_s6->unk7CD0 = (s32) sp1C0.unkC;
                    temp_s6->unk7CD4 = (s32) sp1C0.unk10;
                    temp_s6->unk7CD8 = (s32) sp1C0.unk14;
                    temp_s6->unk7CDC = (s32) sp1C0.unk18;
                    temp_s6->unk16960 = (s32) (temp_s6->unk16960 | 0x10200);
                    goto block_20;
                }
                /* Duplicate return node #21. Try simplifying control flow for better match */
                return 1;
            }
            M2C_ERROR(/* Read from unset register $t9 */)(0x505);
            return 0;
        }
        return 0;
    }
    temp_a1_2 = temp_s6->unk96A8;
    sp208.unk10 = (s32) temp_s6->unk7CD4;
    sp3B8 = (s64) (temp_s6 + 0x8BE8);
    sp208.unk8 = (s32) temp_s6->unk7CCC;
    sp208.unk14 = (s32) temp_s6->unk7CD8;
    sp390 = 8;
    sp208.unkC = (s32) temp_s6->unk7CD0;
    sp208.unk18 = (s32) temp_s6->unk7CDC;
    sp208.unk4 = (s32) temp_s6->unk7CC8;
    sp208 = temp_s6->unk7CC4;
    sp398 = (s64) temp_s6->unk969C;
    sp3B0 = (s64) temp_s6->unk96A0;
    sp3A8 = (s64) temp_s6->unk96A4;
    sp3A0 = (s64) temp_a1_2;
    sp228.unk8 = (s64) temp_s6->unk8BF0;
    sp228.unk10 = (s64) temp_s6->unk8BF8;
    sp228.unk18 = (s64) temp_s6->unk8C00;
    sp228.unk20 = (s64) temp_s6->unk8C08;
    sp228.unk28 = (s64) temp_s6->unk8C10;
    sp228.unk30 = (s64) temp_s6->unk8C18;
    sp228.unk38 = (s64) temp_s6->unk8C20;
    temp_a7_4 = temp_s6->unk8BE8;
    sp228 = temp_a7_4;
    sp3D8 = (s64) temp_s6->unk8CE8;
    sp3E0 = (s64) temp_s6->unk8BE4;
    temp_a2_2 = temp_s6->unk8D04;
    sp268.unk4 = (s32) temp_s6->unk8CF0;
    sp268.unk8 = (s32) temp_s6->unk8CF4;
    sp268.unkC = (s32) temp_s6->unk8CF8;
    sp268.unk10 = (s32) temp_s6->unk8CFC;
    sp268.unk14 = (s32) temp_s6->unk8D00;
    sp268.unk18 = temp_a2_2;
    sp268.unk1C = (s32) temp_s6->unk8D08;
    sp268 = temp_s6->unk8CEC;
    sp288 = 0;
    sp288.unk38 = 0;
    sp288.unk30 = 0;
    sp288.unk28 = 0;
    sp288.unk20 = 0;
    sp288.unk18 = 0;
    sp288.unk10 = 0;
    sp288.unk8 = 0;
    sp293 = 1;
    sp288 = 1;
    unksp28C = 0;
    sp2C0 = 1;
    sp2A8 = temp_s6->unk11E1C;
    sp2AC = temp_s6->unk11E18;
    sp3D0 = (s64) temp_s6->unk8D6C;
    sp3C8 = (s64) temp_s6->unk8D70;
    sp3C0 = (s64) temp_s6->unk8D74;
    sp348 = M2C_ERROR(/* unknown instruction: movz.s $f13, $f7, $a6 */);
    sp340 = M2C_ERROR(/* unknown instruction: movz.s $f5, $f7, $a4 */);
    sp330 = M2C_ERROR(/* unknown instruction: movz.s $f4, $f6, $a5 */);
    sp338 = M2C_ERROR(/* unknown instruction: movz.s $f13, $f6, $a3 */);
    temp_f0_2 = ceil((bitwise f64) &sp268, temp_a1_2, (s64 *) temp_a2_2, temp_a3, (bitwise f64) temp_a4, (s64) temp_a5, temp_a6, temp_a7_4, (bitwise s32) (f64) ((f32) ((u64) ((s64) temp_s6->unk11E1C << 0x20) >> 0x20) * 0.0625f), second half of f64);
    sp2B4 = 2;
    sp2B0 = 2;
    sp2BC = 0xC;
    sp2B8 = 0;
    sp2A4 = (s32) (s64) temp_f0_2;
    sp298 = temp_s6->unkA720;
    sp29C = temp_s6->unkA724;
    sp2A0 = temp_s6->unkA728;
    temp_s6->unk7CD4 = (s32) (0x10000 | temp_s6->unk7CD4 | 0x4000);
    temp_s6->unk16960 = (s32) (temp_s6->unk16960 | 0x200);
    *(void *)0x1018 = 2;
    var_a3_2 = 0x10;
    var_a0_2 = 0;
    temp_a6_5 = arg0->unk14;
    temp_a5_7 = temp_s6 + 0x8BE8;
    temp_a4_2 = temp_a6_5 + 0x274;
    do {
        var_a3_2 -= 2;
        *(var_a0_2 + temp_a5_7) = *(var_a0_2 + (temp_a6_5 + 0x270));
        temp_at = var_a0_2 + (temp_s6 + 0x8BEC);
        temp_ra = *(var_a0_2 + temp_a4_2);
        var_a0_2 += 8;
        *temp_at = temp_ra;
    } while (var_a3_2 > 0);
    temp_s6->unk8BE4 = 2;
    temp_a0_3 = arg0->unk14;
    temp_s6->unk8CEC = (s32) temp_a0_3->unk2B0;
    temp_s6->unk8CF0 = (s32) temp_a0_3->unk2B4;
    temp_s6->unk8CF4 = (s32) temp_a0_3->unk2B8;
    temp_a7_5 = temp_a0_3->unk2BC;
    temp_s6->unk8CF8 = temp_a7_5;
    temp_a6_6 = temp_a0_3->unk2C0;
    temp_s6->unk8CFC = temp_a6_6;
    temp_s6->unk8D00 = (s32) temp_a0_3->unk2C4;
    temp_s6->unk8D04 = (s32) temp_a0_3->unk2C8;
    temp_s6->unk8D08 = (s32) temp_a0_3->unk2CC;
    temp_s6->unk8CE8 = 2;
    temp_t9 = arg0->unk14;
    temp_s6->unk8D6C = (s32) temp_t9->unkB54;
    temp_s6->unk8D70 = (s32) temp_t9->unkB58;
    temp_s6->unk16960 = (s32) (0x38000 | temp_s6->unk16960);
    temp_s6->unk8D74 = (s32) temp_t9->unkB5C;
    *(void *)0x1018 = 2;
    temp_f4 = arg1->unk0;
    if ((f64) arg0->unk40 > 1.0) {
        sp2C8 = temp_f4;
        sp2CC = arg1->unk4;
        sp2D0 = arg1->unk8;
        sp2E4 = (bitwise f32) sp340 - (second half of f64);
        sp2E0 = (bitwise f32) sp330 - (second half of f64);
        sp2DC = 0.0f;
        sp2D8 = 0;
        sp2D4 = arg1->unkC;
        __glOdysseyImageMovePixelsTexture((f32 *) &sp288, arg0->unk44, (s64) &sp2C8, 0, (s32) temp_a4_2, (s64) temp_a5_7, temp_a6_6, (s64) temp_a7_5);
    } else {
        sp2C8 = temp_f4;
        sp2CC = arg1->unk4;
        sp2D0 = arg1->unk8;
        sp2D4 = arg1->unkC;
        sp2D8 = arg1->unk10;
        sp2DC = arg1->unk14;
        sp2E0 = arg1->unk18;
        sp2E4 = arg1->unk1C;
        __glOdysseyImageMovePixelsTexture(arg0->unk48, arg0->unk44, (s64) &sp2C8, 1, (s32) temp_a4_2, (s64) temp_a5_7, temp_a6_6, (s64) temp_a7_5);
    }
    temp_s6->unk96A8 = (s32) sp3A0;
    temp_s6->unk96A4 = (s32) sp3A8;
    temp_s6->unk96A0 = (s32) sp3B0;
    temp_s6->unk969C = (s32) sp398;
    temp_s6->unk7CC4 = sp208;
    temp_s6->unk7CD8 = (s32) sp208.unk14;
    temp_s6->unk7CD4 = (s32) sp208.unk10;
    temp_s6->unk7CCC = (s32) sp208.unk8;
    temp_s6->unk7CDC = (s32) sp208.unk18;
    temp_s6->unk7CD0 = (s32) sp208.unkC;
    temp_t0_3 = temp_s6 + 0x7CC4;
    temp_s6->unk7CC8 = (s32) sp208.unk4;
    temp_s6->unk8C20 = (s64) sp228.unk38;
    temp_s6->unk8C18 = (s64) sp228.unk30;
    temp_s6->unk8C10 = (s64) sp228.unk28;
    temp_s6->unk8C08 = (s64) sp228.unk20;
    temp_s6->unk8C00 = (s64) sp228.unk18;
    temp_s6->unk8BF8 = (s64) sp228.unk10;
    temp_s6->unk8BF0 = (s64) sp228.unk8;
    temp_s6->unk8BE8 = sp228;
    temp_s6->unk8CE8 = (s32) sp3D8;
    temp_s6->unk8BE4 = (s32) sp3E0;
    temp_s6->unk8D08 = (s32) sp268.unk1C;
    temp_s6->unk8D04 = (s32) sp268.unk18;
    temp_s6->unk8D00 = (s32) sp268.unk14;
    temp_s6->unk8CFC = (s32) sp268.unk10;
    temp_s6->unk8CF8 = (s32) sp268.unkC;
    temp_s6->unk8CF4 = (s32) sp268.unk8;
    temp_s6->unk8CF0 = (s32) sp268.unk4;
    temp_s6->unk8CEC = sp268;
    temp_s6->unk8D74 = (s32) sp3C0;
    temp_s6->unk8D70 = (s32) sp3C8;
    temp_s6->unk8D6C = (s32) sp3D0;
    temp_s6->unk16960 = (s32) (0x238200 | temp_s6->unk16960);
    *(void *)0x1018 = 2;
    if ((f64) arg0->unk40 > 1.0) {
        sp2F0.unk1C = (s32) temp_s6->unk8D08;
        sp2F0.unk18 = (s32) temp_s6->unk8D04;
        sp2F0.unk14 = (s32) temp_s6->unk8D00;
        sp2F0.unk10 = (s32) temp_s6->unk8CFC;
        sp2F0.unkC = (s32) temp_s6->unk8CF8;
        sp2F0.unk8 = (s32) temp_s6->unk8CF4;
        sp2F0.unk4 = (s32) temp_s6->unk8CF0;
        sp2F0 = temp_s6->unk8CEC;
        sp3E8 = (s64) temp_s6->unk8CE8;
        temp_s6->unk7CD4 = (s32) (temp_s6->unk7CD4 & ~0x10000);
        temp_s6->unk16960 = (s32) (temp_s6->unk16960 | 0x200);
        *(void *)0x1018 = 2;
        temp_s6->unk7CD4 = (s32) (temp_s6->unk7CD4 | 0x40000 | 0x4000);
        sp310.unk18 = (s32) temp_t0_3->unk18;
        temp_s6->unk16960 = (s32) (temp_s6->unk16960 | 0x200);
        *(void *)0x1018 = 2;
        temp_f20_2 = temp_s6->unk11E20;
        temp_s6->unk8CF0 = (s32) (0xFFFF0000 & temp_s6->unk8CF0);
        temp_s6->unk8CF8 = (s32) (0xFFFF0000 & temp_s6->unk8CF8);
        temp_s6->unk8D00 = (s32) (0xFFFF0000 & temp_s6->unk8D00);
        temp_s6->unk8D08 = (s32) (0xFFFF0000 & temp_s6->unk8D08);
        temp_f24_2 = arg0->unk40;
        sp310.unk14 = (s32) temp_t0_3->unk14;
        sp310.unk10 = (s32) temp_t0_3->unk10;
        sp310.unkC = (s32) temp_t0_3->unkC;
        sp310.unk8 = (s32) temp_t0_3->unk8;
        sp310.unk4 = (s32) temp_t0_3->unk4;
        sp310 = temp_s6->unk7CC4;
        if (temp_f20_2 < temp_f24_2) {
            var_a0_3 = 1;
            var_f4_2 = 1.0f;
            do {
                var_f4_2 *= temp_f20_2;
                var_a0_3 += 1;
            } while (temp_f20_2 < (temp_f24_2 / var_f4_2));
            if (var_a0_3 > 0) {
                goto block_32;
            }
        } else {
            var_a0_3 = 1;
block_32:
            unksp460 = var_a0_3 + 1;
            var_s2_2 = 1;
            sp378 = (bitwise f64) ((bitwise f32) sp330 - (second half of f64));
            sp370 = (bitwise s64) ((bitwise f32) sp340 - (bitwise f32) sp348);
loop_35:
            temp_s6->unk8CE8 = 2;
            temp_at_2 = (s32) (4096.0f * M2C_ERROR(/* unknown instruction: movf.s $f16, $f5, $fcc1 */)) & 0xFFFF;
            temp_s6->unk16960 = (s32) (0x10000 | temp_s6->unk16960);
            temp_s6->unk8D04 = (s32) (temp_at_2 | (0xFFFF0000 & temp_s6->unk8D04));
            temp_s6->unk8CFC = (s32) (temp_at_2 | (0xFFFF0000 & temp_s6->unk8CFC));
            temp_s6->unk8CF4 = (s32) (temp_at_2 | (0xFFFF0000 & temp_s6->unk8CF4));
            temp_s6->unk8CEC = (s32) (temp_at_2 | (0xFFFF0000 & temp_s6->unk8CEC));
            *(void *)0x1018 = 2;
            if (var_s2_2 != var_a0_3) {
                sp2CC = 0.0f;
                sp2C8 = 0.0f;
                sp2D4 = (bitwise f32) sp370;
                sp2D0 = (bitwise f32) sp378;
                __glOdysseyImageMovePixelsCopy((f32 *) &sp288, (f32 *) &sp288, (s64) &sp2C8, 1, 0);
            } else {
                sp2CC = 0.0f;
                sp2C8 = 0.0f;
                sp2D4 = (bitwise f32) sp370;
                sp2D0 = (bitwise f32) sp378;
                temp_f14_2 = arg1->unk10;
                sp2D8 = temp_f14_2;
                temp_f13 = arg1->unk14;
                sp2DC = temp_f13;
                temp_f12 = arg1->unk18;
                sp2E0 = temp_f12;
                sp2E4 = arg1->unk1C;
                __glOdysseyImageMovePixelsTexture(arg0->unk48, (f32 *) &sp288, (s64) &sp2C8, 1, (bitwise s32) temp_f12, (bitwise s64) temp_f13, temp_f14_2, sp370, sp378, second half of f64);
            }
            powf(temp_s6->unk11E20, (f32) var_s2_2);
            M2C_ERROR(/* unknown instruction: movf $t9, $zero, $fcc0 */);
            var_s2_2 += 1;
            M2C_ERROR(/* unknown instruction: movf.s $f5, $f28, $fcc7 */);
            if (var_s2_2 != unksp460) {
                goto loop_35;
            }
        }
        temp_s6->unk8CE8 = (s32) sp3E8;
        temp_s6->unk8D08 = (s32) sp2F0.unk1C;
        temp_s6->unk8D04 = (s32) sp2F0.unk18;
        temp_s6->unk8D00 = (s32) sp2F0.unk14;
        temp_s6->unk8CFC = (s32) sp2F0.unk10;
        temp_s6->unk8CF8 = (s32) sp2F0.unkC;
        temp_s6->unk8CF4 = (s32) sp2F0.unk8;
        temp_s6->unk8CF0 = (s32) sp2F0.unk4;
        temp_s6->unk8CEC = sp2F0;
        temp_s6->unk7CC4 = sp310;
        temp_s6->unk7CC8 = (s32) sp310.unk4;
        temp_s6->unk7CCC = (s32) sp310.unk8;
        temp_s6->unk7CD0 = (s32) sp310.unkC;
        temp_s6->unk7CD4 = (s32) sp310.unk10;
        temp_s6->unk7CD8 = (s32) sp310.unk14;
        temp_s6->unk7CDC = (s32) sp310.unk18;
        temp_s6->unk16960 = (s32) (temp_s6->unk16960 | 0x10200);
block_20:
        *(void *)0x1018 = 2;
    }
    return 1;
}

void SetupScaleBiasForTexFilter(void *arg0, void *arg1) {
    void *temp_v1;

    temp_v1 = *(void **)0x1010;
    temp_v1->unk8CEC = (s32) (((s32) (4096.0f * arg0->unk0) & 0xFFFF) | (0xFFFF0000 & temp_v1->unk8CEC));
    temp_v1->unk8CF0 = (s32) (((s32) (4096.0f * arg1->unk0) & 0xFFFF) | (0xFFFF0000 & temp_v1->unk8CF0));
    temp_v1->unk8CF4 = (s32) (((s32) (4096.0f * arg0->unk4) & 0xFFFF) | (0xFFFF0000 & temp_v1->unk8CF4));
    temp_v1->unk8CF8 = (s32) (((s32) (4096.0f * arg1->unk4) & 0xFFFF) | (0xFFFF0000 & temp_v1->unk8CF8));
    temp_v1->unk8CFC = (s32) (((s32) (4096.0f * arg0->unk8) & 0xFFFF) | (0xFFFF0000 & temp_v1->unk8CFC));
    temp_v1->unk8D00 = (s32) (((s32) (4096.0f * arg1->unk8) & 0xFFFF) | (0xFFFF0000 & temp_v1->unk8D00));
    temp_v1->unk8D04 = (s32) (((s32) (4096.0f * arg0->unkC) & 0xFFFF) | (0xFFFF0000 & temp_v1->unk8D04));
    temp_v1->unk16960 = (s32) (0x10000 | temp_v1->unk16960);
    temp_v1->unk8CE8 = 2;
    temp_v1->unk8D08 = (s32) (((s32) (4096.0f * arg1->unkC) & 0xFFFF) | (0xFFFF0000 & temp_v1->unk8D08));
    *(s32 *)0x1018 = 2;
}

void LoadTextureFilter(void *arg0, s32 arg1) {
    s32 *temp_t9;
    s32 temp_a7;
    s32 temp_t3;
    s32 temp_t8;
    s32 var_a3;
    s32 var_a4;
    void *temp_a2;
    void *temp_a4;
    void *temp_t2;

    var_a3 = 0x10;
    var_a4 = 0;
    temp_t2 = *(void **)0x1010;
    temp_t3 = arg1 * 0xB60;
    temp_a7 = arg0->unk14 + temp_t3;
    do {
        var_a3 -= 2;
        *(var_a4 + (temp_t2 + 0x8BE8)) = *(var_a4 + (temp_a7 + 0x270));
        temp_t9 = var_a4 + (temp_t2 + 0x8BEC);
        temp_t8 = *(var_a4 + (temp_a7 + 0x274));
        var_a4 += 8;
        *temp_t9 = temp_t8;
    } while (var_a3 > 0);
    temp_t2->unk8BE4 = 2;
    temp_a2 = arg0->unk14 + temp_t3;
    temp_t2->unk8CEC = (s32) temp_a2->unk2B0;
    temp_t2->unk8CF0 = (s32) temp_a2->unk2B4;
    temp_t2->unk8CF4 = (s32) temp_a2->unk2B8;
    temp_t2->unk8CF8 = (s32) temp_a2->unk2BC;
    temp_t2->unk8CFC = (s32) temp_a2->unk2C0;
    temp_t2->unk8D00 = (s32) temp_a2->unk2C4;
    temp_t2->unk8D04 = (s32) temp_a2->unk2C8;
    temp_t2->unk8D08 = (s32) temp_a2->unk2CC;
    temp_t2->unk8CE8 = 2;
    temp_a4 = arg0->unk14 + temp_t3;
    temp_t2->unk8D6C = (s32) temp_a4->unkB54;
    temp_t2->unk8D70 = (s32) temp_a4->unkB58;
    temp_t2->unk16960 = (s32) (temp_t2->unk16960 | 0x38000);
    temp_t2->unk8D74 = (s32) temp_a4->unkB5C;
    *(s32 *)0x1018 = 2;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x50, 0x54, 0x58, 0x5c, 0x60, 0x64, 0x68, 0x6c, 0x70, 0x74, 0x78, 0x7c, 0x80, 0x84, 0x88, 0x8c, 0x90, 0x94, 0x98, 0x9c, 0xa0, 0xa4, 0xa8, 0xac, 0xb0, 0xb4, 0xb8, 0xbc, 0xc0, 0xc4, 0x108, 0x10c], gap at: 0xd0. */
f32 ConvolutionDenormAndScale(? **arg0, s64 arg1, s64 arg2, s32 arg6) {
    f64 sp48;
    f64 sp40;
    f64 sp38;
    f64 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 sp1C;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    f32 *temp_a2;
    f32 *temp_a2_2;
    f32 *temp_a2_3;
    f32 *temp_a2_4;
    f32 *temp_a2_5;
    f32 *temp_a2_7;
    f32 *temp_a4_11;
    f32 *temp_a4_6;
    f32 *temp_s7;
    f32 *temp_s7_2;
    f32 *var_a1;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f14;
    f32 temp_f15;
    f32 temp_f16;
    f32 temp_f17;
    f32 temp_f18;
    f32 temp_f19;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f20_3;
    f32 temp_f24;
    f32 temp_f24_2;
    f32 temp_f25;
    f32 temp_f25_2;
    f32 temp_f30;
    f32 temp_f30_2;
    f32 temp_f4;
    f32 temp_f4_10;
    f32 temp_f4_11;
    f32 temp_f4_12;
    f32 temp_f4_13;
    f32 temp_f4_14;
    f32 temp_f4_15;
    f32 temp_f4_16;
    f32 temp_f4_17;
    f32 temp_f4_18;
    f32 temp_f4_19;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f4_4;
    f32 temp_f4_5;
    f32 temp_f4_6;
    f32 temp_f4_7;
    f32 temp_f4_8;
    f32 temp_f5;
    f32 temp_f5_10;
    f32 temp_f5_11;
    f32 temp_f5_12;
    f32 temp_f5_13;
    f32 temp_f5_14;
    f32 temp_f5_15;
    f32 temp_f5_16;
    f32 temp_f5_17;
    f32 temp_f5_18;
    f32 temp_f5_19;
    f32 temp_f5_20;
    f32 temp_f5_2;
    f32 temp_f5_3;
    f32 temp_f5_4;
    f32 temp_f5_5;
    f32 temp_f5_6;
    f32 temp_f5_7;
    f32 temp_f5_8;
    f32 temp_f5_9;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f6_3;
    f32 temp_f7;
    f32 temp_f8;
    f32 var_f0;
    f32 var_f5;
    f32 var_f5_2;
    f32 var_f6;
    f32 var_f7;
    f32 var_f8;
    f32 var_f9;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a4_9;
    s32 temp_a5_6;
    s32 temp_a7_5;
    s32 temp_f16_2;
    s32 temp_f4_9;
    s32 var_a5_2;
    s32 var_a6;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s0_4;
    s32 var_s6;
    s32 var_s6_2;
    s64 temp_s6;
    s64 var_a0;
    s64 var_a5;
    u8 temp_a2_6;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a3_4;
    void *temp_a3_5;
    void *temp_a3_6;
    void *temp_a4;
    void *temp_a4_10;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a4_4;
    void *temp_a4_5;
    void *temp_a4_7;
    void *temp_a4_8;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a5_3;
    void *temp_a5_4;
    void *temp_a5_5;
    void *temp_a5_7;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a6_3;
    void *temp_a6_4;
    void *temp_a6_5;
    void *temp_a7;
    void *temp_a7_2;
    void *temp_a7_3;
    void *temp_a7_4;
    void *temp_a7_6;
    void *temp_at;
    void *temp_s8;
    void *temp_v0;

    var_a6 = arg6;
    sp2C = 0.0f;
    sp28 = 0.0f;
    sp24 = 0.0f;
    sp20 = 0.0f;
    sp1C = 0.0f;
    sp18 = 0.0f;
    sp14 = 0.0f;
    sp10 = 0.0f;
    spC = 1.0f;
    sp8 = 1.0f;
    temp_s8 = *(void **)0x1010;
    sp4 = 1.0f;
    sp0 = 1.0f;
    temp_s6 = arg0->unk10 - 1;
    temp_a4 = temp_s8->unk11BEC;
    M2C_ERROR(/* unknown instruction: movf.s $f7, $f4, $fcc3 */);
    M2C_ERROR(/* unknown instruction: movf.s $f6, $f7, $fcc2 */);
    temp_f5 = temp_a4->unk25C;
    temp_f4 = fabsf(temp_f5);
    var_f0 = M2C_ERROR(/* unknown instruction: movf.s $f0, $f6, $fcc1 */);
    spC = temp_f5;
    sp8 = temp_a4->unk258;
    sp4 = temp_a4->unk254;
    sp0 = temp_a4->unk250;
    temp_f4_2 = M2C_ERROR(/* unknown instruction: movf.s $f4, $f0, $fcc0 */);
    temp_f8 = temp_s8->unk2B8;
    temp_f7 = temp_s8->unk2BC;
    temp_f5_2 = temp_s8->unk2C4;
    temp_f6 = temp_s8->unk2C0;
    sp1C = temp_f5_2;
    sp2C = temp_f5_2;
    sp18 = temp_f6;
    sp28 = temp_f6;
    sp14 = temp_f7;
    sp24 = temp_f7;
    sp10 = temp_f8;
    var_a1 = &sp10;
    sp20 = temp_f8;
    M2C_ERROR(/* unknown instruction: movf.s $f10, $f30, $fcc7 */);
    M2C_ERROR(/* unknown instruction: movf.s $f31, $f10, $fcc6 */);
    temp_f30 = fabsf(var_a1->unkC);
    M2C_ERROR(/* unknown instruction: movf.s $f9, $f31, $fcc5 */);
    sp48 = (bitwise f64) temp_f8;
    sp40 = (f64) temp_f7;
    sp38 = (f64) temp_f6;
    sp30 = (f64) temp_f5_2;
    temp_f30_2 = M2C_ERROR(/* unknown instruction: movf.s $f30, $f9, $fcc4 */);
    temp_a0 = temp_s8->unk96A4;
    if (temp_s8->unk11BD0 != 0) {
        temp_s8->unk96A4 = (s32) (temp_a0 | 0x100000);
    } else {
        var_a6 = temp_a0 & ~0x100000;
        temp_s8->unk96A4 = var_a6;
    }
    temp_s8->unk16960 = (s32) (0x200000 | temp_s8->unk16960);
    *(s32 *)0x1018 = 2;
    temp_f20 = temp_s8->unk11E20;
    var_a0 = M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc0 */);
    if ((var_a0 != 0) && (var_f5 = 1.0f, (temp_f30_2 <= temp_f20))) {
        var_a5 = 1;
        if (temp_f20 < temp_f4_2) {
            var_a5 = 1;
            do {
                var_f5 *= temp_f20;
                var_a5 += 1;
            } while (temp_f20 < (temp_f4_2 / var_f5));
            unksp100 = arg2;
            if (var_a5 > 0) {
                goto block_8;
            }
        } else {
            unksp100 = arg2;
block_8:
            unkspC8 = var_a5;
            unkspD0 = var_a5 + 1;
            var_s0 = 1;
            unkspF8 = temp_s6 * 0xB60;
loop_32:
            if (temp_s8->unk11E20 < sp0) {
                sp0 = temp_s8->unk11E20;
            } else {
                temp_f5_3 = -temp_s8->unk11E20;
                if (sp0 < temp_f5_3) {
                    sp0 = temp_f5_3;
                }
            }
            temp_f4_3 = sp->unk4;
            if (temp_s8->unk11E20 < temp_f4_3) {
                sp->unk4 = temp_s8->unk11E20;
            } else {
                temp_f5_4 = -temp_s8->unk11E20;
                if (temp_f4_3 < temp_f5_4) {
                    sp->unk4 = temp_f5_4;
                }
            }
            temp_f4_4 = sp->unk8;
            if (temp_s8->unk11E20 < temp_f4_4) {
                sp->unk8 = temp_s8->unk11E20;
            } else {
                temp_f5_5 = -temp_s8->unk11E20;
                if (temp_f4_4 < temp_f5_5) {
                    sp->unk8 = temp_f5_5;
                }
            }
            temp_f4_5 = sp->unkC;
            if (temp_s8->unk11E20 < temp_f4_5) {
                sp->unkC = temp_s8->unk11E20;
            } else {
                temp_f5_6 = -temp_s8->unk11E20;
                if (temp_f4_5 < temp_f5_6) {
                    sp->unkC = temp_f5_6;
                }
            }
            (arg0->unk14 + (void *) unkspF8)->unk24 = sp0;
            (arg0->unk14 + (void *) unkspF8)->unkB8 = sp4;
            temp_a7 = arg0->unk14 + (void *) unkspF8;
            temp_a7->unk14C = sp8;
            temp_a6 = arg0->unk14 + (void *) unkspF8;
            temp_a6->unk1E0 = spC;
            temp_a5 = arg0->unk14 + (void *) unkspF8;
            temp_a5->unk28 = 0.0f;
            temp_a4_2 = arg0->unk14 + (void *) unkspF8;
            temp_a4_2->unkBC = 0.0f;
            temp_a3 = arg0->unk14 + (void *) unkspF8;
            temp_a3->unk150 = 0.0f;
            temp_a2 = arg0->unk14 + (void *) unkspF8;
            temp_a2->unk1E4 = 0.0f;
            __glOdysseyProgramTexFilter(arg0->unk14 + (void *) unkspF8, (void *) unkspF8, temp_a2, temp_a3, temp_a4_2, temp_a5, temp_a6, temp_a7);
            temp_s8->unk7BFC = (s32) (0xFFFDFFFF & temp_s8->unk7BFC);
            temp_s8->unk16960 = (s32) (temp_s8->unk16960 | 2);
            *(void *)0x1018 = 2;
            temp_s8->unk7CD4 = (s32) (0x40000 | temp_s8->unk7CD4 | 0x4000);
            temp_s8->unk16960 = (s32) (temp_s8->unk16960 | 0x200);
            *(void *)0x1018 = 2;
            if (var_s0 == unkspC8) {
                temp_a5_2 = arg0->unk14 + unkspF8;
                temp_a5_2->unk28 = (f32) sp48;
                temp_a4_3 = arg0->unk14 + unkspF8;
                temp_a4_3->unkBC = (f32) sp40;
                temp_a3_2 = arg0->unk14 + unkspF8;
                temp_a3_2->unk150 = (f32) sp38;
                temp_a2_2 = arg0->unk14 + unkspF8;
                temp_a2_2->unk1E4 = (f32) sp30;
                __glOdysseyProgramTexFilter(arg0->unk14 + unkspF8, (void *) unkspF8, temp_a2_2, temp_a3_2, temp_a4_3, temp_a5_2);
            }
            __glOdysseyImageChainAddOpAcceptSignedDataFromHost(arg0, temp_s6);
            __glOdysseyImageMovePixelsCopy((f32 *) unksp100, (f32 *) unksp100, arg1, 1, 0);
            temp_f20_2 = temp_s8->unk11E20;
            temp_f24 = (f32) var_s0;
            temp_v0 = temp_s8->unk11BEC;
            temp_f25 = fabsf(temp_v0->unk250) / powf(temp_f20_2, temp_f24);
            unkspF0 = (s64) temp_v0;
            sp0 = temp_f25;
            sp4 = fabsf(unkspF0->unk254) / powf(temp_f20_2, temp_f24);
            sp8 = fabsf(unkspF0->unk258) / powf(temp_f20_2, temp_f24);
            spC = fabsf(unkspF0->unk25C) / powf((bitwise f32) unkspF0, temp_f20_2, temp_f24);
            if ((f64) fabsf(sp0) <= 1.0) {
                sp0 = 1.0f;
            }
            var_f0 = second half of f64;
            if ((f64) fabsf(sp->unk4) <= 1.0) {
                sp->unk4 = 1.0f;
            }
            if ((f64) fabsf(sp->unk8) <= 1.0) {
                sp->unk8 = 1.0f;
            }
            if ((f64) fabsf(sp->unkC) <= 1.0) {
                sp->unkC = 1.0f;
            }
            var_s0 += 1;
            if (var_s0 != unkspD0) {
                goto loop_32;
            }
        }
    } else if (!(temp_f4_2 <= temp_f20) || !(temp_f20 < temp_f30_2)) {
        if (var_a0 != 0) {
            if (!(temp_f20 < temp_f30_2)) {
                goto block_14;
            }
            var_a5_2 = 1;
            var_f5_2 = 1.0f;
            if (temp_f20 < temp_f4_2) {
                var_a5_2 = 1;
                do {
                    var_f5_2 *= temp_f20;
                    var_a5_2 += 1;
                } while (temp_f20 < (temp_f4_2 / var_f5_2));
                unksp100 = arg2;
                if (var_a5_2 > 0) {
                    goto block_53;
                }
            } else {
                unksp100 = arg2;
block_53:
                unkspD0 = var_a5_2 + 1;
                var_s0_2 = 1;
                unkspF8 = temp_s6 * 0xB60;
loop_66:
                if (temp_s8->unk11E20 < sp0) {
                    sp0 = temp_s8->unk11E20;
                } else {
                    temp_f5_7 = -temp_s8->unk11E20;
                    if (sp0 < temp_f5_7) {
                        sp0 = temp_f5_7;
                    }
                }
                temp_f4_6 = sp->unk4;
                if (temp_s8->unk11E20 < temp_f4_6) {
                    sp->unk4 = temp_s8->unk11E20;
                } else {
                    temp_f5_8 = -temp_s8->unk11E20;
                    if (temp_f4_6 < temp_f5_8) {
                        sp->unk4 = temp_f5_8;
                    }
                }
                temp_f4_7 = sp->unk8;
                if (temp_s8->unk11E20 < temp_f4_7) {
                    sp->unk8 = temp_s8->unk11E20;
                } else {
                    temp_f5_9 = -temp_s8->unk11E20;
                    if (temp_f4_7 < temp_f5_9) {
                        sp->unk8 = temp_f5_9;
                    }
                }
                temp_f4_8 = sp->unkC;
                if (temp_s8->unk11E20 < temp_f4_8) {
                    sp->unkC = temp_s8->unk11E20;
                } else {
                    temp_f5_10 = -temp_s8->unk11E20;
                    if (temp_f4_8 < temp_f5_10) {
                        sp->unkC = temp_f5_10;
                    }
                }
                (arg0->unk14 + (void *) unkspF8)->unk24 = sp0;
                (arg0->unk14 + (void *) unkspF8)->unkB8 = sp4;
                temp_a7_2 = arg0->unk14 + (void *) unkspF8;
                temp_a7_2->unk14C = sp8;
                temp_a6_2 = arg0->unk14 + (void *) unkspF8;
                temp_a6_2->unk1E0 = spC;
                temp_a5_3 = arg0->unk14 + (void *) unkspF8;
                temp_a5_3->unk28 = 0.0f;
                temp_a4_4 = arg0->unk14 + (void *) unkspF8;
                temp_a4_4->unkBC = 0.0f;
                temp_a3_3 = arg0->unk14 + (void *) unkspF8;
                temp_a3_3->unk150 = 0.0f;
                temp_a2_3 = arg0->unk14 + (void *) unkspF8;
                temp_a2_3->unk1E4 = 0.0f;
                __glOdysseyProgramTexFilter(arg0->unk14 + (void *) unkspF8, (void *) unkspF8, temp_a2_3, temp_a3_3, temp_a4_4, temp_a5_3, temp_a6_2, temp_a7_2, sp0);
                temp_s8->unk7BFC = (s32) (0xFFFDFFFF & temp_s8->unk7BFC);
                temp_s8->unk16960 = (s32) (temp_s8->unk16960 | 2);
                *(void *)0x1018 = 2;
                temp_s8->unk7CD4 = (s32) (0x40000 | temp_s8->unk7CD4 | 0x4000);
                temp_s8->unk16960 = (s32) (temp_s8->unk16960 | 0x200);
                *(void *)0x1018 = 2;
                __glOdysseyImageChainAddOpAcceptSignedDataFromHost(arg0, temp_s6);
                __glOdysseyImageMovePixelsCopy((f32 *) unksp100, (f32 *) unksp100, arg1, 1, 0);
                temp_f20_3 = temp_s8->unk11E20;
                temp_f24_2 = (f32) var_s0_2;
                temp_at = temp_s8->unk11BEC;
                temp_f25_2 = fabsf(temp_at->unk250) / powf(temp_f20_3, temp_f24_2);
                unkspF0 = (s64) temp_at;
                sp0 = temp_f25_2;
                sp4 = fabsf(unkspF0->unk254) / powf(temp_f20_3, temp_f24_2);
                sp8 = fabsf(unkspF0->unk258) / powf(temp_f20_3, temp_f24_2);
                var_a0 = unkspF0;
                var_a1 = (f32 *) unkspD0;
                spC = fabsf(var_a0->unk25C) / powf(temp_f20_3, temp_f24_2);
                if ((f64) fabsf(sp0) <= 1.0) {
                    sp0 = 1.0f;
                }
                if ((f64) fabsf(sp->unk4) <= 1.0) {
                    sp->unk4 = 1.0f;
                }
                if ((f64) fabsf(sp->unk8) <= 1.0) {
                    sp->unk8 = 1.0f;
                }
                if ((f64) fabsf(sp->unkC) <= 1.0) {
                    sp->unkC = 1.0f;
                }
                var_s0_2 += 1;
                if (var_s0_2 != var_a1) {
                    goto loop_66;
                }
            }
            var_f0 = ceilf((bitwise f32) var_a0, (? **) var_a1, (bitwise ? **) (temp_f30_2 / temp_s8->unk11E20));
            temp_f4_9 = (s32) var_f0;
            unkspD8 = temp_s6;
            unkspE0 = arg1;
            unkspE8 = (s64) temp_f4_9;
            if (temp_f4_9 > 0) {
                var_s0_3 = 1;
                var_s6 = 0;
                temp_s7 = &sp10 + 0xC;
                unkspF8 = unkspD8 * 0xB60;
loop_85:
                if (temp_s8->unk11E20 < sp10) {
                    sp10 = temp_s8->unk11E20;
                } else {
                    temp_f5_11 = -temp_s8->unk11E20;
                    if (sp10 < temp_f5_11) {
                        sp10 = temp_f5_11;
                    }
                }
                temp_f4_10 = sp10.unk4;
                if (temp_s8->unk11E20 < temp_f4_10) {
                    sp10.unk4 = temp_s8->unk11E20;
                } else {
                    temp_f5_12 = -temp_s8->unk11E20;
                    if (temp_f4_10 < temp_f5_12) {
                        sp10.unk4 = temp_f5_12;
                    }
                }
                temp_f4_11 = sp10.unk8;
                if (temp_s8->unk11E20 < temp_f4_11) {
                    sp10.unk8 = temp_s8->unk11E20;
                } else {
                    temp_f5_13 = -temp_s8->unk11E20;
                    if (temp_f4_11 < temp_f5_13) {
                        sp10.unk8 = temp_f5_13;
                    }
                }
                temp_f4_12 = sp10.unkC;
                if (temp_s8->unk11E20 < temp_f4_12) {
                    sp10.unkC = temp_s8->unk11E20;
                } else {
                    temp_f5_14 = -temp_s8->unk11E20;
                    if (temp_f4_12 < temp_f5_14) {
                        sp10.unkC = temp_f5_14;
                    }
                }
                (arg0->unk14 + (void *) unkspF8)->unk24 = 1.0f;
                (arg0->unk14 + (void *) unkspF8)->unkB8 = 1.0f;
                temp_a7_3 = arg0->unk14 + (void *) unkspF8;
                temp_a7_3->unk14C = 1.0f;
                temp_a6_3 = arg0->unk14 + (void *) unkspF8;
                temp_a6_3->unk1E0 = 1.0f;
                temp_a5_4 = arg0->unk14 + (void *) unkspF8;
                temp_a5_4->unk28 = sp10;
                temp_a4_5 = arg0->unk14 + (void *) unkspF8;
                temp_a4_5->unkBC = sp14;
                temp_a3_4 = arg0->unk14 + (void *) unkspF8;
                temp_a3_4->unk150 = sp18;
                temp_a2_4 = arg0->unk14 + (void *) unkspF8;
                temp_a2_4->unk1E4 = sp1C;
                __glOdysseyProgramTexFilter(arg0->unk14 + (void *) unkspF8, (void *) unkspF8, temp_a2_4, temp_a3_4, temp_a4_5, temp_a5_4, temp_a6_3, temp_a7_3);
                temp_s8->unk7BFC = (s32) (0xFFFDFFFF & temp_s8->unk7BFC);
                temp_s8->unk16960 = (s32) (temp_s8->unk16960 | 2);
                *(void *)0x1018 = 2;
                temp_s8->unk7CD4 = (s32) (0x40000 | temp_s8->unk7CD4 | 0x4000);
                temp_s8->unk16960 = (s32) (temp_s8->unk16960 | 0x200);
                *(void *)0x1018 = 2;
                __glOdysseyImageChainAddOpAcceptSignedDataFromHost(arg0, unkspD8);
                var_f0 = __glOdysseyImageMovePixelsCopy((f32 *) unksp100, (f32 *) unksp100, unkspE0, 1, 0);
                temp_f6_2 = (f32) var_s0_3;
                var_s0_3 += 1;
                var_s6 += 1;
                temp_a4_6 = &sp10 + 4;
                temp_f5_15 = temp_f6_2 * temp_s8->unk11E20;
                if (temp_f5_15 < sp20) {
                    sp10 = M2C_ERROR(/* unknown instruction: nmsub.s $f7, $f4, $f6, $f20 */);
                } else if (sp20 < -temp_f5_15) {
                    sp10 = M2C_ERROR(/* unknown instruction: madd.s $f9, $f4, $f6, $f20 */);
                } else {
                    sp10 = 0.0f;
                }
                if (temp_a4_6 != temp_s7) {
                    temp_f4_13 = sp20.unk4;
                    if (temp_f5_15 < temp_f4_13) {
                        sp10.unk4 = (f32) (temp_f4_13 - temp_f5_15);
                    } else if (temp_f4_13 < -temp_f5_15) {
                        sp10.unk4 = (f32) (temp_f4_13 + temp_f5_15);
                    } else {
                        sp10.unk4 = 0.0f;
                    }
                    if ((temp_a4_6 + 4) != temp_s7) {
                        temp_f4_14 = sp20.unk8;
                        if (temp_f5_15 < temp_f4_14) {
                            temp_a4_6->unk4 = (f32) (temp_f4_14 - temp_f5_15);
                        } else if (temp_f4_14 < -temp_f5_15) {
                            temp_a4_6->unk4 = (f32) (temp_f4_14 + temp_f5_15);
                        } else {
                            temp_a4_6->unk4 = 0.0f;
                        }
                    }
                }
                if (var_s6 < unkspE8) {
                    goto loop_85;
                }
            }
        } else {
block_14:
            temp_a4_7 = temp_s8->unk11BEC;
            temp_f12 = temp_a4_7->unk250;
            temp_f13 = temp_a4_7->unk254;
            temp_f15 = temp_a4_7->unk25C;
            temp_f14 = temp_a4_7->unk258;
            spC = temp_f15;
            sp8 = temp_f14;
            sp4 = temp_f13;
            sp0 = temp_f12;
            temp_f16 = temp_s8->unk2C4;
            temp_f17 = temp_s8->unk2C0;
            temp_f18 = temp_s8->unk2BC;
            temp_a1 = temp_s6 * 0xB60;
            temp_f19 = temp_s8->unk2B8;
            (arg0->unk14 + temp_a1)->unk24 = sp0;
            (arg0->unk14 + temp_a1)->unkB8 = sp4;
            temp_a7_4 = arg0->unk14 + temp_a1;
            temp_a7_4->unk14C = sp8;
            temp_a6_4 = arg0->unk14 + temp_a1;
            temp_a6_4->unk1E0 = spC;
            temp_a5_5 = arg0->unk14 + temp_a1;
            temp_a5_5->unk28 = temp_f19;
            temp_a4_8 = arg0->unk14 + temp_a1;
            temp_a4_8->unkBC = temp_f18;
            temp_a3_5 = arg0->unk14 + temp_a1;
            temp_a3_5->unk150 = temp_f17;
            temp_a2_5 = arg0->unk14 + temp_a1;
            temp_a2_5->unk1E4 = temp_f16;
            __glOdysseyProgramTexFilter(arg0->unk14 + temp_a1, (void *) temp_a1, temp_a2_5, temp_a3_5, temp_a4_8, temp_a5_5, temp_a6_4, temp_a7_4, temp_f12, temp_f13, temp_f14, temp_f15, temp_f16, temp_f17, temp_f18, temp_f19);
            temp_s8->unk7BFC = (s32) (temp_s8->unk7BFC & ~0x20000);
            temp_a7_5 = temp_s8->unk16960 | 2;
            temp_s8->unk16960 = temp_a7_5;
            *(void *)0x1018 = 2;
            temp_a5_6 = temp_s8->unk7CD4 | 0x40000 | 0x4000;
            temp_s8->unk7CD4 = temp_a5_6;
            temp_a4_9 = temp_s8->unk16960 | 0x200;
            temp_s8->unk16960 = temp_a4_9;
            *(void *)0x1018 = 2;
            temp_a2_6 = temp_s8->unk11BD0;
            temp_a0_2 = temp_s8->unk96A4;
            if (temp_a2_6 != 0) {
                temp_s8->unk96A4 = (s32) (temp_a0_2 | 0x100000);
            } else {
                temp_s8->unk96A4 = (s32) (temp_a0_2 & ~0x100000);
            }
            temp_s8->unk16960 = (s32) (0x200000 | temp_s8->unk16960);
            *(void *)0x1018 = 2;
            __glOdysseyImageChainAddOpAcceptSignedDataFromHost(arg0, temp_s6, (s32) temp_a2_6, 3e-45f, (bitwise f32) temp_a4_9, (? **) temp_a5_6, 0x40000, (bitwise f32) temp_a7_5);
            var_f0 = __glOdysseyImageMovePixelsCopy((f32 *) arg2, (f32 *) arg2, arg1, 1, 0);
        }
    } else {
        var_f0 = M2C_ERROR(/* Read from unset register $t9 */)(var_a0, var_a1, temp_a4, sp, var_a6, temp_f30_2 / temp_f20);
        temp_f16_2 = (s32) var_f0;
        unksp100 = arg2;
        unkspD8 = temp_s6;
        unkspE0 = arg1;
        var_s6_2 = 0;
        unkspE8 = (s64) temp_f16_2;
        if (temp_f16_2 > 0) {
            var_f9 = spC;
            var_s0_4 = 1;
            var_f8 = sp8;
            var_f7 = sp4;
            temp_s7_2 = &sp10 + 0xC;
            var_f6 = sp0;
            unkspF8 = unkspD8 * 0xB60;
loop_124:
            if (temp_s8->unk11E20 < sp10) {
                sp10 = temp_s8->unk11E20;
            } else {
                temp_f5_16 = -temp_s8->unk11E20;
                if (sp10 < temp_f5_16) {
                    sp10 = temp_f5_16;
                }
            }
            temp_f4_15 = sp10.unk4;
            if (temp_s8->unk11E20 < temp_f4_15) {
                sp10.unk4 = temp_s8->unk11E20;
            } else {
                temp_f5_17 = -temp_s8->unk11E20;
                if (temp_f4_15 < temp_f5_17) {
                    sp10.unk4 = temp_f5_17;
                }
            }
            temp_f4_16 = sp10.unk8;
            if (temp_s8->unk11E20 < temp_f4_16) {
                sp10.unk8 = temp_s8->unk11E20;
            } else {
                temp_f5_18 = -temp_s8->unk11E20;
                if (temp_f4_16 < temp_f5_18) {
                    sp10.unk8 = temp_f5_18;
                }
            }
            temp_f4_17 = sp10.unkC;
            if (temp_s8->unk11E20 < temp_f4_17) {
                sp10.unkC = temp_s8->unk11E20;
            } else {
                temp_f5_19 = -temp_s8->unk11E20;
                if (temp_f4_17 < temp_f5_19) {
                    sp10.unkC = temp_f5_19;
                }
            }
            (arg0->unk14 + (void *) unkspF8)->unk24 = var_f6;
            (arg0->unk14 + (void *) unkspF8)->unkB8 = var_f7;
            temp_a7_6 = arg0->unk14 + (void *) unkspF8;
            temp_a7_6->unk14C = var_f8;
            temp_a6_5 = arg0->unk14 + (void *) unkspF8;
            temp_a6_5->unk1E0 = var_f9;
            temp_a5_7 = arg0->unk14 + (void *) unkspF8;
            temp_a5_7->unk28 = sp10;
            temp_a4_10 = arg0->unk14 + (void *) unkspF8;
            temp_a4_10->unkBC = sp14;
            temp_a3_6 = arg0->unk14 + (void *) unkspF8;
            temp_a3_6->unk150 = sp18;
            temp_a2_7 = arg0->unk14 + (void *) unkspF8;
            temp_a2_7->unk1E4 = sp1C;
            __glOdysseyProgramTexFilter(arg0->unk14 + (void *) unkspF8, (void *) unkspF8, temp_a2_7, temp_a3_6, temp_a4_10, temp_a5_7, temp_a6_5, temp_a7_6);
            temp_s8->unk7BFC = (s32) (0xFFFDFFFF & temp_s8->unk7BFC);
            temp_s8->unk16960 = (s32) (temp_s8->unk16960 | 2);
            *(void *)0x1018 = 2;
            temp_s8->unk7CD4 = (s32) (0x40000 | temp_s8->unk7CD4 | 0x4000);
            temp_s8->unk16960 = (s32) (temp_s8->unk16960 | 0x200);
            *(void *)0x1018 = 2;
            __glOdysseyImageChainAddOpAcceptSignedDataFromHost(arg0, unkspD8);
            var_f0 = __glOdysseyImageMovePixelsCopy((f32 *) unksp100, (f32 *) unksp100, unkspE0, 1, 0);
            temp_f6_3 = (f32) var_s0_4;
            var_s0_4 += 1;
            var_s6_2 += 1;
            temp_a4_11 = &sp10 + 4;
            temp_f5_20 = temp_f6_3 * temp_s8->unk11E20;
            if (temp_f5_20 < sp20) {
                sp10 = M2C_ERROR(/* unknown instruction: nmsub.s $f7, $f4, $f6, $f20 */);
            } else if (sp20 < -temp_f5_20) {
                sp10 = M2C_ERROR(/* unknown instruction: madd.s $f9, $f4, $f6, $f20 */);
            } else {
                sp10 = 0.0f;
            }
            var_f8 = 1.0f;
            var_f7 = 1.0f;
            var_f9 = 1.0f;
            if (temp_a4_11 != temp_s7_2) {
                temp_f4_18 = sp20.unk4;
                if (temp_f5_20 < temp_f4_18) {
                    sp10.unk4 = (f32) (temp_f4_18 - temp_f5_20);
                } else if (temp_f4_18 < -temp_f5_20) {
                    sp10.unk4 = (f32) (temp_f4_18 + temp_f5_20);
                } else {
                    sp10.unk4 = 0.0f;
                }
                var_f6 = 1.0f;
                if ((temp_a4_11 + 4) != temp_s7_2) {
                    temp_f4_19 = sp20.unk8;
                    if (temp_f5_20 < temp_f4_19) {
                        temp_a4_11->unk4 = (f32) (temp_f4_19 - temp_f5_20);
                    } else if (temp_f4_19 < -temp_f5_20) {
                        temp_a4_11->unk4 = (f32) (temp_f4_19 + temp_f5_20);
                    } else {
                        temp_a4_11->unk4 = 0.0f;
                    }
                    goto block_122;
                }
            } else {
block_122:
                var_f6 = 1.0f;
            }
            if (var_s6_2 < unkspE8) {
                goto loop_124;
            }
        }
    }
    return var_f0;
}

void ConvolutionClampToZero(? **arg0, s64 arg1, s64 arg2, s64 arg3, f32 *arg4) {
    s64 sp8;
    s64 sp0;
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 *temp_a2;
    f32 *temp_a2_3;
    f32 *temp_a2_4;
    f32 *temp_a2_7;
    f32 temp_f1;
    s32 temp_a2_2;
    s32 temp_a2_5;
    s32 temp_a2_6;
    s32 temp_a2_8;
    s32 temp_a3_4;
    s32 temp_a3_5;
    s32 temp_a4_4;
    s32 temp_a4_5;
    s32 temp_a5_4;
    s32 temp_a5_5;
    s32 temp_a6_4;
    s32 temp_a7_4;
    s32 temp_s6;
    s64 temp_s5;
    u8 temp_a6_6;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a1_4;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a3_6;
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a4_6;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a5_3;
    void *temp_a5_6;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a6_3;
    void *temp_a6_5;
    void *temp_a7;
    void *temp_a7_2;
    void *temp_a7_3;
    void *temp_a7_5;
    void *temp_s2;

    temp_s2 = *(void **)0x1010;
    temp_s5 = arg0->unk10 - 1;
    temp_s6 = temp_s5 * 0xB60;
    if (temp_s2->unk11BD0 != 0) {
        sp8 = arg2;
        sp0 = arg3;
        if (temp_s2->unk7B70 & 0x80) {
            (arg0->unk14 + temp_s6)->unk24 = 1.0f;
            temp_a7 = arg0->unk14 + temp_s6;
            temp_a7->unkB8 = 1.0f;
            temp_a6 = arg0->unk14 + temp_s6;
            temp_a6->unk14C = 1.0f;
            temp_a5 = arg0->unk14 + temp_s6;
            temp_a5->unk1E0 = 1.0f;
            temp_a4 = arg0->unk14 + temp_s6;
            temp_a4->unk28 = 0.0f;
            temp_a3 = arg0->unk14 + temp_s6;
            temp_a3->unkBC = 0.0f;
            temp_a2 = arg0->unk14 + temp_s6;
            temp_a2->unk150 = 0.0f;
            temp_a1 = arg0->unk14 + temp_s6;
            temp_a1->unk1E4 = 0.0f;
            __glOdysseyProgramTexFilter(arg0->unk14 + temp_s6, temp_a1, temp_a2, temp_a3, temp_a4, temp_a5, temp_a6, temp_a7);
            temp_s2->unk16960 = (s32) (0x200000 | temp_s2->unk16960);
            temp_a2_2 = temp_s2->unk96A4 | 0x100000 | 1;
            temp_s2->unk96A4 = temp_a2_2;
            *(s32 *)0x1018 = 2;
            temp_s2->unk7BFC = (s32) (0xFFFDFFFF & temp_s2->unk7BFC);
            temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 2);
            *(void *)0x1018 = 2;
            temp_s2->unk7CD4 = (s32) (0x40000 | temp_s2->unk7CD4 | 0x4000);
            temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 0x200);
            *(void *)0x1018 = 2;
            __glOdysseyImageChainAddOpAcceptSignedDataFromHost(arg0, temp_s5, temp_a2_2, 1.469368e-39f);
            __glOdysseyImageMovePixelsCopy(arg4, (f32 *) sp0, arg1, 1, 0);
        } else {
            temp_s2->unk7BFC = (s32) (0xFFFDFFFF & temp_s2->unk7BFC);
            temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 2);
            *(void *)0x1018 = 2;
            (arg0->unk14 + temp_s6)->unk24 = 0.0f;
            temp_a7_2 = arg0->unk14 + temp_s6;
            temp_a7_2->unkB8 = 0.0f;
            temp_a6_2 = arg0->unk14 + temp_s6;
            temp_a6_2->unk14C = 0.0f;
            temp_a5_2 = arg0->unk14 + temp_s6;
            temp_a5_2->unk1E0 = 0.0f;
            temp_a4_2 = arg0->unk14 + temp_s6;
            temp_a4_2->unk28 = 0.5f;
            temp_a3_2 = arg0->unk14 + temp_s6;
            temp_a3_2->unkBC = 0.5f;
            temp_a2_3 = arg0->unk14 + temp_s6;
            temp_a2_3->unk150 = 0.5f;
            temp_a1_2 = arg0->unk14 + temp_s6;
            temp_a1_2->unk1E4 = 0.5f;
            __glOdysseyProgramTexFilter(arg0->unk14 + temp_s6, temp_a1_2, temp_a2_3, temp_a3_2, temp_a4_2, temp_a5_2, temp_a6_2, temp_a7_2, 0.0f);
            temp_s2->unk7CD4 = (s32) (0x40000 | temp_s2->unk7CD4 | 0x4000);
            temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 0x200);
            *(void *)0x1018 = 2;
            temp_s2->unk96A4 = (s32) (0xFFEFFFFF & temp_s2->unk96A4);
            temp_s2->unk16960 = (s32) (0x200000 | temp_s2->unk16960);
            *(void *)0x1018 = 2;
            __glOdysseyImageChainAddOpAcceptSignedDataFromHost(arg0, temp_s5);
            __glOdysseyImageMovePixelsTexture(arg4, (f32 *) sp0, arg1, 0);
            (arg0->unk14 + temp_s6)->unk24 = 1.0f;
            temp_a7_3 = arg0->unk14 + temp_s6;
            temp_a7_3->unkB8 = 1.0f;
            temp_a6_3 = arg0->unk14 + temp_s6;
            temp_a6_3->unk14C = 1.0f;
            temp_a5_3 = arg0->unk14 + temp_s6;
            temp_a5_3->unk1E0 = 1.0f;
            temp_a4_3 = arg0->unk14 + temp_s6;
            temp_a4_3->unk28 = 0.0f;
            temp_a3_3 = arg0->unk14 + temp_s6;
            temp_a3_3->unkBC = 0.0f;
            temp_a2_4 = arg0->unk14 + temp_s6;
            temp_a2_4->unk150 = 0.0f;
            temp_a1_3 = arg0->unk14 + temp_s6;
            temp_a1_3->unk1E4 = 0.0f;
            __glOdysseyProgramTexFilter(arg0->unk14 + temp_s6, temp_a1_3, temp_a2_4, temp_a3_3, temp_a4_3, temp_a5_3, temp_a6_3, temp_a7_3);
            temp_s2->unk7BFC = (s32) (temp_s2->unk7BFC | 0x20000);
            temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 2);
            *(void *)0x1018 = 2;
            temp_a5_4 = temp_s2->unk16960;
            temp_a7_4 = temp_s2->unk96A4;
            temp_s2->unk16960 = (s32) (0x200000 | temp_a5_4);
            temp_a6_4 = 0x40000 | (0xFFF9FFFF & temp_a7_4);
            temp_s2->unk96A4 = temp_a6_4;
            *(void *)0x1018 = 2;
            temp_a4_4 = temp_s2->unk7C34;
            temp_a3_4 = (0xFF000FFF & temp_s2->unk7C3C) | 0x1000;
            temp_a2_5 = 0xFFFF1FFF & temp_a4_4;
            temp_s2->unk7C3C = (s32) ((-0x1000 & temp_a3_4) | 1);
            temp_s2->unk7C38 = (s32) ((-0x1000 & ((0xFF000FFF & temp_s2->unk7C38) | 0x1000)) | 1);
            temp_s2->unk7C34 = (s32) ((-0x40 & ((-0x1FC1 & temp_a2_5) | 0xA00)) | 8);
            temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 1);
            *(void *)0x1018 = 2;
            __glOdysseyImageChainAddOpAcceptSignedDataFromHost(arg0, temp_s5, temp_a2_5, (bitwise f32) temp_a3_4, (bitwise f32) temp_a4_4, (? **) temp_a5_4, temp_a6_4, (bitwise f32) temp_a7_4);
            __glOdysseyImageMovePixelsTexture((f32 *) sp0, arg4, arg1, 0);
            temp_a5_5 = temp_s2->unk96A4;
            temp_s2->unk16960 = (s32) (0x200000 | temp_s2->unk16960);
            temp_s2->unk96A4 = (s32) (0xFFF9FFFF & (0xFFEFFFFF & temp_a5_5));
            *(void *)0x1018 = 2;
            temp_a4_5 = temp_s2->unk7C34;
            temp_a3_5 = (-0x1FC1 & temp_a4_5) | 0xA00;
            temp_s2->unk7C3C = (s32) (0xFFF000 | temp_s2->unk7C3C | 0xFFF);
            temp_a2_6 = 0xFFF000 | temp_s2->unk7C38 | 0xFFF;
            temp_s2->unk7C38 = temp_a2_6;
            temp_s2->unk7C34 = (s32) ((0xFFFF1FFF & ((-0x40 & temp_a3_5) | 8)) | 0xC000);
            temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 1);
            *(void *)0x1018 = 2;
            __glOdysseyImageChainAddOpAcceptSignedDataFromHost(arg0, temp_s5, temp_a2_6, (bitwise f32) temp_a3_5, (bitwise f32) temp_a4_5, (? **) temp_a5_5);
            __glOdysseyImageMovePixelsTexture(arg4, (f32 *) sp0, arg1, 0);
        }
    } else {
        sp8 = arg2;
        sp0 = arg3;
    }
    temp_f1 = M2C_ERROR(/* unknown instruction: movz.s $f1, $f2, $a6 */);
    (arg0->unk14 + temp_s6)->unk24 = temp_f1;
    temp_a7_5 = arg0->unk14 + temp_s6;
    temp_a7_5->unkB8 = temp_f1;
    temp_a6_5 = arg0->unk14 + temp_s6;
    temp_a6_5->unk14C = temp_f1;
    temp_a5_6 = arg0->unk14 + temp_s6;
    temp_a5_6->unk1E0 = temp_f1;
    temp_a4_6 = arg0->unk14 + temp_s6;
    temp_a4_6->unk28 = 0.0f;
    temp_a3_6 = arg0->unk14 + temp_s6;
    temp_a3_6->unkBC = 0.0f;
    temp_a2_7 = arg0->unk14 + temp_s6;
    temp_a2_7->unk150 = 0.0f;
    temp_a1_4 = arg0->unk14 + temp_s6;
    temp_a1_4->unk1E4 = 0.0f;
    __glOdysseyProgramTexFilter(arg0->unk14 + temp_s6, temp_a1_4, temp_a2_7, temp_a3_6, temp_a4_6, temp_a5_6, temp_a6_5, temp_a7_5);
    temp_a2_8 = temp_s2->unk96A4;
    temp_s2->unk96A4 = (s32) (0xFFEFFFFF & temp_a2_8);
    temp_s2->unk7BFC = (s32) (0xFFFDFFFF & temp_s2->unk7BFC);
    temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 2);
    *(void *)0x1018 = 2;
    temp_s2->unk7CD4 = (s32) (0x40000 | temp_s2->unk7CD4 | 0x4000);
    temp_s2->unk16960 = (s32) (temp_s2->unk16960 | 0x200);
    *(void *)0x1018 = 2;
    __glOdysseyImageChainAddOpAcceptSignedDataFromHost(arg0, temp_s5, temp_a2_8);
    temp_a6_6 = temp_s2->unk11BD0;
    if (temp_s2->unk11BD4 != 0x8150) {
        arg1->unk10 = (f32) sp8->unk10;
        arg1->unk14 = (f32) sp8->unk14;
        arg1->unk18 = (f32) sp8->unk18;
        arg1->unk1C = (f32) sp8->unk1C;
        temp_a0 = arg0->unk48;
        if (temp_s2->unk11BD0 != 0) {
            __glOdysseyImageMovePixelsCopy(temp_a0, arg4, arg1, 1, 1, sp8, (s32) temp_a6_6);
        } else {
            __glOdysseyImageMovePixelsCopy(temp_a0, (f32 *) sp0, arg1, 1, 1, sp8, (s32) temp_a6_6);
        }
    } else {
        temp_a0_2 = arg0->unk44;
        if (temp_a6_6 != 0) {
            __glOdysseyImageMovePixelsCopy(temp_a0_2, arg4, arg1, 1, 0);
        } else {
            __glOdysseyImageMovePixelsCopy(temp_a0_2, (f32 *) sp0, arg1, 1, 0);
        }
        arg1->unk10 = (f32) sp8->unk10;
        arg1->unk14 = (f32) sp8->unk14;
        arg1->unk18 = (f32) sp8->unk18;
        arg1->unk1C = (f32) sp8->unk1C;
        __glOdysseyImageMovePixelsCopy(arg0->unk48, arg0->unk44, arg1, 1, 1);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x90, 0x94, 0xe8, 0xec, 0xf0, 0xf4, 0xf8, 0xfc, 0x130, 0x134, 0x138, 0x13c, 0x140, 0x144, 0x148, 0x14c, 0x150, 0x154, 0x158, 0x15c, 0x160, 0x164, 0x168, 0x16c, 0x170, 0x174, 0x1a8, 0x1ac], gap at: 0x98. */
void AddConvolutionBorders(s64 arg0, ? **arg1, void *arg2, s64 arg3, f32 *arg4) {
    f64 sp88;
    f64 sp80;
    f64 sp78;
    f64 sp70;
    f64 sp68;
    f64 sp60;
    f64 sp58;
    f64 sp50;
    f64 sp48;
    f64 sp40;
    f64 sp38;
    f64 sp30;
    f64 sp28;
    f32 sp20;
    f32 sp1C;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    f32 *temp_a2_13;
    f32 *temp_a2_16;
    f32 *temp_a2_17;
    f32 *temp_a2_19;
    f32 *temp_a2_2;
    f32 *temp_a2_3;
    f32 temp_a0_10;
    f32 temp_a0_11;
    f32 temp_a0_13;
    f32 temp_a0_14;
    f32 temp_a0_15;
    f32 temp_a0_17;
    f32 temp_a0_2;
    f32 temp_a0_3;
    f32 temp_a0_4;
    f32 temp_a0_5;
    f32 temp_a0_7;
    f32 temp_a0_8;
    f32 temp_a1_10;
    f32 temp_a1_11;
    f32 temp_a1_12;
    f32 temp_a1_13;
    f32 temp_a1_14;
    f32 temp_a1_16;
    f32 temp_a1_17;
    f32 temp_a1_4;
    f32 temp_a1_5;
    f32 temp_a1_6;
    f32 temp_a1_7;
    f32 temp_a1_8;
    f32 temp_a1_9;
    f32 temp_a2_10;
    f32 temp_a2_11;
    f32 temp_a2_12;
    f32 temp_a2_14;
    f32 temp_a2_15;
    f32 temp_a2_4;
    f32 temp_a2_5;
    f32 temp_a2_6;
    f32 temp_a2_7;
    f32 temp_a2_8;
    f32 temp_a2_9;
    f32 temp_a3_10;
    f32 temp_a3_11;
    f32 temp_a3_12;
    f32 temp_a3_13;
    f32 temp_a3_14;
    f32 temp_a3_16;
    f32 temp_a3_17;
    f32 temp_a3_5;
    f32 temp_a3_6;
    f32 temp_a3_7;
    f32 temp_a3_8;
    f32 temp_a3_9;
    f32 temp_a5_10;
    f32 temp_a5_11;
    f32 temp_a5_12;
    f32 temp_a5_14;
    f32 temp_a5_15;
    f32 temp_a5_4;
    f32 temp_a5_5;
    f32 temp_a5_6;
    f32 temp_a5_7;
    f32 temp_a5_8;
    f32 temp_a5_9;
    f32 temp_f0;
    f32 temp_f0_10;
    f32 temp_f0_11;
    f32 temp_f0_12;
    f32 temp_f0_13;
    f32 temp_f0_14;
    f32 temp_f0_15;
    f32 temp_f0_16;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f0_7;
    f32 temp_f0_8;
    f32 temp_f0_9;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f12_4;
    f32 temp_f12_5;
    f32 temp_f12_6;
    f32 temp_f12_7;
    f32 temp_f13;
    f32 temp_f13_2;
    f32 temp_f13_3;
    f32 temp_f13_4;
    f32 temp_f13_5;
    f32 temp_f13_6;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f15;
    f32 temp_f15_2;
    f32 temp_f16;
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f22;
    f32 temp_f22_2;
    f32 temp_f23;
    f32 temp_f24;
    f32 temp_f25;
    f32 temp_f26;
    f32 temp_f26_10;
    f32 temp_f26_11;
    f32 temp_f26_12;
    f32 temp_f26_13;
    f32 temp_f26_14;
    f32 temp_f26_15;
    f32 temp_f26_16;
    f32 temp_f26_17;
    f32 temp_f26_18;
    f32 temp_f26_19;
    f32 temp_f26_2;
    f32 temp_f26_3;
    f32 temp_f26_4;
    f32 temp_f26_5;
    f32 temp_f26_6;
    f32 temp_f26_7;
    f32 temp_f26_8;
    f32 temp_f26_9;
    f32 temp_f27;
    f32 temp_f27_2;
    f32 temp_f27_3;
    f32 temp_f28;
    f32 temp_f28_2;
    f32 temp_f29;
    f32 temp_f29_2;
    f32 temp_f29_3;
    f32 temp_f29_4;
    f32 temp_f29_5;
    f32 temp_f29_6;
    f32 temp_f29_7;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f30;
    f32 temp_f30_2;
    f32 temp_f30_3;
    f32 temp_f30_4;
    f32 temp_f30_5;
    f32 temp_f31;
    f32 temp_f3;
    f32 var_f26;
    f32 var_f28;
    f32 var_f28_2;
    f32 var_f28_3;
    f32 var_f30;
    f32 var_f30_2;
    f32 var_f30_3;
    f32 var_f30_4;
    f32 var_f30_5;
    f32 var_f30_6;
    f32 var_f4;
    f32 var_f5;
    f64 temp_f12;
    s32 temp_a1_18;
    s32 temp_a1_2;
    s32 temp_a2_18;
    s32 temp_a3;
    s32 temp_a3_20;
    s32 temp_a4;
    s32 temp_a4_7;
    s32 temp_s8;
    s64 temp_s7;
    u8 temp_a0;
    u8 temp_a0_12;
    u8 temp_a0_16;
    u8 temp_a0_18;
    u8 temp_a0_6;
    u8 temp_a0_9;
    u8 temp_a1_20;
    u8 temp_a3_4;
    u8 temp_at;
    void *temp_a1;
    void *temp_a1_15;
    void *temp_a1_19;
    void *temp_a1_21;
    void *temp_a1_22;
    void *temp_a1_3;
    void *temp_a2;
    void *temp_a3_15;
    void *temp_a3_18;
    void *temp_a3_19;
    void *temp_a3_21;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a4_4;
    void *temp_a4_5;
    void *temp_a4_6;
    void *temp_a4_8;
    void *temp_a5;
    void *temp_a5_13;
    void *temp_a5_16;
    void *temp_a5_17;
    void *temp_a5_18;
    void *temp_a5_2;
    void *temp_a5_3;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a6_3;
    void *temp_a6_4;
    void *temp_a6_5;
    void *temp_a6_6;
    void *temp_a6_7;
    void *temp_a7;
    void *temp_a7_2;
    void *temp_a7_3;
    void *temp_a7_4;
    void *temp_a7_5;
    void *temp_a7_6;
    void *temp_a7_7;
    void *temp_s3;
    void *temp_t2;
    void *temp_t8;

    unksp188 = arg3;
    temp_s3 = *(void **)0x1010;
    temp_t8 = temp_s3->unk2FC;
    temp_a4 = temp_t8->unk44;
    temp_a3 = temp_t8->unk40;
    temp_s7 = arg1->unk10 - 1;
    temp_s3->unk7BFC = (s32) (temp_s3->unk7BFC & ~0x20000);
    temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 2);
    *(s32 *)0x1018 = 2;
    temp_s8 = temp_s7 * 0xB60;
    (arg1->unk14 + temp_s8)->unk24 = 0.0f;
    (arg1->unk14 + temp_s8)->unkB8 = 0.0f;
    (arg1->unk14 + temp_s8)->unk14C = 0.0f;
    (arg1->unk14 + temp_s8)->unk1E0 = 0.0f;
    temp_a7 = arg1->unk14 + temp_s8;
    temp_a7->unk28 = 0.0f;
    unksp180 = arg0;
    temp_a6 = arg1->unk14 + temp_s8;
    temp_a6->unkBC = 0.0f;
    temp_a5 = arg1->unk14 + temp_s8;
    temp_a5->unk150 = 0.0f;
    unkspA0 = (f64) temp_t8->unk30;
    unkspA8 = (f64) temp_t8->unk34;
    temp_a2 = arg1->unk14 + temp_s8;
    temp_a2->unk1E4 = 0.0f;
    unksp90 = (f64) temp_t8->unk38;
    var_f28 = (f32) temp_a4;
    unksp98 = (f64) temp_t8->unk3C;
    temp_f22 = (f32) temp_a3;
    __glOdysseyProgramTexFilter(arg1->unk14 + temp_s8, temp_a2, (f32 *) temp_a3, (void *) temp_a4, temp_a5, temp_a6, temp_a7);
    temp_s3->unk7CD4 = (s32) (0x40000 | temp_s3->unk7CD4 | 0x4000);
    temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 0x200);
    *(void *)0x1018 = 2;
    temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
    temp_s3->unk96A4 = (s32) (0xFFEFFFFF & temp_s3->unk96A4);
    *(void *)0x1018 = 2;
    __glOdysseyImageChainAddOpAcceptSignedDataFromHost(arg1, temp_s7);
    sp0 = arg2->unk0;
    sp4 = arg2->unk4;
    sp8 = arg2->unk8;
    spC = arg2->unkC;
    sp10 = arg2->unk10;
    sp14 = arg2->unk14;
    sp18 = arg2->unk18;
    sp1C = arg2->unk1C;
    sp20 = arg2->unk20;
    temp_f3 = sp8 + temp_f22;
    sp8 = temp_f3;
    temp_f2 = spC + var_f28;
    spC = temp_f2;
    sp10 = sp0;
    sp14 = sp4;
    sp18 = temp_f3;
    sp1C = temp_f2;
    __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
    (arg1->unk14 + temp_s8)->unk24 = 1.0f;
    temp_a7_2 = arg1->unk14 + temp_s8;
    temp_a7_2->unkB8 = 1.0f;
    temp_a6_2 = arg1->unk14 + temp_s8;
    temp_a6_2->unk14C = 1.0f;
    temp_a5_2 = arg1->unk14 + temp_s8;
    temp_a5_2->unk1E0 = 1.0f;
    temp_a4_2 = arg1->unk14 + temp_s8;
    temp_a4_2->unk28 = 0.0f;
    temp_a3_2 = arg1->unk14 + temp_s8;
    temp_a3_2->unkBC = 0.0f;
    temp_a2_2 = arg1->unk14 + temp_s8;
    temp_a2_2->unk150 = 0.0f;
    temp_a1 = arg1->unk14 + temp_s8;
    temp_a1->unk1E4 = 0.0f;
    __glOdysseyProgramTexFilter(arg1->unk14 + temp_s8, temp_a1, temp_a2_2, temp_a3_2, temp_a4_2, temp_a5_2, temp_a6_2, temp_a7_2);
    __glOdysseyImageChainAddOpAcceptSignedDataFromHost(arg1, temp_s7);
    if (temp_s3->unk2FC->unk0 == 0x8010) {
        arg2->unk23 = 0U;
        arg2->unk22 = 0U;
    }
    temp_a1_2 = temp_s3->unk11BD4;
    switch (temp_a1_2) {                            /* irregular */
    default:
        sp0 = arg2->unk0;
        sp4 = arg2->unk4;
        sp8 = arg2->unk8;
        spC = arg2->unkC;
        sp10 = arg2->unk10;
        sp14 = arg2->unk14;
        sp18 = arg2->unk18;
        sp1C = arg2->unk1C;
        sp20 = arg2->unk20;
        sp10 = sp0;
        sp14 = sp4;
        sp18 = sp8;
        sp1C = spC;
        __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
        unksp178 = 0;
        break;
    case 0x8150:
        unksp178 = 1;
block_7:
        sp0 = arg2->unk0;
        sp4 = arg2->unk4;
        sp8 = arg2->unk8;
        spC = arg2->unkC;
        sp10 = arg2->unk10;
        sp14 = arg2->unk14;
        sp18 = arg2->unk18;
        sp1C = arg2->unk1C;
        sp20 = arg2->unk20;
        sp1C = spC;
        sp18 = sp8;
        sp14 = sp4;
        sp10 = sp0;
        temp_a0 = (bitwise u8) arg2->unk20;
        sp80 = (bitwise f64) sp0;
        sp88 = (bitwise f64) sp4;
        unkspB8 = (bitwise f64) sp8;
        if (temp_a0 != 0) {
            sp10 = floorf((s64) temp_a0, (f32) ((f64) temp_f22 * 0.5)) + (bitwise f32) sp80;
            var_f28 = second half of f64;
            sp18 = floorf(second half of f64) + (bitwise f32) unkspB8;
        }
        if (arg2->unk23 != 0) {
            sp14 = floorf((bitwise s64) (f32) ((f64) var_f28 * 0.5)) + (bitwise f32) sp88;
            sp1C = floorf(second half of f64) + spC;
        }
        (arg1->unk14 + temp_s8)->unk24 = 1.0f;
        temp_a7_3 = arg1->unk14 + temp_s8;
        temp_a7_3->unkB8 = 1.0f;
        temp_a6_3 = arg1->unk14 + temp_s8;
        temp_a6_3->unk14C = 1.0f;
        temp_a5_3 = arg1->unk14 + temp_s8;
        temp_a5_3->unk1E0 = 1.0f;
        temp_a4_3 = arg1->unk14 + temp_s8;
        temp_a4_3->unk28 = 0.0f;
        temp_a3_3 = arg1->unk14 + temp_s8;
        temp_a3_3->unkBC = 0.0f;
        temp_a2_3 = arg1->unk14 + temp_s8;
        temp_a2_3->unk150 = 0.0f;
        temp_a1_3 = arg1->unk14 + temp_s8;
        temp_a1_3->unk1E4 = 0.0f;
        __glOdysseyProgramTexFilter(arg1->unk14 + temp_s8, temp_a1_3, temp_a2_3, temp_a3_3, temp_a4_3, temp_a5_3, temp_a6_3, temp_a7_3);
        temp_s3->unk7CD4 = (s32) (0x40000 | temp_s3->unk7CD4 | 0x4000);
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 0x200);
        *(void *)0x1018 = 2;
        temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
        temp_s3->unk96A4 = (s32) (0xFFEFFFFF & temp_s3->unk96A4);
        *(void *)0x1018 = 2;
        __glOdysseyImageChainAddOpAcceptSignedDataFromHost(arg1, temp_s7);
        __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
        break;
    case 0x8152:
        temp_a3_4 = (bitwise u8) arg2->unk20;
        if (temp_a3_4 != 0) {
            if (arg2->unk23 != 0) {
                sp0 = arg2->unk0;
                sp4 = arg2->unk4;
                sp8 = arg2->unk8;
                spC = arg2->unkC;
                sp10 = arg2->unk10;
                sp14 = arg2->unk14;
                sp18 = arg2->unk18;
                sp1C = arg2->unk1C;
                sp20 = arg2->unk20;
                temp_f26 = (f32) ((f64) temp_f22 * 0.5);
                sp8 = 0.0f;
                temp_f0 = floorf((bitwise s64) temp_f26);
                temp_f30 = (f32) ((f64) var_f28 * 0.5);
                spC = 0.0f;
                sp0 = temp_f0;
                temp_f0_2 = floorf((bitwise s64) temp_f30);
                sp10 = 0.0f;
                sp4 = temp_f0_2;
                temp_f0_3 = floorf((bitwise s64) temp_f26);
                sp14 = 0.0f;
                sp18 = temp_f0_3;
                sp1C = floorf((bitwise s64) temp_f30);
                __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
                unksp128 = 1;
                if ((bitwise u8) arg2->unk20 != 0) {
                    goto block_49;
                }
                goto block_116;
            }
            unksp128 = 0;
            goto block_115;
        }
        unksp128 = 0;
block_115:
        if (temp_a3_4 == 0) {
block_116:
            unksp120 = 0;
        } else {
block_49:
            if (arg2->unk22 != 0) {
                sp0 = arg2->unk0;
                sp4 = arg2->unk4;
                sp8 = arg2->unk8;
                spC = arg2->unkC;
                temp_a5_4 = arg2->unk10;
                sp10 = temp_a5_4;
                temp_a3_5 = arg2->unk14;
                sp14 = temp_a3_5;
                temp_a2_4 = arg2->unk18;
                sp18 = temp_a2_4;
                temp_a1_4 = arg2->unk1C;
                sp1C = temp_a1_4;
                temp_a0_2 = arg2->unk20;
                sp20 = temp_a0_2;
                sp78 = (bitwise f64) spC;
                sp8 = 0.0f;
                sp1C = spC;
                sp18 = second half of f64;
                temp_f26_2 = (f32) ((f64) temp_f22 * 0.5);
                sp14 = sp4;
                sp10 = sp0;
                sp0 = floorf((bitwise s64) temp_a0_2, temp_a1_4, temp_a2_4, temp_a3_5, sp, temp_a5_4, temp_f26_2);
                sp4 = (bitwise f32) sp78;
                temp_f0_4 = floorf((bitwise s64) (f32) (second half of f64));
                sp10 = 0.0f;
                spC = (bitwise f32) sp78 - temp_f0_4;
                sp18 = floorf((bitwise s64) temp_f26_2);
                sp14 = (bitwise f32) sp78;
                sp1C = floorf(second half of f64) + (bitwise f32) sp78;
                __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
                unksp120 = 1;
            } else {
                unksp120 = 0;
            }
        }
        if (arg2->unk21 != 0) {
            if (arg2->unk23 != 0) {
                temp_a5_5 = arg2->unk0;
                sp0 = temp_a5_5;
                temp_a3_6 = arg2->unk4;
                sp4 = temp_a3_6;
                temp_a2_5 = arg2->unk8;
                sp8 = temp_a2_5;
                temp_a1_5 = arg2->unkC;
                spC = temp_a1_5;
                temp_a0_3 = arg2->unk10;
                sp10 = temp_a0_3;
                sp14 = arg2->unk14;
                sp18 = arg2->unk18;
                sp1C = arg2->unk1C;
                sp20 = arg2->unk20;
                temp_f1 = sp0;
                sp70 = (bitwise f64) sp8;
                sp0 = second half of f64;
                sp1C = spC;
                sp18 = second half of f64;
                temp_f26_3 = (f32) ((f64) temp_f22 * 0.5);
                sp14 = sp4;
                sp10 = temp_f1;
                temp_f0_5 = floorf((bitwise s64) temp_a0_3, temp_a1_5, temp_a2_5, temp_a3_6, sp, temp_a5_5, temp_f26_3);
                spC = 0.0f;
                sp8 = (second half of f64) - temp_f0_5;
                sp4 = floorf((bitwise s64) (f32) ((second half of f64) * 0.5));
                sp10 = (bitwise f32) sp70;
                floorf((bitwise s64) temp_f26_3);
                sp14 = 0.0f;
                sp18 = (second half of f64) + (bitwise f32) sp70;
                spC = floorf(second half of f64);
                __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
                unksp118 = 1;
            } else {
                unksp118 = 0;
            }
        } else {
            unksp118 = 0;
        }
        if ((arg2->unk21 != 0) && (arg2->unk22 != 0)) {
            sp0 = arg2->unk0;
            sp4 = arg2->unk4;
            sp8 = arg2->unk8;
            spC = arg2->unkC;
            sp10 = arg2->unk10;
            sp14 = arg2->unk14;
            sp18 = arg2->unk18;
            sp1C = arg2->unk1C;
            sp20 = arg2->unk20;
            temp_f2_2 = sp0;
            sp68 = (bitwise f64) sp8;
            sp60 = (bitwise f64) spC;
            sp0 = second half of f64;
            sp1C = spC;
            sp18 = second half of f64;
            temp_f26_4 = (f32) ((f64) temp_f22 * 0.5);
            sp14 = sp4;
            sp10 = temp_f2_2;
            floorf((bitwise s64) temp_f26_4);
            sp4 = (bitwise f32) sp60;
            sp8 = (second half of f64) - (second half of f64);
            floorf((bitwise s64) (f32) ((second half of f64) * 0.5));
            sp10 = (bitwise f32) sp68;
            spC = (bitwise f32) sp60 - (second half of f64);
            temp_f0_6 = floorf((bitwise s64) temp_f26_4);
            sp14 = (bitwise f32) sp60;
            sp18 = temp_f0_6 + (bitwise f32) sp68;
            sp1C = floorf(second half of f64) + (bitwise f32) sp60;
            __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
        }
        if ((bitwise u8) arg2->unk20 != 0) {
            sp0 = arg2->unk0;
            sp4 = arg2->unk4;
            sp8 = arg2->unk8;
            spC = arg2->unkC;
            temp_a5_6 = arg2->unk10;
            sp10 = temp_a5_6;
            temp_a3_7 = arg2->unk14;
            sp14 = temp_a3_7;
            temp_a2_6 = arg2->unk18;
            sp18 = temp_a2_6;
            temp_a1_6 = arg2->unk1C;
            sp1C = temp_a1_6;
            temp_a0_4 = arg2->unk20;
            sp20 = temp_a0_4;
            sp8 = 0.0f;
            sp1C = spC;
            sp18 = second half of f64;
            temp_f26_5 = (f32) ((f64) temp_f22 * 0.5);
            sp14 = sp4;
            sp10 = sp0;
            temp_f0_7 = floorf((bitwise s64) temp_a0_4, temp_a1_6, temp_a2_6, temp_a3_7, sp, temp_a5_6, temp_f26_5);
            sp10 = 0.0f;
            sp4 = 0.0f;
            sp0 = temp_f0_7;
            sp18 = floorf((bitwise s64) temp_f26_5);
            if (unksp128 != 0) {
                temp_f26_6 = (f32) ((f64) var_f28 * 0.5);
                sp14 = floorf((bitwise s64) temp_f26_6);
                sp1C = floorf((bitwise s64) temp_f26_6) + spC;
            }
            __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
        }
        if (arg2->unk21 != 0) {
            temp_a5_7 = arg2->unk0;
            sp0 = temp_a5_7;
            temp_a3_8 = arg2->unk4;
            sp4 = temp_a3_8;
            temp_a2_7 = arg2->unk8;
            sp8 = temp_a2_7;
            temp_a1_7 = arg2->unkC;
            spC = temp_a1_7;
            temp_a0_5 = arg2->unk10;
            sp10 = temp_a0_5;
            sp14 = arg2->unk14;
            sp18 = arg2->unk18;
            sp1C = arg2->unk1C;
            sp20 = arg2->unk20;
            temp_f29 = sp0;
            sp58 = (bitwise f64) sp8;
            sp0 = second half of f64;
            sp1C = spC;
            sp18 = second half of f64;
            sp14 = sp4;
            sp10 = temp_f29;
            temp_f0_8 = floorf((bitwise s64) temp_a0_5, temp_a1_7, temp_a2_7, temp_a3_8, sp, temp_a5_7, (f32) ((f64) temp_f22 * 0.5));
            sp4 = 0.0f;
            sp8 -= temp_f0_8;
            var_f28 = second half of f64;
            temp_f29_2 = floorf(second half of f64) + (bitwise f32) sp58;
            sp18 = (bitwise f32) sp58 + temp_f22;
            sp10 = temp_f29_2;
            if (unksp118 != 0) {
                temp_f26_7 = (f32) ((f64) (second half of f64) * 0.5);
                sp14 = floorf((bitwise s64) temp_f26_7);
                sp1C = floorf((bitwise s64) temp_f26_7) + spC;
            }
            __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
        }
        if (arg2->unk23 != 0) {
            sp0 = arg2->unk0;
            sp4 = arg2->unk4;
            sp8 = arg2->unk8;
            spC = arg2->unkC;
            sp10 = arg2->unk10;
            sp14 = arg2->unk14;
            sp18 = arg2->unk18;
            sp1C = arg2->unk1C;
            sp20 = arg2->unk20;
            temp_f29_3 = sp0;
            spC = 0.0f;
            sp0 = 0.0f;
            unkspB8 = (bitwise f64) sp8;
            sp18 = sp8;
            sp1C = second half of f64;
            temp_f30_2 = (f32) ((f64) var_f28 * 0.5);
            sp10 = temp_f29_3;
            sp14 = sp4;
            sp4 = floorf((bitwise s64) temp_f30_2);
            if (unksp128 != 0) {
                temp_f26_8 = (f32) ((f64) temp_f22 * 0.5);
                sp10 = floorf((bitwise s64) temp_f26_8);
                sp18 = floorf((bitwise s64) temp_f26_8) + (bitwise f32) unkspB8;
            }
            sp14 = 0.0f;
            sp1C = floorf((bitwise s64) temp_f30_2);
            __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
        }
        temp_a0_6 = arg2->unk22;
        if (temp_a0_6 != 0) {
            sp0 = arg2->unk0;
            sp4 = arg2->unk4;
            sp8 = arg2->unk8;
            spC = arg2->unkC;
            sp10 = arg2->unk10;
            temp_a5_8 = arg2->unk14;
            sp14 = temp_a5_8;
            temp_a3_9 = arg2->unk18;
            sp18 = temp_a3_9;
            temp_a2_8 = arg2->unk1C;
            sp1C = temp_a2_8;
            temp_a1_8 = arg2->unk20;
            sp20 = temp_a1_8;
            temp_f31 = sp4;
            temp_f30_3 = spC;
            temp_f29_4 = sp0;
            sp4 = temp_f30_3;
            sp0 = 0.0f;
            sp1C = temp_f30_3;
            unkspB8 = second half of f64;
            sp18 = second half of f64;
            temp_f26_9 = (f32) ((f64) var_f28 * 0.5);
            sp14 = temp_f31;
            sp10 = temp_f29_4;
            spC = temp_f30_3 - floorf((s64) temp_a0_6, temp_a1_8, temp_a2_8, temp_a3_9, sp, temp_a5_8, temp_f26_9);
            if (unksp120 != 0) {
                sp10 = floorf((bitwise s64) temp_f26_9);
                sp18 = floorf((bitwise s64) (f32) ((f64) temp_f22 * 0.5), second half of f64) + (bitwise f32) unkspB8;
            }
            sp14 = floorf((bitwise s64) temp_f26_9) + temp_f30_3;
            sp1C = temp_f30_3 + var_f28;
            __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
        }
        unksp178 = 1;
        goto block_7;
    case 0x8153:
        temp_at = (bitwise u8) arg2->unk20;
        if (temp_at != 0) {
            if (arg2->unk23 != 0) {
                sp0 = arg2->unk0;
                sp4 = arg2->unk4;
                sp8 = arg2->unk8;
                temp_a5_9 = arg2->unkC;
                spC = temp_a5_9;
                temp_a3_10 = arg2->unk10;
                sp10 = temp_a3_10;
                temp_a2_9 = arg2->unk14;
                sp14 = temp_a2_9;
                temp_a1_9 = arg2->unk18;
                sp18 = temp_a1_9;
                temp_a0_7 = arg2->unk1C;
                sp1C = temp_a0_7;
                sp20 = arg2->unk20;
                sp10 = 0.0f;
                sp4 = 0.0f;
                sp0 = 0.0f;
                spC = second half of f64;
                sp8 = second half of f64;
                temp_f0_9 = floorf((bitwise s64) temp_a0_7, temp_a1_9, temp_a2_9, temp_a3_10, sp, temp_a5_9, (f32) ((f64) temp_f22 * 0.5), second half of f64);
                sp14 = 0.0f;
                sp18 = temp_f0_9;
                sp1C = floorf((bitwise s64) (f32) ((f64) var_f28 * 0.5), second half of f64);
                __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
                if ((bitwise u8) arg2->unk20 != 0) {
                    goto block_77;
                }
            } else {
                goto block_148;
            }
        } else {
block_148:
            if (temp_at == 0) {

            } else {
block_77:
                if (arg2->unk22 != 0) {
                    temp_a3_11 = arg2->unk0;
                    sp0 = temp_a3_11;
                    temp_a1_10 = arg2->unk4;
                    sp4 = temp_a1_10;
                    temp_a0_8 = arg2->unk8;
                    sp8 = temp_a0_8;
                    spC = arg2->unkC;
                    sp10 = arg2->unk10;
                    sp14 = arg2->unk14;
                    sp18 = arg2->unk18;
                    sp1C = arg2->unk1C;
                    sp20 = arg2->unk20;
                    sp10 = 0.0f;
                    sp0 = 0.0f;
                    temp_f14 = sp8;
                    sp50 = (bitwise f64) spC;
                    sp8 = 1.0f;
                    sp18 = temp_f14;
                    temp_f15 = sp4;
                    sp1C = second half of f64;
                    sp14 = temp_f15;
                    temp_f13 = (second half of f64) + -1.0f;
                    sp4 = temp_f13;
                    temp_f26_10 = (f32) ((f64) var_f28 * 0.5);
                    sp18 = floorf((bitwise s64) temp_a0_8, temp_a1_10, (bitwise f32) (bitwise u8) arg2->unk20, temp_a3_11, sp, (f32) ((f64) temp_f22 * 0.5), temp_f13, -1.0f, temp_f15);
                    sp14 = (bitwise f32) sp50;
                    sp1C = floorf((bitwise s64) temp_f26_10) + (bitwise f32) sp50;
                    if (arg2->unk23 != 0) {
                        sp14 = floorf((bitwise s64) temp_f26_10) + (bitwise f32) sp50;
                        sp1C = floorf((bitwise s64) temp_f26_10) + (second half of f64);
                    }
                    __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
                }
            }
        }
        if (arg2->unk21 != 0) {
            if (arg2->unk23 != 0) {
                sp0 = arg2->unk0;
                sp4 = arg2->unk4;
                sp8 = arg2->unk8;
                spC = arg2->unkC;
                sp10 = arg2->unk10;
                sp14 = arg2->unk14;
                sp18 = arg2->unk18;
                sp1C = arg2->unk1C;
                sp20 = arg2->unk20;
                temp_f2_3 = sp4;
                sp10 = sp8;
                spC = 1.0f;
                sp4 = 0.0f;
                sp1C = second half of f64;
                sp18 = sp8;
                temp_f26_11 = (f32) ((f64) temp_f22 * 0.5);
                sp14 = temp_f2_3;
                sp0 = sp8 + -1.0f;
                temp_f0_10 = floorf((bitwise s64) temp_f26_11);
                sp14 = 0.0f;
                unkspB8 = second half of f64;
                sp18 = (bitwise f32) (second half of f64);
                sp1C = floorf((bitwise s64) (f32) ((f64) var_f28 * 0.5), (bitwise f32) (second half of f64));
                if ((bitwise u8) arg2->unk20 != 0) {
                    temp_f13_2 = floorf((bitwise s64) temp_f26_11) + sp8;
                    sp10 = temp_f13_2;
                    sp18 = floorf((bitwise s64) temp_f26_11, temp_f13_2) + (bitwise f32) unkspB8;
                }
                __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
            }
            if (arg2->unk21 != 0) {
                temp_a0_9 = arg2->unk22;
                if (temp_a0_9 != 0) {
                    sp0 = arg2->unk0;
                    sp4 = arg2->unk4;
                    sp8 = arg2->unk8;
                    spC = arg2->unkC;
                    sp10 = arg2->unk10;
                    sp14 = arg2->unk14;
                    temp_a5_10 = arg2->unk18;
                    sp18 = temp_a5_10;
                    temp_a3_12 = arg2->unk1C;
                    sp1C = temp_a3_12;
                    temp_a1_11 = arg2->unk20;
                    sp20 = temp_a1_11;
                    sp10 = sp8;
                    sp18 = sp8;
                    sp38 = (bitwise f64) spC;
                    sp1C = spC;
                    sp14 = second half of f64;
                    temp_f26_12 = (f32) ((f64) temp_f22 * 0.5);
                    sp4 = spC + -1.0f;
                    sp0 = sp8 + -1.0f;
                    temp_f0_11 = floorf((s64) temp_a0_9, temp_a1_11, (bitwise f32) arg2->unk21, temp_a3_12, sp, temp_a5_10, temp_f26_12);
                    sp30 = (bitwise f64) sp8;
                    temp_f27 = temp_f0_11 + sp8;
                    unkspB8 = (bitwise f64) temp_f27;
                    temp_f12 = (f64) var_f28;
                    var_f28 = second half of f64;
                    sp18 = temp_f27;
                    sp14 = (bitwise f32) sp38;
                    temp_f12_2 = (f32) (temp_f12 * 0.5);
                    unkspB0 = (bitwise f64) temp_f12_2;
                    var_f30 = floorf((bitwise s64) temp_f12_2, second half of f64) + (bitwise f32) sp38;
                    sp1C = var_f30;
                    if ((bitwise u8) arg2->unk20 != 0) {
                        var_f30 = second half of f64;
                        sp10 = floorf((bitwise s64) temp_f26_12) + (bitwise f32) sp30;
                        floorf((bitwise s64) temp_f26_12);
                        sp18 = (second half of f64) + (bitwise f32) unkspB8;
                    }
                    if (arg2->unk23 != 0) {
                        sp14 = floorf(unkspB0, second half of f64) + (bitwise f32) sp38;
                        sp1C = floorf(unkspB0, second half of f64) + var_f30;
                    }
                    __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
                }
            }
        }
        if ((bitwise u8) arg2->unk20 != 0) {
            sp0 = arg2->unk0;
            sp4 = arg2->unk4;
            temp_a5_11 = arg2->unk8;
            sp8 = temp_a5_11;
            temp_a3_13 = arg2->unkC;
            spC = temp_a3_13;
            temp_a2_10 = arg2->unk10;
            sp10 = temp_a2_10;
            temp_a1_12 = arg2->unk14;
            sp14 = temp_a1_12;
            temp_a0_10 = arg2->unk18;
            sp18 = temp_a0_10;
            sp1C = arg2->unk1C;
            sp20 = arg2->unk20;
            sp10 = 0.0f;
            sp0 = 0.0f;
            temp_f14_2 = sp8;
            sp4 = 0.0f;
            sp8 = 1.0f;
            sp1C = spC;
            sp18 = temp_f14_2;
            sp14 = second half of f64;
            sp18 = floorf((bitwise s64) temp_a0_10, temp_a1_12, temp_a2_10, temp_a3_13, sp, temp_a5_11, (f32) ((f64) temp_f22 * 0.5), second half of f64, temp_f14_2, 1.0f);
            if (arg2->unk23 != 0) {
                temp_f12_3 = (f32) ((f64) var_f28 * 0.5);
                unkspB0 = (bitwise f64) temp_f12_3;
                sp14 = floorf((bitwise s64) temp_f12_3, second half of f64);
                sp1C = floorf((bitwise s64) temp_f12_3, second half of f64) + spC;
            }
            __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
        }
        if (arg2->unk21 != 0) {
            temp_a2_11 = arg2->unk0;
            sp0 = temp_a2_11;
            temp_a1_13 = arg2->unk4;
            sp4 = temp_a1_13;
            temp_a0_11 = arg2->unk8;
            sp8 = temp_a0_11;
            spC = arg2->unkC;
            sp10 = arg2->unk10;
            sp14 = arg2->unk14;
            sp18 = arg2->unk18;
            sp1C = arg2->unk1C;
            sp20 = arg2->unk20;
            temp_f16 = sp4;
            var_f30_2 = spC;
            sp4 = 0.0f;
            sp1C = var_f30_2;
            sp14 = temp_f16;
            sp40 = (bitwise f64) sp8;
            sp10 = sp8;
            sp18 = sp8;
            sp0 = sp8 + -1.0f;
            temp_f27_2 = floorf((bitwise s64) temp_a0_11, temp_a1_13, temp_a2_11, (f32) ((f64) temp_f22 * 0.5)) + (bitwise f32) sp40;
            sp18 = temp_f27_2;
            unkspB8 = (bitwise f64) temp_f27_2;
            if ((bitwise u8) arg2->unk20 != 0) {
                var_f28 = second half of f64;
                sp10 = floorf(second half of f64) + (bitwise f32) sp40;
                var_f30_2 = second half of f64;
                sp18 = floorf(second half of f64) + (bitwise f32) unkspB8;
            }
            if (arg2->unk23 != 0) {
                temp_f12_4 = (f32) ((f64) var_f28 * 0.5);
                unkspB0 = (bitwise f64) temp_f12_4;
                sp14 = floorf((bitwise s64) temp_f12_4, second half of f64);
                sp1C = floorf((bitwise s64) temp_f12_4, second half of f64) + var_f30_2;
            }
            __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
        }
        if (arg2->unk23 != 0) {
            sp0 = arg2->unk0;
            sp4 = arg2->unk4;
            sp8 = arg2->unk8;
            spC = arg2->unkC;
            sp10 = arg2->unk10;
            sp14 = arg2->unk14;
            sp18 = arg2->unk18;
            sp1C = arg2->unk1C;
            sp20 = arg2->unk20;
            sp14 = 0.0f;
            sp4 = 0.0f;
            temp_f15_2 = spC;
            spC = 1.0f;
            sp0 = 0.0f;
            unkspB8 = (bitwise f64) sp8;
            sp1C = temp_f15_2;
            sp18 = sp8;
            sp10 = second half of f64;
            sp1C = floorf((bitwise s64) (f32) ((f64) var_f28 * 0.5), second half of f64, sp8, temp_f15_2, (void *)0x3F800000);
            if ((bitwise u8) arg2->unk20 != 0) {
                temp_f26_13 = (f32) ((f64) temp_f22 * 0.5);
                sp10 = floorf((bitwise s64) temp_f26_13);
                sp18 = floorf((bitwise s64) temp_f26_13) + (bitwise f32) unkspB8;
            }
            __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
        }
        temp_a0_12 = arg2->unk22;
        if (temp_a0_12 != 0) {
            sp0 = arg2->unk0;
            sp4 = arg2->unk4;
            sp8 = arg2->unk8;
            spC = arg2->unkC;
            sp10 = arg2->unk10;
            temp_a5_12 = arg2->unk14;
            sp14 = temp_a5_12;
            temp_a3_14 = arg2->unk18;
            sp18 = temp_a3_14;
            temp_a2_12 = arg2->unk1C;
            sp1C = temp_a2_12;
            temp_a1_14 = arg2->unk20;
            sp20 = temp_a1_14;
            temp_f0_12 = sp0;
            sp0 = 0.0f;
            unkspB8 = (bitwise f64) sp8;
            sp18 = sp8;
            sp10 = temp_f0_12;
            sp48 = (bitwise f64) spC;
            sp14 = spC;
            temp_f26_14 = (f32) ((f64) var_f28 * 0.5);
            sp1C = spC;
            sp4 = spC + -1.0f;
            temp_f30_4 = floorf((s64) temp_a0_12, temp_a1_14, temp_a2_12, temp_a3_14, sp, temp_a5_12, temp_f26_14) + (bitwise f32) sp48;
            sp1C = temp_f30_4;
            if ((bitwise u8) arg2->unk20 != 0) {
                unkspB0 = (bitwise f64) temp_f26_14;
                temp_f26_15 = (f32) ((f64) temp_f22 * 0.5);
                sp10 = floorf((bitwise s64) temp_f26_15);
                sp18 = floorf((bitwise s64) temp_f26_15) + (second half of f64);
            }
            if (arg2->unk23 != 0) {
                var_f28 = second half of f64;
                sp14 = floorf((bitwise s64) temp_f26_14) + (bitwise f32) sp48;
                sp1C = floorf((bitwise s64) temp_f26_14) + temp_f30_4;
            }
            __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
        }
        unksp178 = 1;
        goto block_7;
    case 0x8151:
        (arg1->unk14 + temp_s8)->unk24 = 0.0f;
        temp_a7_4 = arg1->unk14 + temp_s8;
        temp_a7_4->unkB8 = 0.0f;
        temp_a6_4 = arg1->unk14 + temp_s8;
        temp_a6_4->unk14C = 0.0f;
        temp_a5_13 = arg1->unk14 + temp_s8;
        temp_a5_13->unk1E0 = 0.0f;
        temp_a4_4 = arg1->unk14 + temp_s8;
        temp_a4_4->unk28 = (f32) unkspA0;
        temp_a3_15 = arg1->unk14 + temp_s8;
        temp_a3_15->unkBC = (f32) unkspA8;
        temp_a2_13 = arg1->unk14 + temp_s8;
        temp_a2_13->unk150 = (f32) unksp90;
        temp_a1_15 = arg1->unk14 + temp_s8;
        temp_a1_15->unk1E4 = (f32) unksp98;
        __glOdysseyProgramTexFilter(arg1->unk14 + temp_s8, temp_a1_15, temp_a2_13, temp_a3_15, temp_a4_4, temp_a5_13, temp_a6_4, temp_a7_4);
        temp_s3->unk7CD4 = (s32) (0x40000 | temp_s3->unk7CD4 | 0x4000);
        temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 0x200);
        *(void *)0x1018 = 2;
        temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
        temp_s3->unk96A4 = (s32) (0xFFEFFFFF & temp_s3->unk96A4);
        *(void *)0x1018 = 2;
        __glOdysseyImageChainAddOpAcceptSignedDataFromHost(arg1, temp_s7);
        if ((bitwise u8) arg2->unk20 != 0) {
            sp0 = arg2->unk0;
            sp4 = arg2->unk4;
            sp8 = arg2->unk8;
            temp_a5_14 = arg2->unkC;
            spC = temp_a5_14;
            temp_a3_16 = arg2->unk10;
            sp10 = temp_a3_16;
            temp_a2_14 = arg2->unk14;
            sp14 = temp_a2_14;
            temp_a1_16 = arg2->unk18;
            sp18 = temp_a1_16;
            temp_a0_13 = arg2->unk1C;
            sp1C = temp_a0_13;
            sp20 = arg2->unk20;
            sp4 = 0.0f;
            sp0 = 0.0f;
            temp_f12_5 = (f32) ((f64) var_f28 * 0.5);
            unkspB0 = (bitwise f64) temp_f12_5;
            temp_f0_13 = floorf((bitwise s64) temp_a0_13, temp_a1_16, temp_a2_14, temp_a3_16, sp, temp_a5_14, temp_f12_5, second half of f64);
            sp8 = temp_f0_13;
            sp10 = 0.0f;
            sp14 = 0.0f;
            var_f30_3 = spC;
            sp18 = temp_f0_13;
            sp1C = var_f30_3;
            if (arg2->unk23 != 0) {
                var_f30_3 += floorf(unkspB0, second half of f64);
                sp1C = var_f30_3;
            }
            if (arg2->unk22 != 0) {
                sp1C = floorf(unkspB0, second half of f64) + var_f30_3;
            }
            __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
        }
        if (arg2->unk21 != 0) {
            temp_a5_15 = arg2->unk0;
            sp0 = temp_a5_15;
            temp_a3_17 = arg2->unk4;
            sp4 = temp_a3_17;
            temp_a2_15 = arg2->unk8;
            sp8 = temp_a2_15;
            temp_a1_17 = arg2->unkC;
            spC = temp_a1_17;
            temp_a0_14 = arg2->unk10;
            sp10 = temp_a0_14;
            sp14 = arg2->unk14;
            sp18 = arg2->unk18;
            sp1C = arg2->unk1C;
            sp20 = arg2->unk20;
            temp_f26_16 = (f32) ((f64) temp_f22 * 0.5);
            temp_f0_14 = floorf((bitwise s64) temp_a0_14, temp_a1_17, temp_a2_15, temp_a3_17, sp, temp_a5_15, temp_f26_16);
            sp14 = 0.0f;
            var_f30_4 = spC;
            sp4 = 0.0f;
            sp1C = var_f30_4;
            sp28 = (bitwise f64) sp8;
            sp10 = sp8;
            sp18 = sp8;
            sp0 = sp8 - temp_f0_14;
            var_f28 = second half of f64;
            temp_f29_5 = floorf((bitwise s64) temp_f26_16) + (bitwise f32) sp28;
            sp18 = temp_f29_5;
            unkspB8 = (bitwise f64) temp_f29_5;
            if ((bitwise u8) arg2->unk20 != 0) {
                var_f30_4 = second half of f64;
                sp10 = floorf((bitwise s64) temp_f26_16) + (bitwise f32) sp28;
                floorf((bitwise s64) temp_f26_16);
                sp18 = (second half of f64) + (bitwise f32) unkspB8;
            }
            if (arg2->unk23 != 0) {
                var_f30_4 += floorf((bitwise s64) (f32) ((f64) (second half of f64) * 0.5), second half of f64);
                sp1C = var_f30_4;
            }
            if (arg2->unk22 != 0) {
                sp1C = floorf((bitwise s64) (f32) ((f64) (second half of f64) * 0.5), second half of f64) + var_f30_4;
            }
            __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
        }
        if (arg2->unk23 != 0) {
            temp_a0_15 = arg2->unk0;
            sp0 = temp_a0_15;
            sp4 = arg2->unk4;
            sp8 = arg2->unk8;
            spC = arg2->unkC;
            sp10 = arg2->unk10;
            sp14 = arg2->unk14;
            sp18 = arg2->unk18;
            sp1C = arg2->unk1C;
            sp20 = arg2->unk20;
            sp4 = 0.0f;
            sp0 = 0.0f;
            temp_f0_15 = floorf((bitwise s64) temp_a0_15, (f32) ((f64) var_f28 * 0.5), second half of f64);
            sp1C = temp_f0_15;
            sp14 = 0.0f;
            sp10 = 0.0f;
            spC = temp_f0_15;
            sp18 = sp8;
            unkspB8 = (bitwise f64) sp8;
            if ((bitwise u8) arg2->unk20 != 0) {
                temp_f13_3 = floorf((bitwise s64) (f32) ((f64) temp_f22 * 0.5), second half of f64) + (bitwise f32) unkspB8;
                unkspB8 = (bitwise f64) temp_f13_3;
                sp18 = temp_f13_3;
            }
            if (arg2->unk21 != 0) {
                sp18 = floorf((bitwise s64) (f32) ((f64) temp_f22 * 0.5), second half of f64) + (bitwise f32) unkspB8;
            }
            __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
        }
        if (arg2->unk22 != 0) {
            sp0 = arg2->unk0;
            sp4 = arg2->unk4;
            sp8 = arg2->unk8;
            spC = arg2->unkC;
            sp10 = arg2->unk10;
            sp14 = arg2->unk14;
            sp18 = arg2->unk18;
            sp1C = arg2->unk1C;
            sp20 = arg2->unk20;
            sp0 = 0.0f;
            temp_f12_6 = (f32) ((f64) var_f28 * 0.5);
            unkspB0 = (bitwise f64) temp_f12_6;
            temp_f0_16 = floorf((bitwise s64) temp_f12_6, second half of f64);
            sp10 = 0.0f;
            sp14 = spC;
            unkspB8 = (bitwise f64) sp8;
            sp1C = spC;
            sp18 = sp8;
            temp_f13_4 = spC - temp_f0_16;
            sp4 = temp_f13_4;
            temp_f30_5 = floorf((bitwise s64) temp_f12_6, temp_f13_4, sp8) + spC;
            sp1C = temp_f30_5;
            if (arg2->unk23 != 0) {
                sp14 = floorf(unkspB0, second half of f64) + spC;
                sp1C = floorf(unkspB0, second half of f64) + temp_f30_5;
            }
            if ((bitwise u8) arg2->unk20 != 0) {
                temp_f13_5 = floorf((bitwise s64) (f32) ((f64) temp_f22 * 0.5), second half of f64) + (bitwise f32) unkspB8;
                unkspB8 = (bitwise f64) temp_f13_5;
                sp18 = temp_f13_5;
            }
            temp_a0_16 = arg2->unk21;
            if (temp_a0_16 != 0) {
                sp18 = floorf((s64) temp_a0_16, (f32) ((f64) temp_f22 * 0.5), second half of f64) + (bitwise f32) unkspB8;
            }
            __glOdysseyImageMovePixelsTexture(arg4, arg1->unk44, (s64) sp, 0);
        }
        unksp178 = 1;
        goto block_7;
    }
    temp_a1_18 = arg1->unk44->unkC;
    var_f4 = 0.99975586f;
    if (temp_a1_18 != 0x1403) {
        var_f4 = 0.99975586f;
        if (temp_a1_18 != 0x1402) {
            var_f4 = 0.99975586f;
            if (temp_a1_18 != 0x1405) {
                if (temp_a1_18 != 0x1404) {
                    var_f4 = M2C_ERROR(/* unknown instruction: movz.s $f4, $f31, $a5 */);
                } else {
                    var_f4 = 0.99975586f;
                }
            }
        }
    }
    (arg1->unk14 + temp_s8)->unk24 = 0.0f;
    temp_a7_5 = arg1->unk14 + temp_s8;
    temp_a7_5->unkB8 = 0.0f;
    temp_a6_5 = arg1->unk14 + temp_s8;
    temp_a6_5->unk14C = 0.0f;
    temp_a5_16 = arg1->unk14 + temp_s8;
    temp_a5_16->unk1E0 = 0.0f;
    temp_a4_5 = arg1->unk14 + temp_s8;
    temp_a4_5->unk28 = var_f4;
    temp_a3_18 = arg1->unk14 + temp_s8;
    temp_a3_18->unkBC = var_f4;
    temp_a2_16 = arg1->unk14 + temp_s8;
    temp_a2_16->unk150 = var_f4;
    temp_a1_19 = arg1->unk14 + temp_s8;
    temp_a1_19->unk1E4 = var_f4;
    __glOdysseyProgramTexFilter(arg1->unk14 + temp_s8, temp_a1_19, temp_a2_16, temp_a3_18, temp_a4_5, temp_a5_16, temp_a6_5, temp_a7_5);
    __glOdysseyImageChainAddOpAcceptSignedDataFromHost(arg1, temp_s7);
    if (unksp178 != 0) {
        temp_a0_17 = arg2->unk0;
        sp0 = temp_a0_17;
        sp4 = arg2->unk4;
        sp8 = arg2->unk8;
        spC = arg2->unkC;
        sp10 = arg2->unk10;
        sp14 = arg2->unk14;
        sp18 = arg2->unk18;
        sp1C = arg2->unk1C;
        sp20 = arg2->unk20;
        unksp110 = (bitwise f64) sp0;
        unksp108 = (bitwise f64) sp4;
        var_f28_2 = sp8;
        sp1C = spC;
        sp18 = var_f28_2;
        sp14 = sp4;
        sp10 = sp0;
        temp_a1_20 = (bitwise u8) arg2->unk20;
        unksp100 = (bitwise f64) spC;
        unkspE0 = (bitwise f64) spC;
        var_f30_5 = spC;
        unkspD8 = (bitwise f64) var_f28_2;
        var_f5 = var_f28_2;
        if (temp_a1_20 != 0) {
            temp_f26_17 = (f32) ((f64) temp_f22 * 0.5);
            var_f28_2 = floorf((bitwise s64) temp_a0_17, (bitwise f32) temp_a1_20, temp_f26_17) + (bitwise f32) unkspD8;
            sp8 = var_f28_2;
            var_f5 = floorf((bitwise s64) temp_f26_17) + (bitwise f32) unkspD8;
            sp18 = var_f5;
        }
        unkspB8 = (bitwise f64) var_f5;
        if (arg2->unk21 != 0) {
            temp_f26_18 = (f32) ((f64) temp_f22 * 0.5);
            sp8 = floorf((bitwise s64) temp_f26_18) + var_f28_2;
            sp18 = floorf((bitwise s64) temp_f26_18) + (bitwise f32) unkspB8;
        }
        if (arg2->unk23 != 0) {
            temp_f27_3 = floorf((bitwise s64) (f32) ((f64) temp_f22 * 0.5)) + (bitwise f32) unkspE0;
            unksp100 = (bitwise f64) temp_f27_3;
            spC = temp_f27_3;
            var_f30_5 = floorf(second half of f64) + (bitwise f32) unkspE0;
            sp1C = var_f30_5;
        }
        if (arg2->unk22 != 0) {
            spC = floorf(unksp188, (f32) ((f64) temp_f22 * 0.5)) + (bitwise f32) unksp100;
            sp1C = floorf(second half of f64) + var_f30_5;
        }
    } else {
        sp0 = arg2->unk0;
        sp4 = arg2->unk4;
        sp8 = arg2->unk8;
        spC = arg2->unkC;
        sp10 = arg2->unk10;
        sp14 = arg2->unk14;
        sp18 = arg2->unk18;
        sp1C = arg2->unk1C;
        sp20 = arg2->unk20;
        sp1C = spC;
        sp18 = sp8;
        unksp108 = (bitwise f64) sp4;
        unksp110 = (bitwise f64) sp0;
        sp14 = sp4;
        sp10 = sp0;
    }
    sp10 = (bitwise f32) unksp110;
    sp14 = (bitwise f32) unksp108;
    __glOdysseyImageMovePixelsTexture((f32 *) unksp188, arg4, (s64) sp, 0);
    temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
    temp_s3->unk96A4 = (s32) (temp_s3->unk96A4 & ~0x60000);
    *(void *)0x1018 = 2;
    temp_s3->unk7BFC = (s32) (temp_s3->unk7BFC | 0x20000);
    temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 2);
    *(void *)0x1018 = 2;
    temp_s3->unk7C34 = (s32) ((temp_s3->unk7C34 & ~0xE000) | 0xA000);
    temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 1);
    *(void *)0x1018 = 2;
    temp_s3->unk7C40 = 1;
    if (temp_s3->unk9830 != 0) {
        temp_s3->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
    }
    HQ2_READ_FIFO = 0x10422;
    HQ2_READ_FIFO = temp_s3->unk7C40;
    temp_s3->unk7C3C = (s32) ((-0x1000 & ((0xFF000FFF & temp_s3->unk7C3C) | 0x1000)) | 1);
    temp_s3->unk7C38 = (s32) ((-0x1000 & ((0xFF000FFF & temp_s3->unk7C38) | 0x1000)) | 1);
    temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 1);
    *(void *)0x1018 = 2;
    temp_f1_2 = M2C_ERROR(/* unknown instruction: movz.s $f1, $f2, $t1 */);
    (arg1->unk14 + temp_s8)->unk24 = temp_f1_2;
    temp_a7_6 = arg1->unk14 + temp_s8;
    temp_a7_6->unkB8 = temp_f1_2;
    temp_a6_6 = arg1->unk14 + temp_s8;
    temp_a6_6->unk14C = temp_f1_2;
    temp_a5_17 = arg1->unk14 + temp_s8;
    temp_a5_17->unk1E0 = temp_f1_2;
    temp_a4_6 = arg1->unk14 + temp_s8;
    temp_a4_6->unk28 = 0.0f;
    temp_a3_19 = arg1->unk14 + temp_s8;
    temp_a3_19->unkBC = 0.0f;
    temp_a2_17 = arg1->unk14 + temp_s8;
    temp_a2_17->unk150 = 0.0f;
    temp_a1_21 = arg1->unk14 + temp_s8;
    temp_a1_21->unk1E4 = 0.0f;
    __glOdysseyProgramTexFilter(arg1->unk14 + temp_s8, temp_a1_21, temp_a2_17, temp_a3_19, temp_a4_6, temp_a5_17, temp_a6_6, temp_a7_6);
    temp_a4_7 = temp_s3->unk7CD4;
    temp_a3_20 = 0x40000 | temp_a4_7 | 0x4000;
    temp_s3->unk7CD4 = temp_a3_20;
    temp_s3->unk16960 = (s32) (temp_s3->unk16960 | 0x200);
    *(void *)0x1018 = 2;
    temp_a2_18 = temp_s3->unk96A4;
    temp_s3->unk16960 = (s32) (0x200000 | temp_s3->unk16960);
    temp_s3->unk96A4 = (s32) (0xFFEFFFFF & temp_a2_18);
    *(void *)0x1018 = 2;
    __glOdysseyImageChainAddOpAcceptSignedDataFromHost(arg1, temp_s7, temp_a2_18, (bitwise f32) temp_a3_20, (bitwise f32) temp_a4_7);
    if (unksp178 != 0) {
        sp0 = arg2->unk0;
        sp4 = arg2->unk4;
        sp8 = arg2->unk8;
        spC = arg2->unkC;
        sp10 = arg2->unk10;
        sp14 = arg2->unk14;
        sp18 = arg2->unk18;
        sp1C = arg2->unk1C;
        sp20 = arg2->unk20;
        var_f28_3 = sp8;
        sp1C = spC;
        sp18 = var_f28_3;
        sp14 = sp4;
        sp10 = sp0;
        unksp100 = (bitwise f64) spC;
        unkspD0 = (bitwise f64) spC;
        var_f30_6 = spC;
        unkspC8 = (bitwise f64) var_f28_3;
        var_f26 = var_f28_3;
        if ((bitwise u8) arg2->unk20 != 0) {
            temp_f26_19 = (f32) ((f64) (temp_f22 + -1.0f) * 0.5);
            var_f28_3 = floorf((bitwise s64) temp_f26_19) + (bitwise f32) unkspC8;
            sp8 = var_f28_3;
            var_f26 = floorf((bitwise s64) temp_f26_19) + (bitwise f32) unkspC8;
            sp18 = var_f26;
        }
        if (arg2->unk21 != 0) {
            temp_f12_7 = (f32) ((f64) (temp_f22 + -1.0f) * 0.5);
            unkspC0 = (bitwise f64) temp_f12_7;
            temp_f13_6 = ceilf(temp_f12_7, second half of f64) + var_f28_3;
            sp8 = temp_f13_6;
            sp18 = ceilf(temp_f12_7, (bitwise ? **) temp_f13_6) + var_f26;
        }
        if (arg2->unk23 != 0) {
            temp_f29_6 = floorf((bitwise s64) (f32) ((f64) (temp_f22 + -1.0f) * 0.5)) + (bitwise f32) unkspD0;
            unksp100 = (bitwise f64) temp_f29_6;
            spC = temp_f29_6;
            var_f30_6 = floorf(second half of f64) + (bitwise f32) unkspD0;
            sp1C = var_f30_6;
        }
        temp_a0_18 = arg2->unk22;
        if (temp_a0_18 != 0) {
            spC = ceilf((bitwise f32) temp_a0_18, (bitwise ? **) (f32) ((f64) (temp_f22 + -1.0f) * 0.5)) + (bitwise f32) unksp100;
            sp1C = ceilf(second half of f64) + var_f30_6;
        }
        __glOdysseyImageMovePixelsTexture((f32 *) unksp188, arg4, (s64) sp, 0);
    } else {
        sp0 = arg2->unk0;
        sp4 = arg2->unk4;
        sp8 = arg2->unk8;
        spC = arg2->unkC;
        sp10 = arg2->unk10;
        sp14 = arg2->unk14;
        sp18 = arg2->unk18;
        sp1C = arg2->unk1C;
        sp20 = arg2->unk20;
        sp1C = spC;
        sp18 = sp8;
        sp14 = sp4;
        sp10 = sp0;
        __glOdysseyImageMovePixelsTexture((f32 *) unksp188, arg4, (s64) sp, 0, (s32) sp, unksp178);
        sp0 = arg2->unk0;
        sp4 = arg2->unk4;
        sp8 = arg2->unk8;
        spC = arg2->unkC;
        sp10 = arg2->unk10;
        sp14 = arg2->unk14;
        sp18 = arg2->unk18;
        sp1C = arg2->unk1C;
        sp20 = arg2->unk20;
    }
    temp_s3->unk7C40 = 3;
    if (temp_s3->unk9830 != 0) {
        temp_s3->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
    }
    HQ2_READ_FIFO = 0x10422;
    HQ2_READ_FIFO = temp_s3->unk7C40;
    (arg1->unk14 + temp_s8)->unk24 = 1.0f;
    temp_a7_7 = arg1->unk14 + temp_s8;
    temp_a7_7->unkB8 = 1.0f;
    temp_a6_7 = arg1->unk14 + temp_s8;
    temp_a6_7->unk14C = 1.0f;
    temp_a5_18 = arg1->unk14 + temp_s8;
    temp_a5_18->unk1E0 = 1.0f;
    temp_a4_8 = arg1->unk14 + temp_s8;
    temp_a4_8->unk28 = 0.0f;
    temp_a3_21 = arg1->unk14 + temp_s8;
    temp_a3_21->unkBC = 0.0f;
    temp_a2_19 = arg1->unk14 + temp_s8;
    temp_a2_19->unk150 = 0.0f;
    temp_a1_22 = arg1->unk14 + temp_s8;
    temp_a1_22->unk1E4 = 0.0f;
    __glOdysseyProgramTexFilter(arg1->unk14 + temp_s8, temp_a1_22, temp_a2_19, temp_a3_21, temp_a4_8, temp_a5_18, temp_a6_7, temp_a7_7);
    temp_t2 = temp_s3->unk2FC;
    temp_f24 = (f32) ((f64) ((f32) temp_t2->unk40 + -1.0f) * 0.5);
    temp_f28 = (f32) temp_t2->unk44;
    temp_f25 = sp0 + ceilf(temp_f24);
    temp_f22_2 = (f32) ((f64) (temp_f28 + -1.0f) * 0.5);
    unksp110 = (bitwise f64) temp_f25;
    sp0 = temp_f25;
    temp_f23 = sp4 + ceilf(temp_f22_2);
    unksp108 = (bitwise f64) temp_f23;
    sp4 = temp_f23;
    temp_f28_2 = sp8 - floorf((bitwise s64) temp_f24);
    sp8 = temp_f28_2;
    floorf((bitwise s64) temp_f22_2);
    sp18 = temp_f28_2;
    sp14 = (bitwise f32) unksp108;
    sp10 = (bitwise f32) unksp110;
    temp_f29_7 = spC - (second half of f64);
    sp1C = temp_f29_7;
    spC = temp_f29_7;
    unksp180->unk0 = sp0;
    unksp180->unk4 = sp4;
    unksp180->unk8 = sp8;
    unksp180->unkC = spC;
    unksp180->unk10 = sp10;
    unksp180->unk14 = sp14;
    unksp180->unk18 = sp18;
    unksp180->unk1C = sp1C;
    unksp180->unk20 = sp20;
}

s32 ImageChainAddOpHistogramMinmax(s64 arg0) {
    s64 sp0;
    s64 temp_v0;

    sp0 = arg0;
    temp_v0 = sub_0d990000();
    if (temp_v0 == 0) {
        return 0;
    }
    temp_v0->unkC = 1;
    temp_v0->unk0 = 0xA;
    temp_v0->unk4 = (void *) (sub_0d9a0000 + 0xBD0);
    temp_v0->unk8 = (s32) (temp_v0->unk8 | 0xC);
    sub_0d990000((f32 *) sp0, (f32 *) temp_v0, sp0->unk8, 0, (void *)1);
    return 1;
}

s32 RenderFunc_HistogramMinmax(void *arg0, void *arg1) {
    s64 spA0;
    f64 sp98;
    f64 sp90;
    f64 sp88;
    f64 sp80;
    s8 sp71;
    s8 sp70;
    u8 sp68;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    s64 sp40;                                       /* compiler-managed */
    s32 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;                                       /* compiler-managed */
    s64 sp10;                                       /* compiler-managed */
    s64 sp8;                                        /* compiler-managed */
    s64 sp0;
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 *temp_a1;
    f32 temp_a3;
    f32 temp_a4;
    f32 temp_a5;
    f32 temp_a6;
    s32 temp_s0;
    s32 temp_v0;
    s64 temp_lo;
    s64 temp_s5;
    s64 temp_s7;
    s8 var_v0;
    u64 temp_a7;
    void *temp_s1;

    temp_s1 = *(void **)0x1010;
    sp38 = 0;
    sp30 = 0;
    sp28 = 0;
    sp20 = 0;
    sp18 = 0;
    sp10 = 0;
    sp8 = 0;
    sp0 = 0;
    sp40 = 0;
    sp40.unk20 = 0;
    sp40.unk18 = 0;
    sp40.unk10 = 0;
    sp40.unk8 = 0;
    sp90 = M2C_ERROR(/* unknown instruction: movf.s $f2, $f3, $fcc2 */);
    sp98 = M2C_ERROR(/* unknown instruction: movf.s $f4, $f3, $fcc3 */);
    sp80 = M2C_ERROR(/* unknown instruction: movf.s $f0, $f1, $fcc0 */);
    sp88 = M2C_ERROR(/* unknown instruction: movf.s $f2, $f1, $fcc1 */);
    if (temp_s1->unk500 != 0) {
        // Error: negative shift count
        // At instruction: bgez $a0, .L0d9a0ee4
        if (M2C_ERROR()) {
            goto block_2;
        }
    }
    if ((temp_s1->unk560 == 0) || (// Error: negative shift count, // At instruction: bltz $t8, .L0d9a0cac, M2C_ERROR())) {
        unkspB0 = 0;
    } else {
block_2:
        unkspB0 = 1;
    }
    sp71 = 0;
    temp_a0 = arg0->unk48;
    var_v0 = 1;
    if (temp_a0->unkA != 0) {
        goto block_4;
    }
    if (temp_a0->unk8 == 0) {

    } else {
block_4:
        var_v0 = 0;
    }
    sp70 = var_v0;
    __glOdysseyImageCalcXferReadParams((s32) sp8, unkspC, arg0->unk44, &sp68);
    temp_s0 = __glSpecElementsPerGroup(sp74, sp78);
    temp_lo = temp_s0 * __glSpecBytesPerElement(sp78);
    temp_s5 = (s64) (second half of f64) << 0;
    temp_s7 = (s64) ((bitwise f32) sp90 - (bitwise f32) sp98) << 0;
    spA0 = temp_lo;
    temp_v0 = temp_s1->unk0(temp_s1, temp_lo * (temp_s5 * temp_s7));
    if (temp_v0 != 0) {
        temp_a6 = arg1->unk0;
        sp40 = temp_a6;
        temp_a5 = arg1->unk4;
        sp40.unk4 = temp_a5;
        temp_a4 = arg1->unk8;
        sp40.unk8 = temp_a4;
        temp_a3 = arg1->unkC;
        sp40.unkC = temp_a3;
        sp40.unk10 = (s32) arg1->unk10;
        sp40.unk14 = (s32) arg1->unk14;
        sp40.unk18 = (s32) arg1->unk18;
        sp40.unk1C = (s32) arg1->unk1C;
        sp40.unk20 = (s32) arg1->unk20;
        unksp2C = temp_v0;
        unkspC = sp78;
        sp8 = sp74;
        sp18 = (s32) spA0;
        unksp14 = (s32) temp_s7;
        temp_a7 = (u64) (temp_s7 << 0x20) >> 0x20;
        sp10 = (s32) temp_s5;
        sp38 = 0;
        unksp4 = 0;
        sp54 = 0.0f;
        sp50 = 0.0f;
        sp5C = (f32) temp_a7;
        sp58 = (f32) ((u64) (temp_s5 << 0x20) >> 0x20);
        __glOdysseyImageMovePixelsDMAtoHost((s64) sp, (s64) arg0->unk44, (f32 *) &sp40, temp_a3, temp_a4, temp_a5, temp_a6, temp_a7);
        __glOdysseyHistogramMinMax(temp_s1, temp_s5, temp_s7, sp74, sp78, temp_v0);
        temp_s1->unkC(temp_s1, temp_v0);
        if (unkspB0 & 0xFF) {
            return 1;
        }
        temp_a1 = arg0->unk44;
        temp_a0_2 = arg0->unk48;
        if (temp_a1->unkB != 0) {
            __glOdysseyImageMovePixelsTexture(temp_a0_2, temp_a1, (s64) arg1, 1);
        } else {
            __glOdysseyImageMovePixelsCopy(temp_a0_2, temp_a1, (s64) arg1, 1, 1);
        }
        return 1;
    }
    __glSetError(0x505);
    return 0;
}

s32 ImageChainAddOpPixelTexture(s64 arg0) {
    s64 sp0;
    s64 temp_v0;
    void *temp_a4;

    sp0 = arg0;
    temp_v0 = sub_0d990000();
    if (temp_v0 == 0) {
        return 0;
    }
    temp_v0->unk0 = 0xB;
    temp_v0->unkC = 1;
    temp_a4 = sub_0d9a0000 + 0x1010;
    temp_v0->unk4 = temp_a4;
    temp_v0->unk8 = (s32) (temp_v0->unk8 | 0xE);
    sub_0d990000((f32 *) sp0, (f32 *) temp_v0, sp0->unk8, 0, temp_a4);
    return 1;
}

s32 RenderFunc_PixelTexture(void *arg0, s64 arg1) {
    s64 sp80;
    s32 sp70;
    s32 sp50;
    s32 sp30;
    s64 sp18;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    f32 *temp_a0;
    f32 *temp_a1;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_s8;
    s64 temp_a6_2;
    void *temp_s4;

    temp_s4 = *(void **)0x1010;
    temp_s8 = temp_s4->unk7C00;
    sp30 = temp_s4->unk7CC4;
    sp30.unk10 = (s32) temp_s4->unk7CD4;
    sp30.unkC = (s32) temp_s4->unk7CD0;
    sp30.unk8 = (s32) temp_s4->unk7CCC;
    sp30.unk4 = (s32) temp_s4->unk7CC8;
    sp18 = temp_s4->unk7CB0;
    sp18.unk8 = (s64) temp_s4->unk7CB8;
    sp18.unk10 = (s32) temp_s4->unk7CC0;
    temp_a6 = temp_s4->unk96AC;
    sp30.unk18 = (s32) temp_s4->unk7CDC;
    sp10 = temp_s4->unk96BC;
    sp8 = temp_s4->unk96B4;
    sp4 = temp_s4->unk96B0;
    sp0 = temp_a6;
    sp30.unk14 = (s32) temp_s4->unk7CD8;
    sp80 = (s64) temp_s4->unk8CE8;
    spC = temp_s4->unk96B8;
    sp50.unk4 = (s32) temp_s4->unk8CF0;
    sp50.unk8 = (s32) temp_s4->unk8CF4;
    sp50.unkC = (s32) temp_s4->unk8CF8;
    sp50.unk10 = (s32) temp_s4->unk8CFC;
    sp50.unk14 = (s32) temp_s4->unk8D00;
    sp50.unk18 = (s32) temp_s4->unk8D04;
    sp50.unk1C = (s32) temp_s4->unk8D08;
    sp50 = temp_s4->unk8CEC;
    temp_s4->unk96AC = (s32) (temp_a6 | 8);
    sp70.unk8 = (s32) temp_s4->unk8D74;
    sp70.unk4 = (s32) temp_s4->unk8D70;
    sp70 = temp_s4->unk8D6C;
    if (temp_s4->unk9830 != 0) {
        temp_s4->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
    }
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x11453;
    HQ2_READ_FIFO = temp_s4->unk96AC;
    HQ2_READ_FIFO = temp_s4->unk96B0;
    HQ2_READ_FIFO = temp_s4->unk96B4;
    HQ2_READ_FIFO = temp_s4->unk96B8;
    HQ2_READ_FIFO = temp_s4->unk96BC;
    temp_s4->unk9830 = 0;
    HQ2_READ_FIFO = 0x10443;
    HQ2_READ_FIFO = 0xFA;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10046;
    temp_a7 = (temp_s4->unk11C38 & 0xC38) | (temp_s4->unk7C00 & ~0xC38);
    temp_s4->unk7C00 = temp_a7;
    temp_a6_2 = temp_s4->unk11BF0;
    temp_s4->unk7CB0 = temp_a6_2;
    temp_s4->unk7CB8 = (s64) temp_s4->unk11BF8;
    temp_s4->unk7CC0 = (s32) temp_s4->unk11C00;
    temp_s4->unk7CC4 = (s32) temp_s4->unk11C04;
    temp_s4->unk7CC8 = (s32) temp_s4->unk11C08;
    temp_s4->unk7CCC = (s32) temp_s4->unk11C0C;
    temp_s4->unk7CD0 = (s32) temp_s4->unk11C10;
    temp_s4->unk7CD4 = (s32) temp_s4->unk11C14;
    temp_s4->unk7CD8 = (s32) temp_s4->unk11C18;
    temp_s4->unk7CDC = (s32) temp_s4->unk11C1C;
    temp_s4->unk8CE8 = (s32) temp_s4->unk11CB0;
    temp_s4->unk8D08 = (s32) temp_s4->unk11CAC;
    temp_s4->unk8D04 = (s32) temp_s4->unk11CA8;
    temp_s4->unk8D00 = (s32) temp_s4->unk11CA4;
    temp_s4->unk8CFC = (s32) temp_s4->unk11CA0;
    temp_s4->unk8CF8 = (s32) temp_s4->unk11C9C;
    temp_s4->unk8CF4 = (s32) temp_s4->unk11C98;
    temp_s4->unk8CF0 = (s32) temp_s4->unk11C94;
    temp_s4->unk8CEC = (s32) temp_s4->unk11C90;
    temp_s4->unk8D6C = (s32) temp_s4->unk11CB4;
    temp_s4->unk8D74 = (s32) temp_s4->unk11CBC;
    temp_s4->unk8D70 = (s32) temp_s4->unk11CB8;
    temp_s4->unk16960 = (s32) (0x18304 | temp_s4->unk16960);
    *(s32 *)0x1018 = 2;
    temp_a1 = arg0->unk44;
    temp_a0 = arg0->unk48;
    if (temp_a1->unk38 != 0) {
        __glOdysseyImageMovePixelsCopy(temp_a0, temp_a1, arg1, 1, 1, 0x10000, (s32) temp_a6_2, (s64) temp_a7);
    } else {
        __glOdysseyImageMovePixelsDMAtoGfx(temp_a0, temp_a1, arg1, 1, 1, 0x10000, (s32) temp_a6_2, (s64) temp_a7);
    }
    temp_s4->unk96BC = sp10;
    temp_s4->unk96B8 = spC;
    temp_s4->unk96B4 = sp8;
    temp_s4->unk96B0 = sp4;
    temp_s4->unk96AC = sp0;
    if (temp_s4->unk9830 != 0) {
        temp_s4->unk9830 = 0;
        HQ2_READ_FIFO = 0x10443;
        HQ2_READ_FIFO = 0xFA;
        HQ2_READ_FIFO = 0x10046;
        HQ2_READ_FIFO = 0x10046;
    }
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x11453;
    HQ2_READ_FIFO = temp_s4->unk96AC;
    HQ2_READ_FIFO = temp_s4->unk96B0;
    HQ2_READ_FIFO = temp_s4->unk96B4;
    HQ2_READ_FIFO = temp_s4->unk96B8;
    HQ2_READ_FIFO = temp_s4->unk96BC;
    temp_s4->unk9830 = 0;
    HQ2_READ_FIFO = 0x10443;
    HQ2_READ_FIFO = 0xFA;
    HQ2_READ_FIFO = 0x10046;
    HQ2_READ_FIFO = 0x10046;
    temp_s4->unk7C00 = temp_s8;
    temp_s4->unk7CB0 = sp18;
    temp_s4->unk7CB8 = (s64) sp18.unk8;
    temp_s4->unk7CC0 = (s32) sp18.unk10;
    temp_s4->unk7CC4 = sp30;
    temp_s4->unk7CC8 = (s32) sp30.unk4;
    temp_s4->unk7CCC = (s32) sp30.unk8;
    temp_s4->unk7CD0 = (s32) sp30.unkC;
    temp_s4->unk7CD4 = (s32) sp30.unk10;
    temp_s4->unk7CD8 = (s32) sp30.unk14;
    temp_s4->unk7CDC = (s32) sp30.unk18;
    temp_s4->unk8CE8 = (s32) sp80;
    temp_s4->unk8D08 = (s32) sp50.unk1C;
    temp_s4->unk8D00 = (s32) sp50.unk14;
    temp_s4->unk8CFC = (s32) sp50.unk10;
    temp_s4->unk8CF8 = (s32) sp50.unkC;
    temp_s4->unk8CF4 = (s32) sp50.unk8;
    temp_s4->unk8CF0 = (s32) sp50.unk4;
    temp_s4->unk8CEC = sp50;
    temp_s4->unk8D04 = (s32) sp50.unk18;
    temp_s4->unk8D74 = sp78;
    temp_s4->unk8D70 = sp74;
    temp_s4->unk8D6C = sp70;
    temp_s4->unk16960 = (s32) (0x18304 | temp_s4->unk16960);
    *(void *)0x1018 = 2;
    return 1;
}

s32 ImageChainAddOpDownloadDepth(s64 arg0, f64 fparg1, f64 fparg2) {
    s64 sp10;
    f64 sp8;
    f64 sp0;
    s64 temp_v0;

    sp10 = arg0;
    sp0 = fparg1;
    sp8 = fparg2;
    temp_v0 = sub_0d990000();
    if (temp_v0 == 0) {
        return 0;
    }
    temp_v0->unkC = 1;
    temp_v0->unk0 = 0x10;
    temp_v0->unk28 = (f32) (second half of f64);
    temp_v0->unk18 = (bitwise f32) sp0;
    temp_v0->unk4 = (void *) (sub_0d9a0000 + 0x1530);
    temp_v0->unk8 = (s32) (temp_v0->unk8 | 0x1A);
    sub_0d990000((f32 *) sp10, (f32 *) temp_v0, sp10->unk4, 1);
    return 1;
}

s32 RenderFunc_DownloadDepth(void *arg0, void *arg1) {
    s64 sp108;
    s64 sp100;
    s64 spF8;
    f64 spF0;
    f64 spE8;
    f64 spE0;
    f64 spD8;
    s32 spC4;
    s32 spAC;
    s32 spA8;
    s64 sp98;
    s32 sp94;
    s32 sp90;
    s32 sp8C;
    s32 sp88;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    s32 sp58;
    s32 sp4C;
    s32 sp40;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 sp28;
    s64 sp20;                                       /* compiler-managed */
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    f32 temp_f10;
    f32 temp_f11;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f14;
    f32 temp_f15;
    f32 temp_f16;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 var_f16;
    f32 var_f22;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_a7_3;
    s32 temp_f3;
    s32 temp_f5;
    s32 temp_f6;
    s32 temp_f7;
    s32 temp_ra;
    s32 temp_s5;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t8;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a1;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_s5;
    s8 *temp_a5;
    s8 *temp_a7_2;
    s8 *temp_t9;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    temp_f4 = temp_s0->unk2E8;
    var_f16 = temp_f4;
    if (temp_f4 < 0.0f) {
        var_f16 = -temp_f4;
    }
    temp_f4_2 = temp_s0->unk2EC;
    var_f22 = temp_f4_2;
    if (temp_f4_2 < 0.0f) {
        var_f22 = -temp_f4_2;
    }
    spD8 = (bitwise f64) var_f16;
    if (((f64) var_f16 != 1.0) || (var_s5 = 0, ((f64) var_f22 != 1.0))) {
        var_s5 = 1;
    }
    temp_f7 = (s32) arg1->unk0;
    sp0 = temp_f7;
    temp_f5 = (s32) arg1->unk4;
    sp4 = temp_f5;
    temp_f6 = (s32) arg1->unk8;
    sp8 = temp_f6;
    var_a3 = temp_f6;
    var_a1 = temp_f7;
    temp_f3 = (s32) arg1->unkC;
    spC = temp_f3;
    sp14 = 0;
    sp10 = 0;
    sp20 = 0;
    temp_t1 = ((var_a3 < var_a1) ? var_a1 : var_a3) - ((var_a1 < var_a3) ? var_a1 : var_a3);
    sp18 = temp_t1;
    sp20.unk38 = 0;
    sp20.unk30 = 0;
    sp20.unk28 = 0;
    var_a4 = temp_f5;
    sp20.unk20 = 0;
    sp20.unk18 = 0;
    var_a0 = temp_f3;
    sp20.unk10 = 0;
    sp20.unk8 = 0;
    sp40 = 1;
    sp38 = 1;
    sp28 = 0x1902;
    sp20 = 1;
    unksp24 = 0;
    temp_a6 = ((var_a0 < var_a4) ? var_a4 : var_a0) - ((var_a4 < var_a0) ? var_a4 : var_a0);
    sp58 = 0;
    sp1C = temp_a6;
    temp_a7 = temp_a6 > 0;
    sp30 = ((temp_t1 < 0) ? 0 : temp_t1) - ((temp_t1 > 0) ? 0 : temp_t1);
    sp2C = 0x1405;
    sp34 = ((temp_a6 < 0) ? 0 : temp_a6) - ((temp_a7 != 0) ? 0 : temp_a6);
    temp_a5 = arg0->unk44;
    if ((temp_a5->unk20 == 1) && (temp_a5->unkC == 0x1405)) {
        var_a6 = 0xE;
        if (((f64) arg0->unk18 == 1.0) || ((f64) arg0->unk28 == GLUE_F64(M2C_ERROR(/* Read from unset register $f11 */), 0U))) {
            if (temp_s0->unk4A4 != 0) {
                goto block_12;
            }
            sp10 = var_a1;
            sp14 = var_a4;
            sp18 = var_a3;
            sp1C = var_a0;
            temp_a7_2 = arg0->unk44;
            var_a5 = 4;
            sp20 = temp_a7_2->unk0;
            do {
                var_a6 -= 2;
                (&sp20)[var_a5] = (s32) *(var_a5 + temp_a7_2);
                temp_t9 = &(&sp20 + 4)[var_a5];
                temp_t8 = *(var_a5 + (temp_a7_2 + 4));
                var_a5 += 8;
                *temp_t9 = temp_t8;
            } while (var_a6 > 0);
        } else {
            goto block_13;
        }
    } else {
block_12:
block_13:
        sp4C = temp_s0->unkA738;
        __glOdysseyImageConvertHostImage(&sp20, &sp10, arg0->unk44, sp, arg0 + 0x18, arg0 + 0x28, 0U, temp_a7, var_f16);
        var_a1 = sp10;
        var_a4 = sp14;
        var_a3 = sp18;
        var_a0 = sp1C;
    }
    temp_f13 = (f32) var_a0;
    temp_f14 = (f32) var_a3;
    temp_f15 = (f32) var_a4;
    temp_f16 = (f32) var_a1;
    sp6C = temp_f13;
    sp68 = temp_f14;
    sp64 = temp_f15;
    sp60 = temp_f16;
    temp_f4_3 = arg1->unk10;
    sp70 = temp_f4_3;
    temp_f12 = arg1->unk14;
    sp74 = temp_f12;
    temp_f11 = arg1->unk18;
    spF0 = (bitwise f64) temp_f12;
    sp78 = temp_f11;
    temp_f10 = arg1->unk1C;
    spE0 = (bitwise f64) temp_f11;
    spE8 = (bitwise f64) temp_f10;
    sp7C = temp_f10;
    if (var_s5 & 0xFF) {
        ceilf((bitwise f32) var_a0, (? **) var_a1, (bitwise ? **) (f32) ((f64) temp_f4_3 + -0.5), second half of f64, temp_f14, (bitwise ? **) temp_f15, (bitwise s32) temp_f16);
        ceilf((f32) ((f64) spF0 + -0.5), second half of f64);
        ceilf((f32) ((f64) spE0 + -0.5), second half of f64);
        sp108 = second half of f64;
        temp_t1_2 = (s32) ceilf((bitwise f32) (second half of f64), (bitwise ? **) (f32) ((f64) spE8 + -0.5), (? **) (second half of f64));
        sp8C = 0;
        sp88 = 0;
        sp98 = (bitwise s64) sp20;
        temp_a7_3 = ((sp108 < (s32) (second half of f64)) ? (second half of f64) : (? **) sp108) - (((s32) (second half of f64) >= sp108) ? sp108 : (s64) (second half of f64));
        sp90 = temp_a7_3;
        temp_t0 = ((temp_t1_2 < (s32) (second half of f64)) ? (second half of f64) : (? **) temp_t1_2) - (((s32) (second half of f64) >= temp_t1_2) ? temp_t1_2 : (s32) (second half of f64));
        sp94 = temp_t0;
        sp98.unk38 = (s32) sp20.unk38;
        sp98.unk30 = (s64) sp20.unk30;
        temp_a6_2 = (temp_a7_3 > 0) ? 0 : temp_a7_3;
        sp98.unk28 = (s64) sp20.unk28;
        sp98.unk20 = (s64) sp20.unk20;
        sp98.unk18 = (s64) sp20.unk18;
        sp98.unk10 = (s64) sp20.unk10;
        temp_a4 = temp_t0 > 0;
        sp98.unk8 = (s64) sp20.unk8;
        temp_a3 = (temp_a4 != 0) ? 0 : temp_t0;
        temp_a5_2 = ((temp_a7_3 < 0) ? 0 : temp_a7_3) - temp_a6_2;
        spA8 = temp_a5_2;
        temp_a2 = ((temp_t0 < 0) ? 0 : temp_t0) - temp_a3;
        spAC = temp_a2;
        temp_v0 = temp_s0->unk0(temp_s0, temp_a7_3 * temp_t0 * 4, temp_a2, temp_a3, temp_a4, temp_a5_2, temp_a6_2, temp_a7_3);
        spC4 = temp_v0;
        if (temp_v0 != 0) {
            __glOdysseyImageZoomHostImage(&sp98, &sp88, &sp20, &sp10);
            sp6C = (f32) sp94;
            sp68 = (f32) sp90;
            sp64 = (f32) sp8C;
            sp60 = (f32) sp88;
            temp_s5 = temp_s0->unk7C00;
            temp_s0->unk7C5C = (s32) (temp_s0->unk7C5C & ~0xFF000);
            temp_s0->unk7C00 = (s32) (temp_s5 & ~0xC00);
            temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x84);
            *(s32 *)0x1018 = 2;
            sp100 = (s64) (temp_s0 + 0x10000);
            arg0->unk48->unkC = (s8) ((temp_s0->unk704 & 0x20) != 0);
            __glOdysseyImageMovePixelsDMAtoGfx(arg0->unk48, (f32 *) &sp98, (s64) &sp60, 1, 1, (s64) sp88);
            spF8 = (s64) temp_s5;
            if (spC4 != 0) {
                temp_s0->unkC(temp_s0, spC4);
            }
            /* Duplicate return node #18. Try simplifying control flow for better match */
            temp_s0->unk7C5C = temp_s0->unk7C5C;
            temp_s0->unk7C00 = (s32) spF8;
            sp100->unk6960 = (s32) (sp100->unk6960 | 0x84);
            *(void *)0x1018 = 2;
            arg0->unk48->unkC = 0;
            return 1;
        }
        __glSetError(0x505);
        return 0;
    }
    sp100 = (s64) (temp_s0 + 0x10000);
    temp_ra = temp_s0->unk7C00;
    temp_s0->unk7C00 = (s32) (temp_ra & ~0xC00);
    temp_s0->unk7C5C = (s32) (temp_s0->unk7C5C & ~0xFF000);
    temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x84);
    *(void *)0x1018 = 2;
    spF8 = (s64) temp_ra;
    arg0->unk48->unkC = (s8) ((temp_s0->unk704 & 0x20) != 0);
    __glOdysseyImageMovePixelsDMAtoGfx(arg0->unk48, &sp20, (s64) &sp60, 1, 1, (s64) temp_f12, (bitwise s32) temp_f13, (bitwise s64) temp_f14, temp_f15, temp_f16);
    temp_s0->unk7C5C = temp_s0->unk7C5C;
    temp_s0->unk7C00 = (s32) spF8;
    sp100->unk6960 = (s32) (sp100->unk6960 | 0x84);
    *(void *)0x1018 = 2;
    arg0->unk48->unkC = 0;
    return 1;
}

s32 ImageChainAddOpDownloadStencil(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s64 temp_v0;

    sp0 = arg0;
    sp8 = arg1;
    sp10 = arg2;
    sp18 = arg3;
    temp_v0 = sub_0d990000();
    if (temp_v0 == 0) {
        return 0;
    }
    temp_v0->unk0 = 0x11;
    temp_v0->unk3E = (s8) sp18;
    temp_v0->unk8 = (s32) (temp_v0->unk8 | 0x1A);
    temp_v0->unkC = 1;
    temp_v0->unk4 = (void *) (sub_0d9a0000 + 0x1C60);
    temp_v0->unk28 = (f32) sp10;
    temp_v0->unk18 = (f32) sp8;
    sub_0d990000((f32 *) sp0, (f32 *) temp_v0, sp0->unk4, 1);
    return 1;
}

s32 RenderFunc_DownloadStencil(void *arg0, void *arg1) {
    s64 sp110;
    s64 sp108;
    s64 sp100;
    f64 spF8;
    f64 spF0;
    f64 spE8;
    f64 spE0;
    s32 spCC;
    s32 spB4;
    s32 spB0;
    s64 spA0;
    s32 sp9C;
    s32 sp98;
    s32 sp94;
    s32 sp90;
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    s32 sp60;
    s32 sp54;
    s32 sp4C;
    s32 sp40;
    s32 sp3C;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s64 sp28;                                       /* compiler-managed */
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    f32 sp4;
    f32 sp0;
    f32 temp_f12;
    f32 temp_f13;
    f32 temp_f4_2;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f7;
    f32 temp_f8;
    f32 temp_f9;
    f32 var_f16;
    f32 var_f22;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_at;
    s32 temp_f13_2;
    s32 temp_f2;
    s32 temp_f3;
    s32 temp_f4;
    s32 temp_f5_3;
    s32 temp_ra;
    s32 temp_s7;
    s32 temp_t0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 var_s7;
    s64 temp_a5_2;
    s64 temp_a5_3;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    temp_f5 = temp_s0->unk2E8;
    var_f16 = temp_f5;
    if (temp_f5 < 0.0f) {
        var_f16 = -temp_f5;
    }
    temp_f5_2 = temp_s0->unk2EC;
    if (temp_f5_2 < 0.0f) {
        var_f22 = -temp_f5_2;
    } else {
        var_f22 = temp_f5_2;
    }
    if (((f64) var_f16 != 1.0) || (var_s7 = 0, ((f64) var_f22 != 1.0))) {
        spE0 = (bitwise f64) var_f16;
        var_s7 = 1;
    } else {
        spE0 = (bitwise f64) var_f16;
    }
    sp4 = 0.0f;
    sp0 = 0.0f;
    sp0 = arg0->unk18;
    sp4 = arg0->unk28;
    temp_f4 = (s32) arg1->unk0;
    sp8 = temp_f4;
    temp_f3 = (s32) arg1->unk4;
    spC = temp_f3;
    temp_f5_3 = (s32) arg1->unk8;
    sp10 = temp_f5_3;
    temp_f2 = (s32) arg1->unkC;
    temp_a7 = temp_f5_3 < temp_f4;
    sp14 = temp_f2;
    sp1C = 0;
    temp_a3 = ((temp_a7 != 0) ? temp_f4 : temp_f5_3) - ((temp_f4 >= temp_f5_3) ? temp_f5_3 : temp_f4);
    sp18 = 0;
    sp28 = 0;
    sp20 = temp_a3;
    sp28.unk38 = 0;
    sp28.unk30 = 0;
    sp28.unk28 = 0;
    sp28.unk20 = 0;
    sp28.unk18 = 0;
    sp28.unk10 = 0;
    sp28.unk8 = 0;
    sp34 = 0x1405;
    sp30 = 0x1901;
    unksp2C = 0;
    sp60 = 0;
    temp_v0 = ((temp_f2 < temp_f3) ? temp_f3 : temp_f2) - ((temp_f3 >= temp_f2) ? temp_f2 : temp_f3);
    sp24 = temp_v0;
    sp38 = ((temp_a3 < 0) ? 0 : temp_a3) - ((temp_a3 > 0) ? 0 : temp_a3);
    sp4C = 1;
    sp40 = 1;
    sp28 = 1;
    sp3C = ((temp_v0 < 0) ? 0 : temp_v0) - ((temp_v0 > 0) ? 0 : temp_v0);
    sp54 = temp_s0->unkA738;
    __glOdysseyImageConvertHostImage((f32 *) &sp28, &sp18, arg0->unk44, &sp8, sp, &sp4, arg0->unk3E, temp_a7, var_f16);
    temp_f12 = (f32) sp1C;
    temp_f13 = (f32) sp18;
    sp74 = (f32) sp24;
    sp70 = (f32) sp20;
    sp6C = temp_f12;
    sp68 = temp_f13;
    temp_f4_2 = arg1->unk10;
    sp78 = temp_f4_2;
    temp_f9 = arg1->unk14;
    sp7C = temp_f9;
    temp_f8 = arg1->unk18;
    spF8 = (bitwise f64) temp_f9;
    sp80 = temp_f8;
    temp_f7 = arg1->unk1C;
    spE8 = (bitwise f64) temp_f8;
    spF0 = (bitwise f64) temp_f7;
    sp84 = temp_f7;
    if (var_s7 & 0xFF) {
        ceilf((f32) ((f64) temp_f4_2 + -0.5), second half of f64);
        ceilf((f32) ((f64) spF8 + -0.5), second half of f64);
        sp110 = second half of f64;
        ceilf((f32) ((f64) spE8 + -0.5), (? **) (second half of f64));
        temp_f13_2 = (s32) ceilf((f32) ((f64) spF0 + -0.5), second half of f64);
        sp94 = 0;
        sp90 = 0;
        temp_a7_2 = (((s32) (second half of f64) < (s32) (second half of f64)) ? (second half of f64) : (second half of f64)) - (((s32) (second half of f64) >= (s32) (second half of f64)) ? (second half of f64) : (second half of f64));
        sp98 = temp_a7_2;
        spA0 = (s64) sp28;
        temp_t0 = ((temp_f13_2 < sp110) ? sp110 : (s64) temp_f13_2) - ((sp110 >= temp_f13_2) ? temp_f13_2 : (s32) sp110);
        sp9C = temp_t0;
        spA0.unk38 = (s32) sp28.unk38;
        spA0.unk30 = (s64) sp28.unk30;
        temp_a6 = (temp_a7_2 > 0) ? 0 : temp_a7_2;
        spA0.unk28 = (s64) sp28.unk28;
        spA0.unk20 = (s64) sp28.unk20;
        spA0.unk18 = (s64) sp28.unk18;
        spA0.unk10 = (s64) sp28.unk10;
        temp_a4 = temp_t0 > 0;
        spA0.unk8 = (s64) sp28.unk8;
        temp_a3_2 = (temp_a4 != 0) ? 0 : temp_t0;
        temp_a5 = ((temp_a7_2 < 0) ? 0 : temp_a7_2) - temp_a6;
        spB0 = temp_a5;
        temp_a2 = ((temp_t0 < 0) ? 0 : temp_t0) - temp_a3_2;
        spB4 = temp_a2;
        temp_v0_2 = temp_s0->unk0(temp_s0, temp_a7_2 * temp_t0 * 4, temp_a2, temp_a3_2, temp_a4, temp_a5, temp_a6, temp_a7_2);
        spCC = temp_v0_2;
        if (temp_v0_2 != 0) {
            __glOdysseyImageZoomHostImage(&spA0, &sp90, (f32 *) &sp28, &sp18);
            sp74 = (f32) sp9C;
            sp70 = (f32) sp98;
            sp6C = (f32) sp94;
            sp68 = (f32) sp90;
            temp_at = temp_s0->unk7C00;
            temp_s7 = temp_s0->unk7C5C;
            temp_a6_2 = ~0x400000;
            temp_s0->unk7C00 = (s32) (temp_at & ~0xC00);
            temp_s0->unk7BFC = (s32) ((((temp_s0->unkC9A != 0) << 0xF) & 0x8000) | (temp_s0->unk7BFC & ~0x8000));
            temp_a5_2 = ~0x800000;
            temp_s0->unk7C5C = (s32) (temp_s7 & ~0x01000000 & ~0xFFF & ~0x100000 & ~0x200000 & temp_a6_2 & temp_a5_2);
            temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x86);
            *(s32 *)0x1018 = 2;
            sp108 = (s64) temp_at;
            arg0->unk48->unkC = (s8) ((temp_s0->unk704 & 0x20) != 0);
            __glOdysseyImageMovePixelsDMAtoGfx(arg0->unk48, (f32 *) &spA0, (s64) &sp68, 1, 0, temp_a5_2, temp_a6_2, (s64) sp90);
            sp100 = (s64) temp_s7;
            if (spCC != 0) {
                temp_s0->unkC(temp_s0, spCC);
            }
            /* Duplicate return node #12. Try simplifying control flow for better match */
            temp_s0->unk7BFC = temp_s0->unk7BFC;
            temp_s0->unk7C00 = (s32) sp108;
            temp_s0->unk7C5C = (s32) sp100;
            temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x86);
            *(void *)0x1018 = 2;
            arg0->unk48->unkC = 0;
            return 1;
        }
        __glSetError(0x505);
        return 0;
    }
    temp_ra = temp_s0->unk7C00;
    temp_v1 = temp_s0->unk7C5C;
    sp100 = (s64) temp_v1;
    temp_a6_3 = ~0x400000;
    temp_s0->unk7C00 = (s32) (temp_ra & ~0xC00);
    temp_s0->unk7BFC = (s32) ((((temp_s0->unkC9A != 0) << 0xF) & 0x8000) | (temp_s0->unk7BFC & ~0x8000));
    temp_a5_3 = ~0x800000;
    temp_s0->unk7C5C = (s32) (temp_v1 & ~0x01000000 & ~0xFFF & ~0x100000 & ~0x200000 & temp_a6_3 & temp_a5_3);
    temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x86);
    *(void *)0x1018 = 2;
    sp108 = (s64) temp_ra;
    arg0->unk48->unkC = (s8) ((temp_s0->unk704 & 0x20) != 0);
    __glOdysseyImageMovePixelsDMAtoGfx(arg0->unk48, (f32 *) &sp28, (s64) &sp68, 1, 0, temp_a5_3, temp_a6_3, (bitwise s64) temp_f12, temp_f13);
    temp_s0->unk7BFC = temp_s0->unk7BFC;
    temp_s0->unk7C00 = (s32) sp108;
    temp_s0->unk7C5C = (s32) sp100;
    temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x86);
    *(void *)0x1018 = 2;
    arg0->unk48->unkC = 0;
    return 1;
}

s32 ImageChainAddOpReadbackDepth(s64 arg0, f64 fparg1, f64 fparg2) {
    s64 sp10;
    f64 sp8;
    f64 sp0;
    s64 temp_v0;

    sp10 = arg0;
    sp0 = fparg1;
    sp8 = fparg2;
    temp_v0 = sub_0d990000();
    if (temp_v0 == 0) {
        return 0;
    }
    temp_v0->unkC = 0;
    temp_v0->unk0 = 0x12;
    temp_v0->unk28 = (f32) (second half of f64);
    temp_v0->unk18 = (bitwise f32) sp0;
    temp_v0->unk4 = (void *) (sub_0d9a0000 + 0x23A0);
    temp_v0->unk8 = (s32) (temp_v0->unk8 | 0x14);
    sub_0d990000((f32 *) sp10, (f32 *) temp_v0, sp10->unk8, 0);
    return 1;
}

s32 RenderFunc_ReadbackDepth(void *arg0, void *arg1) {
    s64 spA0;
    s32 sp9C;
    s32 sp98;
    s32 sp94;
    s32 sp90;
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    s32 sp60;
    s32 sp54;
    s32 sp48;
    s32 sp40;
    s32 sp3C;
    s32 sp38;
    void *sp34;
    s32 sp30;
    s64 sp28;                                       /* compiler-managed */
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    f32 *temp_at;
    f32 *var_a3;
    f32 var_a6;
    s32 *temp_t1;
    s32 temp_f0;
    s32 temp_f12;
    s32 temp_f1;
    s32 temp_t0;
    s32 var_a1;
    s32 var_a2;
    u64 var_a7;
    void *temp_s2;
    void *var_a4;

    temp_s2 = *(void **)0x1010;
    temp_at = arg0->unk48;
    __glOdysseyImageCalcXferReadParams(temp_at->unk8, temp_at->unkC, arg0->unk44, sp);
    sp1C = 0;
    sp18 = 0;
    temp_f1 = (s32) (M2C_ERROR(/* unknown instruction: movf.s $f1, $f3, $fcc3 */) - M2C_ERROR(/* unknown instruction: movf.s $f2, $f3, $fcc2 */));
    sp20 = temp_f1;
    temp_f0 = (s32) (M2C_ERROR(/* unknown instruction: movf.s $f0, $f3, $fcc1 */) - M2C_ERROR(/* unknown instruction: movf.s $f2, $f3, $fcc0 */));
    sp24 = temp_f0;
    sp28 = 0;
    sp28.unk38 = 0;
    sp28.unk30 = 0;
    sp28.unk28 = 0;
    sp28.unk20 = 0;
    sp28.unk18 = 0;
    sp28.unk10 = 0;
    sp28.unk8 = 0;
    sp48 = 1;
    sp40 = 1;
    sp38 = ((temp_f1 < 0) ? 0 : temp_f1) - ((temp_f1 > 0) ? 0 : temp_f1);
    sp28 = 1;
    unksp2C = 0;
    sp60 = 0;
    var_a7 = temp_f0 > 0;
    sp30 = spC;
    sp3C = ((temp_f0 < 0) ? 0 : temp_f0) - ((var_a7 != 0) ? 0 : temp_f0);
    var_a4 = sp10;
    sp34 = var_a4;
    var_a3 = arg0->unk48;
    var_a6 = 7.182e-42f;
    if (var_a3->unk20 != 1) {
        goto block_1;
    }
    var_a7 = (u64) var_a3->unkC;
    if ((var_a7 == 0x1405) && (var_a4 == (void *)0x1405) && ((f64) arg0->unk18 == 1.0) && ((f64) arg0->unk28 == (second half of f64)) && (temp_s2->unk47C == 0) && (// Error: negative shift count, // At instruction: bltz $t1, .L0d9a2500, M2C_ERROR()) && (temp_s2->unk478 == 0)) {
        sp68 = arg1->unk0;
        sp6C = arg1->unk4;
        sp70 = arg1->unk8;
        sp74 = arg1->unkC;
        sp78 = arg1->unk10;
        sp7C = arg1->unk14;
        sp80 = arg1->unk18;
        sp84 = arg1->unk1C;
        var_a7 = (u64) arg0->unk48;
        spA0 = 0;
        var_a4 = &sp28 + 4;
        var_a6 = 1.1e-44f;
        var_a2 = 4;
        var_a1 = 0xE;
        var_a3 = var_a7 + 4;
        sp28.unk0 = (s32) *var_a7;
        do {
            var_a1 -= 2;
            *(var_a2 + &sp28) = *(var_a2 + var_a7);
            temp_t1 = var_a2 + var_a4;
            temp_t0 = *(var_a2 + var_a3);
            var_a2 += 8;
            *temp_t1 = temp_t0;
        } while (var_a1 > 0);
    } else {
block_1:
        sp54 = temp_s2->unkA738;
        sp68 = arg1->unk0;
        sp6C = arg1->unk4;
        spA0 = 1;
        sp70 = arg1->unk8;
        sp84 = (f32) temp_f0;
        sp80 = (f32) temp_f1;
        sp7C = 0.0f;
        sp78 = 0.0f;
        sp74 = arg1->unkC;
    }
    __glOdysseyImageMovePixelsDMAtoHost((s64) &sp28, (s64) arg0->unk44, &sp68, (bitwise f32) var_a3, (bitwise f32) var_a4, (bitwise f32) &sp28, var_a6, var_a7);
    if (spA0 & 0xFF) {
        temp_f12 = (s32) arg1->unk10;
        sp90 = temp_f12;
        sp94 = (s32) arg1->unk14;
        sp98 = (s32) arg1->unk18;
        sp9C = (s32) arg1->unk1C;
        arg0->unk48->unk1C = (s8) ((temp_s2->unk704 & 0x20000) != 0);
        __glOdysseyImageConvertHostImage(arg0->unk48, &sp90, &sp28, &sp18, arg0 + 0x18, arg0 + 0x28, 0U, temp_f12);
        arg0->unk48->unk1C = 0;
        return 1;
    }
    return 1;
}

s32 ImageChainAddOpReadbackStencil(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s64 temp_v0;

    sp0 = arg0;
    sp8 = arg1;
    sp10 = arg2;
    sp18 = arg3;
    temp_v0 = sub_0d990000();
    if (temp_v0 == 0) {
        return 0;
    }
    temp_v0->unkC = 0;
    temp_v0->unk0 = 0x13;
    temp_v0->unk3E = (s8) sp18;
    temp_v0->unk4 = (void *) (sub_0d9a0000 + 0x27E0);
    temp_v0->unk8 = (s32) (temp_v0->unk8 | 0x14);
    temp_v0->unk28 = (f32) sp10;
    temp_v0->unk18 = (f32) sp8;
    sub_0d990000((f32 *) sp0, (f32 *) temp_v0, sp0->unk8, 0);
    return 1;
}

s32 RenderFunc_ReadbackStencil(void *arg0, s64 arg1) {
    s64 sp90;
    s32 sp8C;
    s32 sp88;
    s32 sp84;
    s32 sp80;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    s32 sp50;
    s32 sp44;
    s32 sp3C;
    f32 sp30;
    s32 sp2C;
    s32 sp28;
    f32 sp24;
    s32 sp20;
    s64 sp18;                                       /* compiler-managed */
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    f32 sp4;
    f32 sp0;
    f32 *temp_a0;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_f2;
    s32 temp_f3;
    void *temp_s1;

    temp_s1 = *(void **)0x1010;
    if (arg0->unk18 == 0.0f) {
        sp90 = arg1;
        if (arg0->unk28 == 0.0f) {
            temp_a0 = arg0->unk48;
            if (arg0->unk3E != 1) {
                if (temp_a0->unkC != 0x1401) {
                    /* Duplicate return node #6. Try simplifying control flow for better match */
                    sp4 = 0.0f;
                    sp0 = 0.0f;
                    sp0 = arg0->unk18;
                    spC = 0;
                    sp8 = 0;
                    sp4 = arg0->unk28;
                    temp_f3 = (s32) (M2C_ERROR(/* unknown instruction: movf.s $f3, $f5, $fcc5 */) - M2C_ERROR(/* unknown instruction: movf.s $f4, $f5, $fcc4 */));
                    sp10 = temp_f3;
                    temp_f2 = (s32) (M2C_ERROR(/* unknown instruction: movf.s $f2, $f5, $fcc3 */) - M2C_ERROR(/* unknown instruction: movf.s $f4, $f5, $fcc2 */));
                    sp14 = temp_f2;
                    sp18 = 0;
                    sp18.unk38 = 0;
                    sp18.unk30 = 0;
                    sp18.unk28 = 0;
                    sp18.unk20 = 0;
                    sp18.unk18 = 0;
                    sp18.unk10 = 0;
                    sp18.unk8 = 0;
                    sp3C = 0;
                    sp30 = 1e-45f;
                    sp24 = 7.176e-42f;
                    sp20 = 0x1901;
                    sp28 = ((temp_f3 < 0) ? 0 : temp_f3) - ((temp_f3 > 0) ? 0 : temp_f3);
                    sp18 = 1;
                    unksp1C = 0;
                    sp50 = 0;
                    temp_a7 = (temp_f2 > 0) ? 0 : temp_f2;
                    temp_a6 = ((temp_f2 < 0) ? 0 : temp_f2) - temp_a7;
                    sp2C = temp_a6;
                    sp44 = temp_s1->unkA738;
                    sp58 = sp90->unk0;
                    sp5C = sp90->unk4;
                    sp60 = sp90->unk8;
                    sp74 = (f32) temp_f2;
                    sp70 = (f32) temp_f3;
                    sp6C = 0.0f;
                    sp68 = 0.0f;
                    sp64 = sp90->unkC;
                    __glOdysseyImageMovePixelsDMAtoHost((s64) &sp18, (s64) arg0->unk44, &sp58, 8.97e-42f, 1e-45f, 7.176e-42f, (bitwise f32) temp_a6, (u64) temp_a7);
                    sp80 = (s32) sp90->unk10;
                    sp84 = (s32) sp90->unk14;
                    sp88 = (s32) sp90->unk18;
                    sp8C = (s32) sp90->unk1C;
                    arg0->unk48->unk1C = (s8) ((0x20000 & temp_s1->unk704) != 0);
                    __glOdysseyImageConvertHostImage(arg0->unk48, &sp80, &sp18, &sp8, sp, &sp4, arg0->unk3E);
                    arg0->unk48->unk1C = 0;
                    return 1;
                }
                if (temp_s1->unk47C == 0) {
                    // Error: negative shift count
                    // At instruction: bltz $a2, .L0d9a2860
                    if (M2C_ERROR()) {
                        __glOdysseyImageMovePixelsDMAtoHost((s64) temp_a0, (s64) arg0->unk44, (f32 *) sp90, 1e-45f, 7.176e-42f);
                        return 1;
                    }
                }
                /* Duplicate return node #6. Try simplifying control flow for better match */
                sp4 = 0.0f;
                sp0 = 0.0f;
                sp0 = arg0->unk18;
                spC = 0;
                sp8 = 0;
                sp4 = arg0->unk28;
                temp_f3 = (s32) (M2C_ERROR(/* unknown instruction: movf.s $f3, $f5, $fcc5 */) - M2C_ERROR(/* unknown instruction: movf.s $f4, $f5, $fcc4 */));
                sp10 = temp_f3;
                temp_f2 = (s32) (M2C_ERROR(/* unknown instruction: movf.s $f2, $f5, $fcc3 */) - M2C_ERROR(/* unknown instruction: movf.s $f4, $f5, $fcc2 */));
                sp14 = temp_f2;
                sp18 = 0;
                sp18.unk38 = 0;
                sp18.unk30 = 0;
                sp18.unk28 = 0;
                sp18.unk20 = 0;
                sp18.unk18 = 0;
                sp18.unk10 = 0;
                sp18.unk8 = 0;
                sp3C = 0;
                sp30 = 1e-45f;
                sp24 = 7.176e-42f;
                sp20 = 0x1901;
                sp28 = ((temp_f3 < 0) ? 0 : temp_f3) - ((temp_f3 > 0) ? 0 : temp_f3);
                sp18 = 1;
                unksp1C = 0;
                sp50 = 0;
                temp_a7 = (temp_f2 > 0) ? 0 : temp_f2;
                temp_a6 = ((temp_f2 < 0) ? 0 : temp_f2) - temp_a7;
                sp2C = temp_a6;
                sp44 = temp_s1->unkA738;
                sp58 = sp90->unk0;
                sp5C = sp90->unk4;
                sp60 = sp90->unk8;
                sp74 = (f32) temp_f2;
                sp70 = (f32) temp_f3;
                sp6C = 0.0f;
                sp68 = 0.0f;
                sp64 = sp90->unkC;
                __glOdysseyImageMovePixelsDMAtoHost((s64) &sp18, (s64) arg0->unk44, &sp58, 8.97e-42f, 1e-45f, 7.176e-42f, (bitwise f32) temp_a6, (u64) temp_a7);
                sp80 = (s32) sp90->unk10;
                sp84 = (s32) sp90->unk14;
                sp88 = (s32) sp90->unk18;
                sp8C = (s32) sp90->unk1C;
                arg0->unk48->unk1C = (s8) ((0x20000 & temp_s1->unk704) != 0);
                __glOdysseyImageConvertHostImage(arg0->unk48, &sp80, &sp18, &sp8, sp, &sp4, arg0->unk3E);
                arg0->unk48->unk1C = 0;
                return 1;
            }
            /* Duplicate return node #6. Try simplifying control flow for better match */
            sp4 = 0.0f;
            sp0 = 0.0f;
            sp0 = arg0->unk18;
            spC = 0;
            sp8 = 0;
            sp4 = arg0->unk28;
            temp_f3 = (s32) (M2C_ERROR(/* unknown instruction: movf.s $f3, $f5, $fcc5 */) - M2C_ERROR(/* unknown instruction: movf.s $f4, $f5, $fcc4 */));
            sp10 = temp_f3;
            temp_f2 = (s32) (M2C_ERROR(/* unknown instruction: movf.s $f2, $f5, $fcc3 */) - M2C_ERROR(/* unknown instruction: movf.s $f4, $f5, $fcc2 */));
            sp14 = temp_f2;
            sp18 = 0;
            sp18.unk38 = 0;
            sp18.unk30 = 0;
            sp18.unk28 = 0;
            sp18.unk20 = 0;
            sp18.unk18 = 0;
            sp18.unk10 = 0;
            sp18.unk8 = 0;
            sp3C = 0;
            sp30 = 1e-45f;
            sp24 = 7.176e-42f;
            sp20 = 0x1901;
            sp28 = ((temp_f3 < 0) ? 0 : temp_f3) - ((temp_f3 > 0) ? 0 : temp_f3);
            sp18 = 1;
            unksp1C = 0;
            sp50 = 0;
            temp_a7 = (temp_f2 > 0) ? 0 : temp_f2;
            temp_a6 = ((temp_f2 < 0) ? 0 : temp_f2) - temp_a7;
            sp2C = temp_a6;
            sp44 = temp_s1->unkA738;
            sp58 = sp90->unk0;
            sp5C = sp90->unk4;
            sp60 = sp90->unk8;
            sp74 = (f32) temp_f2;
            sp70 = (f32) temp_f3;
            sp6C = 0.0f;
            sp68 = 0.0f;
            sp64 = sp90->unkC;
            __glOdysseyImageMovePixelsDMAtoHost((s64) &sp18, (s64) arg0->unk44, &sp58, 8.97e-42f, 1e-45f, 7.176e-42f, (bitwise f32) temp_a6, (u64) temp_a7);
            sp80 = (s32) sp90->unk10;
            sp84 = (s32) sp90->unk14;
            sp88 = (s32) sp90->unk18;
            sp8C = (s32) sp90->unk1C;
            arg0->unk48->unk1C = (s8) ((0x20000 & temp_s1->unk704) != 0);
            __glOdysseyImageConvertHostImage(arg0->unk48, &sp80, &sp18, &sp8, sp, &sp4, arg0->unk3E);
            arg0->unk48->unk1C = 0;
            return 1;
        }
        /* Duplicate return node #6. Try simplifying control flow for better match */
        sp4 = 0.0f;
        sp0 = 0.0f;
        sp0 = arg0->unk18;
        spC = 0;
        sp8 = 0;
        sp4 = arg0->unk28;
        temp_f3 = (s32) (M2C_ERROR(/* unknown instruction: movf.s $f3, $f5, $fcc5 */) - M2C_ERROR(/* unknown instruction: movf.s $f4, $f5, $fcc4 */));
        sp10 = temp_f3;
        temp_f2 = (s32) (M2C_ERROR(/* unknown instruction: movf.s $f2, $f5, $fcc3 */) - M2C_ERROR(/* unknown instruction: movf.s $f4, $f5, $fcc2 */));
        sp14 = temp_f2;
        sp18 = 0;
        sp18.unk38 = 0;
        sp18.unk30 = 0;
        sp18.unk28 = 0;
        sp18.unk20 = 0;
        sp18.unk18 = 0;
        sp18.unk10 = 0;
        sp18.unk8 = 0;
        sp3C = 0;
        sp30 = 1e-45f;
        sp24 = 7.176e-42f;
        sp20 = 0x1901;
        sp28 = ((temp_f3 < 0) ? 0 : temp_f3) - ((temp_f3 > 0) ? 0 : temp_f3);
        sp18 = 1;
        unksp1C = 0;
        sp50 = 0;
        temp_a7 = (temp_f2 > 0) ? 0 : temp_f2;
        temp_a6 = ((temp_f2 < 0) ? 0 : temp_f2) - temp_a7;
        sp2C = temp_a6;
        sp44 = temp_s1->unkA738;
        sp58 = sp90->unk0;
        sp5C = sp90->unk4;
        sp60 = sp90->unk8;
        sp74 = (f32) temp_f2;
        sp70 = (f32) temp_f3;
        sp6C = 0.0f;
        sp68 = 0.0f;
        sp64 = sp90->unkC;
        __glOdysseyImageMovePixelsDMAtoHost((s64) &sp18, (s64) arg0->unk44, &sp58, 8.97e-42f, 1e-45f, 7.176e-42f, (bitwise f32) temp_a6, (u64) temp_a7);
        sp80 = (s32) sp90->unk10;
        sp84 = (s32) sp90->unk14;
        sp88 = (s32) sp90->unk18;
        sp8C = (s32) sp90->unk1C;
        arg0->unk48->unk1C = (s8) ((0x20000 & temp_s1->unk704) != 0);
        __glOdysseyImageConvertHostImage(arg0->unk48, &sp80, &sp18, &sp8, sp, &sp4, arg0->unk3E);
        arg0->unk48->unk1C = 0;
        return 1;
    }
    sp90 = arg1;
    sp4 = 0.0f;
    sp0 = 0.0f;
    sp0 = arg0->unk18;
    spC = 0;
    sp8 = 0;
    sp4 = arg0->unk28;
    temp_f3 = (s32) (M2C_ERROR(/* unknown instruction: movf.s $f3, $f5, $fcc5 */) - M2C_ERROR(/* unknown instruction: movf.s $f4, $f5, $fcc4 */));
    sp10 = temp_f3;
    temp_f2 = (s32) (M2C_ERROR(/* unknown instruction: movf.s $f2, $f5, $fcc3 */) - M2C_ERROR(/* unknown instruction: movf.s $f4, $f5, $fcc2 */));
    sp14 = temp_f2;
    sp18 = 0;
    sp18.unk38 = 0;
    sp18.unk30 = 0;
    sp18.unk28 = 0;
    sp18.unk20 = 0;
    sp18.unk18 = 0;
    sp18.unk10 = 0;
    sp18.unk8 = 0;
    sp3C = 0;
    sp30 = 1e-45f;
    sp24 = 7.176e-42f;
    sp20 = 0x1901;
    sp28 = ((temp_f3 < 0) ? 0 : temp_f3) - ((temp_f3 > 0) ? 0 : temp_f3);
    sp18 = 1;
    unksp1C = 0;
    sp50 = 0;
    temp_a7 = (temp_f2 > 0) ? 0 : temp_f2;
    temp_a6 = ((temp_f2 < 0) ? 0 : temp_f2) - temp_a7;
    sp2C = temp_a6;
    sp44 = temp_s1->unkA738;
    sp58 = sp90->unk0;
    sp5C = sp90->unk4;
    sp60 = sp90->unk8;
    sp74 = (f32) temp_f2;
    sp70 = (f32) temp_f3;
    sp6C = 0.0f;
    sp68 = 0.0f;
    sp64 = sp90->unkC;
    __glOdysseyImageMovePixelsDMAtoHost((s64) &sp18, (s64) arg0->unk44, &sp58, 8.97e-42f, 1e-45f, 7.176e-42f, (bitwise f32) temp_a6, (u64) temp_a7);
    sp80 = (s32) sp90->unk10;
    sp84 = (s32) sp90->unk14;
    sp88 = (s32) sp90->unk18;
    sp8C = (s32) sp90->unk1C;
    arg0->unk48->unk1C = (s8) ((0x20000 & temp_s1->unk704) != 0);
    __glOdysseyImageConvertHostImage(arg0->unk48, &sp80, &sp18, &sp8, sp, &sp4, arg0->unk3E);
    arg0->unk48->unk1C = 0;
    return 1;
}

s32 ImageChainAddOpCopyDepth(s64 arg0, f64 fparg1, f64 fparg2) {
    s64 sp10;
    f64 sp8;
    f64 sp0;
    s64 temp_v0;

    sp10 = arg0;
    sp0 = fparg1;
    sp8 = fparg2;
    temp_v0 = sub_0d990000();
    if (temp_v0 == 0) {
        return 0;
    }
    temp_v0->unkC = 1;
    temp_v0->unk0 = 0x14;
    temp_v0->unk28 = (f32) (second half of f64);
    temp_v0->unk18 = (bitwise f32) sp0;
    temp_v0->unk4 = (void *) (sub_0d9a0000 + 0x2B40);
    temp_v0->unk8 = (s32) (temp_v0->unk8 | 0x1C);
    sub_0d990000((f32 *) sp10, (f32 *) temp_v0, sp10->unk4, 1);
    return 1;
}

s32 RenderFunc_CopyDepth(void *arg0, void *arg1) {
    s64 sp170;
    s64 sp168;
    s64 sp160;
    s64 sp158;
    s64 sp150;
    f64 sp148;
    f32 sp13C;
    f32 sp138;
    f32 sp134;
    f32 sp130;
    f32 sp12C;
    f32 sp128;
    f32 sp124;
    f32 sp120;
    s32 sp10C;
    s32 spF4;
    s32 spF0;
    s64 spE0;
    s32 spDC;
    s32 spD8;
    s32 spD4;
    s32 spD0;
    s32 spBC;
    s8 spAC;
    s32 sp9C;
    s64 sp90;
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    s32 sp60;
    s32 sp54;
    s32 sp48;
    s32 sp40;
    s32 sp3C;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s64 sp28;                                       /* compiler-managed */
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 var_f16;
    f32 var_f22;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a5_4;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_at;
    s32 temp_f2;
    s32 temp_f3;
    s32 temp_ra;
    s32 temp_s5;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_s5;
    s64 temp_a7;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    temp_f4 = temp_s0->unk2E8;
    var_f16 = temp_f4;
    if (temp_f4 < 0.0f) {
        var_f16 = -temp_f4;
    }
    temp_f4_2 = temp_s0->unk2EC;
    if (temp_f4_2 < 0.0f) {
        var_f22 = -temp_f4_2;
    } else {
        var_f22 = temp_f4_2;
    }
    if (((f64) var_f16 != 1.0) || ((f64) var_f22 != 1.0)) {
        sp170 = 1;
        sp148 = (bitwise f64) var_f16;
    } else {
        sp170 = 0;
        sp148 = (bitwise f64) var_f16;
    }
    __glOdysseyImageCalcXferReadParams(0x1902, 0x1405, arg0->unk44, sp, var_f16);
    sp1C = 0;
    sp18 = 0;
    temp_f3 = (s32) (M2C_ERROR(/* unknown instruction: movf.s $f3, $f5, $fcc7 */) - M2C_ERROR(/* unknown instruction: movf.s $f4, $f5, $fcc6 */));
    sp20 = temp_f3;
    temp_f2 = (s32) (M2C_ERROR(/* unknown instruction: movf.s $f2, $f5, $fcc5 */) - M2C_ERROR(/* unknown instruction: movf.s $f4, $f5, $fcc4 */));
    sp24 = temp_f2;
    sp28 = 0;
    sp28.unk38 = 0;
    sp28.unk30 = 0;
    sp28.unk28 = 0;
    sp28.unk20 = 0;
    sp28.unk18 = 0;
    sp28.unk10 = 0;
    sp28.unk8 = 0;
    temp_a3 = temp_f3 < 0;
    sp48 = 1;
    sp40 = 1;
    sp38 = ((temp_a3 != 0) ? 0 : temp_f3) - ((temp_f3 > 0) ? 0 : temp_f3);
    sp28 = 1;
    unksp2C = 0;
    sp60 = 0;
    sp34 = sp10;
    sp30 = spC;
    sp3C = ((temp_f2 < 0) ? 0 : temp_f2) - ((temp_f2 > 0) ? 0 : temp_f2);
    sp54 = temp_s0->unkA738;
    if (sp10 != 0x1405) {
        var_s5 = 1;
    } else if (((f64) arg0->unk18 == 1.0) || (// Error: Tried to use a double-precision instruction with odd-numbered float register $f29, // At instruction: c.eq.d $f27, $f29, M2C_ERROR())) {
        // Error: negative shift count
        // At instruction: bltz $t9, .L0d9a2cf8
        if (M2C_ERROR()) {
            var_s5 = 0;
        }
    }
    sp68 = arg1->unk0;
    sp6C = arg1->unk4;
    sp70 = arg1->unk8;
    sp84 = (f32) temp_f2;
    sp80 = (f32) temp_f3;
    sp7C = 0.0f;
    sp78 = 0.0f;
    sp74 = arg1->unkC;
    __glOdysseyImageMovePixelsDMAtoHost((s64) &sp28, (s64) arg0->unk44, &sp68, (bitwise f32) temp_a3, (bitwise f32) temp_f2, (bitwise f32) temp_f3);
    if (var_s5 & 0xFF) {
        sp90 = (s64) sp28;
        temp_a7 = sp28.unk30;
        temp_a5 = sp28.unk38;
        sp90.unk38 = temp_a5;
        sp90.unk30 = temp_a7;
        sp90.unk28 = (s64) sp28.unk28;
        sp90.unk20 = (s64) sp28.unk20;
        sp90.unk18 = (s64) sp28.unk18;
        sp90.unk10 = (s64) sp28.unk10;
        sp90.unk8 = (s64) sp28.unk8;
        sp9C = 0x1405;
        temp_a3_2 = temp_s0->unk11E1C;
        temp_a2 = temp_s0->unk11E18;
        temp_v0 = temp_s0->unk0(temp_s0, temp_a2 * temp_a3_2 * 0x10, temp_a2, temp_a3_2, 0x1405, temp_a5, &sp90, temp_a7);
        spBC = temp_v0;
        if (temp_v0 != 0) {
            spAC = (0x20000 & temp_s0->unk704) != 0;
            __glOdysseyImageConvertHostImage((f32 *) &sp90, &sp18, &sp28, &sp18, arg0 + 0x18, arg0 + 0x28, 0U);
            if (0x20000 & temp_s0->unk704) {
                spAC = 0;
                sp24 = (s32) ((f64) (second half of f64) * (second half of f64));
            }
            goto block_15;
        }
        __glSetError(0x505);
        return 0;
    }
    sp90 = (s64) sp28;
    sp90.unk38 = (s32) sp28.unk38;
    sp90.unk30 = (s64) sp28.unk30;
    sp90.unk28 = (s64) sp28.unk28;
    sp90.unk20 = (s64) sp28.unk20;
    sp90.unk18 = (s64) sp28.unk18;
    sp90.unk10 = (s64) sp28.unk10;
    sp90.unk8 = (s64) sp28.unk8;
block_15:
    if (sp170 & 0xFF) {
        ceilf((f32) ((f64) arg1->unk10 + -0.5), second half of f64);
        sp160 = second half of f64;
        ceilf((f32) ((f64) arg1->unk14 + -0.5), (? **) (second half of f64));
        ceilf((f32) ((f64) arg1->unk18 + -0.5), second half of f64);
        sp168 = second half of f64;
        temp_t1 = (s32) ceilf((f32) ((f64) arg1->unk1C + -0.5), (? **) (second half of f64));
        spD4 = 0;
        spD0 = 0;
        spE0 = sp90;
        temp_a7_2 = ((sp168 < sp160) ? sp160 : sp168) - ((sp160 >= sp168) ? sp168 : sp160);
        spD8 = temp_a7_2;
        temp_t0 = ((temp_t1 < (s32) (second half of f64)) ? (second half of f64) : (? **) temp_t1) - (((s32) (second half of f64) >= temp_t1) ? temp_t1 : (s32) (second half of f64));
        spDC = temp_t0;
        spE0.unk38 = (s32) sp90.unk38;
        spE0.unk30 = (s64) sp90.unk30;
        temp_a6 = (temp_a7_2 > 0) ? 0 : temp_a7_2;
        spE0.unk28 = (s64) sp90.unk28;
        spE0.unk20 = (s64) sp90.unk20;
        spE0.unk18 = (s64) sp90.unk18;
        spE0.unk10 = (s64) sp90.unk10;
        temp_a4 = temp_t0 > 0;
        spE0.unk8 = (s64) sp90.unk8;
        temp_a3_3 = (temp_a4 != 0) ? 0 : temp_t0;
        temp_a5_2 = ((temp_a7_2 < 0) ? 0 : temp_a7_2) - temp_a6;
        spF0 = temp_a5_2;
        temp_a2_2 = ((temp_t0 < 0) ? 0 : temp_t0) - temp_a3_3;
        spF4 = temp_a2_2;
        temp_v0_2 = temp_s0->unk0(temp_s0, temp_a7_2 * temp_t0 * 4, temp_a2_2, temp_a3_3, temp_a4, temp_a5_2, (s64 *) temp_a6, (s64) temp_a7_2);
        sp10C = temp_v0_2;
        if (temp_v0_2 != 0) {
            __glOdysseyImageZoomHostImage(&spE0, &spD0, (f32 *) &sp90, &sp18);
            temp_v0_3 = temp_s0->unk7C00;
            temp_s5 = temp_s0->unk7C5C;
            temp_a7_3 = temp_v0_3 & ~0xC00;
            temp_s0->unk7C00 = temp_a7_3;
            temp_a6_2 = temp_s5 & ~0xFF000;
            temp_s0->unk7C5C = temp_a6_2;
            temp_a5_3 = temp_s0->unk16960 | 0x84;
            temp_s0->unk16960 = temp_a5_3;
            *(s32 *)0x1018 = 2;
            arg0->unk48->unkC = (s8) ((temp_s0->unk704 & 0x20) != 0);
            sp12C = (f32) spDC;
            sp128 = (f32) spD8;
            sp124 = (f32) spD4;
            sp120 = (f32) spD0;
            sp130 = arg1->unk10;
            sp134 = arg1->unk14;
            sp138 = arg1->unk18;
            sp158 = (s64) temp_v0_3;
            sp13C = arg1->unk1C;
            __glOdysseyImageMovePixelsDMAtoGfx(arg0->unk48, (f32 *) &spE0, (s64) &sp120, 1, 1, (s64) temp_a5_3, temp_a6_2, (s64) temp_a7_3);
            sp150 = (s64) temp_s5;
            if (sp10C != 0) {
                temp_s0->unkC(temp_s0, sp10C);
            }
            goto block_19;
        }
        __glSetError(0x505);
        return 0;
    }
    temp_ra = temp_s0->unk7C00;
    temp_at = temp_s0->unk7C5C;
    temp_a6_3 = temp_ra & ~0xC00;
    temp_s0->unk7C00 = temp_a6_3;
    temp_a5_4 = temp_at & ~0xFF000;
    temp_s0->unk7C5C = temp_a5_4;
    temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x84);
    *(void *)0x1018 = 2;
    arg0->unk48->unkC = (s8) ((temp_s0->unk704 & 0x20) != 0);
    sp12C = (f32) sp24;
    sp128 = (f32) sp20;
    sp124 = (f32) sp1C;
    sp120 = (f32) sp18;
    sp130 = arg1->unk10;
    sp150 = (s64) temp_at;
    sp134 = arg1->unk14;
    sp138 = arg1->unk18;
    sp158 = (s64) temp_ra;
    sp13C = arg1->unk1C;
    __glOdysseyImageMovePixelsDMAtoGfx(arg0->unk48, (f32 *) &sp90, (s64) &sp120, 1, 1, (s64) temp_a5_4, temp_a6_3);
block_19:
    temp_s0->unk7C5C = (s32) sp150;
    temp_s0->unk7C00 = (s32) sp158;
    temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x84);
    *(void *)0x1018 = 2;
    arg0->unk48->unkC = 0;
    if (sp54 != spBC) {
        if (spBC != 0) {
            temp_s0->unkC(temp_s0, spBC);
        }
    }
    return 1;
}

s32 ImageChainAddOpCopyStencil(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s64 temp_v0;

    sp0 = arg0;
    sp8 = arg1;
    sp10 = arg2;
    sp18 = arg3;
    temp_v0 = sub_0d990000();
    if (temp_v0 == 0) {
        return 0;
    }
    temp_v0->unk0 = 0x15;
    temp_v0->unk3E = (s8) sp18;
    temp_v0->unk8 = (s32) (temp_v0->unk8 | 0x1C);
    temp_v0->unkC = 1;
    temp_v0->unk4 = (void *) (sub_0d9a0000 + 0x3400);
    temp_v0->unk28 = (f32) sp10;
    temp_v0->unk18 = (f32) sp8;
    sub_0d990000((f32 *) sp0, (f32 *) temp_v0, sp0->unk4, 1);
    return 1;
}

s32 RenderFunc_CopyStencil(void *arg0, void *arg1) {
    s64 sp168;
    s64 sp160;
    s64 sp158;
    s64 sp150;
    s64 sp148;
    s64 sp140;
    s64 sp138;
    f64 sp130;
    f32 sp124;
    f32 sp120;
    f32 sp11C;
    f32 sp118;
    f32 sp114;
    f32 sp110;
    f32 sp10C;
    f32 sp108;
    s32 spF4;
    s32 spDC;
    s32 spD8;
    s64 spC8;
    s32 spC4;
    s32 spC0;
    s32 spBC;
    s32 spB8;
    s32 spA4;
    s32 sp9C;
    s8 sp94;
    s32 sp84;
    s64 sp78;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    s32 sp48;
    s32 sp3C;
    s32 sp34;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s64 sp10;                                       /* compiler-managed */
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 var_f16;
    f32 var_f22;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_f13;
    s32 temp_f2;
    s32 temp_f3;
    s32 temp_t0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    void *temp_s0;

    temp_s0 = *(void **)0x1010;
    temp_f4 = temp_s0->unk2E8;
    var_f16 = temp_f4;
    if (temp_f4 < 0.0f) {
        var_f16 = -temp_f4;
    }
    temp_f4_2 = temp_s0->unk2EC;
    if (temp_f4_2 < 0.0f) {
        var_f22 = -temp_f4_2;
    } else {
        var_f22 = temp_f4_2;
    }
    if (((f64) var_f16 != 1.0) || ((f64) var_f22 != 1.0)) {
        sp168 = 1;
        sp130 = (bitwise f64) var_f16;
    } else {
        sp168 = 0;
        sp130 = (bitwise f64) var_f16;
    }
    sp4 = 0;
    sp0 = 0;
    temp_f3 = (s32) (M2C_ERROR(/* unknown instruction: movf.s $f3, $f5, $fcc7 */) - M2C_ERROR(/* unknown instruction: movf.s $f4, $f5, $fcc6 */));
    sp8 = temp_f3;
    temp_f2 = (s32) (M2C_ERROR(/* unknown instruction: movf.s $f2, $f5, $fcc5 */) - M2C_ERROR(/* unknown instruction: movf.s $f4, $f5, $fcc4 */));
    spC = temp_f2;
    sp10 = 0;
    sp10.unk38 = 0;
    sp10.unk30 = 0;
    sp10.unk28 = 0;
    sp10.unk20 = 0;
    sp10.unk18 = 0;
    sp10.unk10 = 0;
    sp10.unk8 = 0;
    sp34 = 0;
    sp28 = 1;
    temp_a3 = temp_f3 > 0;
    sp1C = 0x1401;
    sp18 = 0x1901;
    sp20 = ((temp_f3 < 0) ? 0 : temp_f3) - ((temp_a3 != 0) ? 0 : temp_f3);
    sp10 = 1;
    unksp14 = 0;
    sp48 = 0;
    sp24 = ((temp_f2 < 0) ? 0 : temp_f2) - ((temp_f2 > 0) ? 0 : temp_f2);
    sp3C = temp_s0->unkA738;
    sp50 = arg1->unk0;
    sp54 = arg1->unk4;
    sp58 = arg1->unk8;
    sp6C = (f32) temp_f2;
    sp68 = (f32) temp_f3;
    sp64 = 0.0f;
    sp60 = 0.0f;
    sp5C = arg1->unkC;
    __glOdysseyImageMovePixelsDMAtoHost((s64) &sp10, (s64) arg0->unk44, &sp50, (bitwise f32) temp_a3, var_f16);
    sp78 = (s64) sp10;
    temp_a6 = sp10.unk38;
    sp78.unk38 = temp_a6;
    sp78.unk30 = (s64) sp10.unk30;
    sp78.unk28 = (s64) sp10.unk28;
    sp78.unk20 = (s64) sp10.unk20;
    sp78.unk18 = (s64) sp10.unk18;
    sp78.unk10 = (s64) sp10.unk10;
    sp78.unk8 = (s64) sp10.unk8;
    sp9C = 1;
    sp84 = 0x1405;
    temp_a3_2 = temp_s0->unk11E1C;
    temp_a2 = temp_s0->unk11E18;
    temp_v0 = temp_s0->unk0(temp_s0, temp_a2 * temp_a3_2 * 0x10, temp_a2, temp_a3_2, 1, 0x1405, temp_a6, &sp78);
    spA4 = temp_v0;
    if (temp_v0 != 0) {
        sp94 = (0x20000 & temp_s0->unk704) != 0;
        __glOdysseyImageConvertHostImage((f32 *) &sp78, sp, &sp10, sp, arg0 + 0x18, arg0 + 0x28, arg0->unk3E);
        temp_a1 = temp_s0->unk704;
        if (0x20000 & temp_a1) {
            sp94 = 0;
            spC = (s32) ((f64) spC * 0.5);
        }
        temp_a3_3 = sp168 & 0xFF;
        if (temp_a3_3 != 0) {
            ceilf((bitwise f32) sp168, (? **) temp_a1, (? **) spC, (bitwise f32) temp_a3_3, (f32) ((f64) arg1->unk10 + -0.5), second half of f64);
            sp150 = second half of f64;
            ceilf((f32) ((f64) arg1->unk14 + -0.5), (? **) (second half of f64));
            sp158 = second half of f64;
            ceilf((f32) ((f64) arg1->unk18 + -0.5), (? **) (second half of f64));
            sp160 = second half of f64;
            temp_f13 = (s32) ceilf((f32) ((f64) arg1->unk1C + -0.5), (? **) (second half of f64));
            spBC = 0;
            spB8 = 0;
            spC8 = sp78;
            temp_a7 = ((sp160 < sp150) ? sp150 : sp160) - ((sp150 >= sp160) ? sp160 : sp150);
            spC0 = temp_a7;
            temp_t0 = ((temp_f13 < sp158) ? sp158 : (s64) temp_f13) - ((sp158 >= temp_f13) ? temp_f13 : (s32) sp158);
            spC4 = temp_t0;
            spC8.unk38 = (s32) sp78.unk38;
            spC8.unk30 = (s64) sp78.unk30;
            temp_a6_2 = (temp_a7 > 0) ? 0 : temp_a7;
            spC8.unk28 = (s64) sp78.unk28;
            spC8.unk20 = (s64) sp78.unk20;
            spC8.unk18 = (s64) sp78.unk18;
            spC8.unk10 = (s64) sp78.unk10;
            temp_a4 = temp_t0 > 0;
            spC8.unk8 = (s64) sp78.unk8;
            temp_a3_4 = (temp_a4 != 0) ? 0 : temp_t0;
            temp_a5 = ((temp_a7 < 0) ? 0 : temp_a7) - temp_a6_2;
            spD8 = temp_a5;
            temp_a2_2 = ((temp_t0 < 0) ? 0 : temp_t0) - temp_a3_4;
            spDC = temp_a2_2;
            temp_v0_2 = temp_s0->unk0(temp_s0, temp_a7 * temp_t0 * 4, temp_a2_2, temp_a3_4, temp_a4, temp_a5, temp_a6_2, (s64 *) temp_a7);
            spF4 = temp_v0_2;
            if (temp_v0_2 != 0) {
                __glOdysseyImageZoomHostImage(&spC8, &spB8, (f32 *) &sp78, sp);
                temp_a5_2 = temp_s0->unk7BFC;
                temp_a0 = temp_s0->unk7C5C;
                temp_s0->unk7BFC = (s32) ((((temp_s0->unkC9A != 0) << 0xF) & 0x8000) | (temp_a5_2 & ~0x8000));
                temp_v1 = temp_s0->unk7C00;
                temp_s0->unk7C5C = (s32) (temp_a0 & ~0x01000000 & ~0xFFF & ~0x100000 & ~0x200000 & ~0x400000 & ~0x800000);
                temp_s0->unk7C00 = (s32) (temp_v1 & ~0xC00);
                temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x86);
                *(s32 *)0x1018 = 2;
                arg0->unk48->unkC = (s8) ((temp_s0->unk704 & 0x20) != 0);
                sp114 = (f32) spC4;
                sp110 = (f32) spC0;
                sp10C = (f32) spBC;
                sp108 = (f32) spB8;
                sp148 = (s64) temp_a5_2;
                sp118 = arg1->unk10;
                sp140 = (s64) temp_a0;
                sp11C = arg1->unk14;
                sp120 = arg1->unk18;
                sp138 = (s64) temp_v1;
                sp124 = arg1->unk1C;
                __glOdysseyImageMovePixelsDMAtoGfx(arg0->unk48, (f32 *) &spC8, (s64) &sp108, 1, 0, (s64) temp_a5_2, spC4, (s64) spC0);
                if (spF4 != 0) {
                    temp_s0->unkC(temp_s0, spF4);
                }
                goto block_16;
            }
            __glSetError(0x505);
            return 0;
        }
        temp_a5_3 = temp_s0->unk7C00;
        temp_a7_2 = temp_s0->unk7BFC;
        temp_a6_3 = temp_s0->unk7C5C;
        temp_s0->unk7C00 = (s32) (temp_a5_3 & ~0xC00);
        temp_s0->unk7BFC = (s32) ((((temp_s0->unkC9A != 0) << 0xF) & 0x8000) | (temp_a7_2 & ~0x8000));
        temp_s0->unk7C5C = (s32) (temp_a6_3 & ~0x01000000 & ~0xFFF & ~0x100000 & ~0x200000 & ~0x400000 & ~0x800000);
        temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x86);
        *(void *)0x1018 = 2;
        arg0->unk48->unkC = (s8) ((temp_s0->unk704 & 0x20) != 0);
        sp114 = (f32) spC;
        sp110 = (f32) sp8;
        sp10C = (f32) sp4;
        sp108 = (f32) sp0;
        sp148 = (s64) temp_a7_2;
        sp118 = arg1->unk10;
        sp140 = (s64) temp_a6_3;
        sp11C = arg1->unk14;
        sp120 = arg1->unk18;
        sp138 = (s64) temp_a5_3;
        sp124 = arg1->unk1C;
        __glOdysseyImageMovePixelsDMAtoGfx(arg0->unk48, (f32 *) &sp78, (s64) &sp108, 1, 0, (s64) temp_a5_3, temp_a6_3, (s64) temp_a7_2);
block_16:
        temp_s0->unk7BFC = (s32) sp148;
        temp_s0->unk7C5C = (s32) sp140;
        temp_s0->unk7C00 = (s32) sp138;
        temp_s0->unk16960 = (s32) (temp_s0->unk16960 | 0x86);
        *(void *)0x1018 = 2;
        arg0->unk48->unkC = 0;
        if (spA4 != 0) {
            temp_s0->unkC(temp_s0, spA4, sp140, (s32) sp138);
        }
        return 1;
    }
    __glSetError(0x505);
    return 0;
}

s32 ImageChainAddOpDownloadColor(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s64 temp_v0;

    sp0 = arg0;
    sp10 = arg1;
    sp20 = arg2;
    sp28 = arg3;
    sp18 = arg4;
    sp8 = arg5;
    temp_v0 = sub_0d990000();
    if (temp_v0 == 0) {
        return 0;
    }
    temp_v0->unk0 = 0;
    temp_v0->unkC = 1;
    temp_v0->unk4 = __glOdysseyRenderFunc_DownloadColor;
    temp_v0->unk8 = (s32) (temp_v0->unk8 | 0x1A);
    temp_v0->unk18 = (f32) sp28->unk0;
    temp_v0->unk1C = (f32) sp28->unk4;
    temp_v0->unk20 = (f32) sp28->unk8;
    temp_v0->unk24 = (f32) sp28->unkC;
    temp_v0->unk28 = (f32) sp18->unk0;
    temp_v0->unk2C = (f32) sp18->unk4;
    temp_v0->unk30 = (f32) sp18->unk8;
    temp_v0->unk34 = (f32) sp18->unkC;
    sub_0d990000((f32 *) sp0, (f32 *) temp_v0, (s32) sp10, sp20);
    if ((sp8 != 0) && (temp_v0->unk44->unk8 != 0x1900) && (((f64) temp_v0->unk18 != 1.0) || ((f64) temp_v0->unk1C != 1.0) || ((f64) temp_v0->unk20 != 1.0) || ((f64) (second half of f64) != 1.0) || ((f64) temp_v0->unk28 != GLUE_F64((second half of f64), 0U)) || ((f64) (second half of f64) != GLUE_F64((second half of f64), 0U)) || ((f64) temp_v0->unk30 != GLUE_F64((second half of f64), 0U)) || ((f64) temp_v0->unk34 != GLUE_F64((second half of f64), 0U)))) {
        temp_v0->unk8 = (s32) (temp_v0->unk8 | 1);
    }
    return 1;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x2c8, 0x2cc, 0x2d0, 0x2d4, 0x2d8, 0x2dc, 0x338, 0x33c], gap at: 0x2e8. */
s32 __glOdysseyRenderFunc_DownloadColor(void *arg0, s64 arg1) {
    s64 sp2C0;
    s64 sp2B8;
    s64 sp2B0;
    s64 sp2A8;
    s64 sp2A0;
    s64 sp298;
    s64 sp290;
    s64 sp288;
    s64 sp280;
    s64 sp278;
    s64 sp270;
    s64 sp268;
    s64 sp260;
    s64 sp258;
    s64 sp250;
    s64 sp248;
    s32 sp228;
    s64 sp1E8;
    s32 sp1C8;
    f32 sp1C4;
    f32 sp1C0;
    f32 sp1BC;
    f32 sp1B8;
    f32 sp1B4;
    f32 sp1B0;
    f32 sp1AC;
    f32 sp1A8;
    f32 sp1A4;
    f32 sp1A0;
    f32 sp19C;
    f32 sp198;
    f32 sp194;
    f32 sp190;
    f32 sp18C;
    f32 sp188;
    s32 sp168;
    s64 sp128;
    s32 sp108;
    f32 sp104;
    f32 sp100;
    f32 spFC;
    f32 spF8;
    f32 spF4;
    f32 spF0;
    f32 spEC;
    f32 spE8;
    f32 spE4;
    f32 spE0;
    f32 spDC;
    f32 spD8;
    f32 spD4;
    f32 spD0;
    f32 spCC;
    f32 spC8;
    f32 spBC;
    f32 spB8;
    f32 spB4;
    f32 spB0;
    f32 spAC;
    f32 spA8;
    f32 spA4;
    f32 spA0;
    s32 sp98;
    s32 sp8C;
    s32 sp78;
    s32 sp74;
    s32 sp70;
    s32 sp6C;
    s32 sp68;
    s64 sp60;                                       /* compiler-managed */
    s32 sp5C;
    s32 sp58;
    s32 sp54;
    s32 sp50;
    s32 sp4C;
    s32 sp48;
    s32 sp44;
    s32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    s32 sp1C;
    s32 sp18;
    u8 sp0;
    ? **temp_a5;
    f32 *temp_a0;
    f32 *temp_a0_5;
    f32 *temp_a1;
    f32 temp_a3;
    f32 temp_a6_2;
    f32 temp_a7;
    f32 temp_f10;
    f32 temp_f10_2;
    f32 temp_f11;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f13;
    f32 temp_f13_2;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f4;
    f32 temp_f4_10;
    f32 temp_f4_11;
    f32 temp_f4_12;
    f32 temp_f4_13;
    f32 temp_f4_14;
    f32 temp_f4_15;
    f32 temp_f4_16;
    f32 temp_f4_17;
    f32 temp_f4_18;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f4_4;
    f32 temp_f4_5;
    f32 temp_f4_6;
    f32 temp_f4_7;
    f32 temp_f4_8;
    f32 temp_f4_9;
    f32 temp_f5;
    f32 temp_f5_10;
    f32 temp_f5_11;
    f32 temp_f5_12;
    f32 temp_f5_13;
    f32 temp_f5_14;
    f32 temp_f5_15;
    f32 temp_f5_16;
    f32 temp_f5_17;
    f32 temp_f5_18;
    f32 temp_f5_19;
    f32 temp_f5_20;
    f32 temp_f5_2;
    f32 temp_f5_3;
    f32 temp_f5_4;
    f32 temp_f5_5;
    f32 temp_f5_6;
    f32 temp_f5_7;
    f32 temp_f5_8;
    f32 temp_f5_9;
    f32 temp_f7;
    f32 temp_f7_10;
    f32 temp_f7_11;
    f32 temp_f7_12;
    f32 temp_f7_13;
    f32 temp_f7_14;
    f32 temp_f7_15;
    f32 temp_f7_16;
    f32 temp_f7_17;
    f32 temp_f7_18;
    f32 temp_f7_19;
    f32 temp_f7_20;
    f32 temp_f7_21;
    f32 temp_f7_22;
    f32 temp_f7_23;
    f32 temp_f7_24;
    f32 temp_f7_25;
    f32 temp_f7_26;
    f32 temp_f7_27;
    f32 temp_f7_28;
    f32 temp_f7_29;
    f32 temp_f7_2;
    f32 temp_f7_30;
    f32 temp_f7_31;
    f32 temp_f7_32;
    f32 temp_f7_33;
    f32 temp_f7_3;
    f32 temp_f7_4;
    f32 temp_f7_5;
    f32 temp_f7_6;
    f32 temp_f7_7;
    f32 temp_f7_8;
    f32 temp_f7_9;
    f32 temp_f8;
    f32 temp_f8_2;
    f32 temp_f8_3;
    f32 temp_f8_4;
    f32 var_f10;
    f32 var_f11;
    f32 var_f14;
    f32 var_f15;
    f32 var_f15_2;
    f32 var_f15_3;
    f32 var_f16;
    f32 var_f16_2;
    f32 var_f17;
    f32 var_f17_2;
    f32 var_f18;
    f32 var_f18_2;
    f32 var_f19;
    f32 var_f19_2;
    f32 var_f21;
    f32 var_f21_2;
    f32 var_f23;
    f32 var_f23_2;
    f32 var_f25;
    f32 var_f25_2;
    f32 var_f6;
    f32 var_f7;
    f32 var_f8;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_f17;
    s32 temp_f18;
    s32 temp_f19;
    s32 temp_f21;
    s32 temp_s3;
    s32 temp_t8;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a6;
    u8 temp_t2;
    void *temp_s2;
    void *var_s0;

    temp_s2 = *(void **)0x1010;
    if (((f64) arg0->unk18 > 63.0) || ((f64) arg0->unk1C > 63.0) || ((f64) arg0->unk20 > 63.0) || ((f64) arg0->unk24 > 63.0)) {
        sp2C0 = arg1;
        var_s0 = temp_s2 + 0x10000;
        temp_s2->unk11E20 = 4.0f;
    } else {
        sp2C0 = arg1;
        var_s0 = temp_s2 + 0x10000;
        temp_s2->unk11E20 = 7.999756f;
    }
    temp_a0 = arg0->unk44;
    __glOdysseyImageCalcXferWriteParams(temp_a0->unk8, temp_a0->unkC, arg0->unk48->unk34, sp);
    var_a0 = arg0->unk44->unk8;
    if (var_a0 == 0x1900) {
        if (((f64) arg0->unk18 != GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U)) || ((f64) arg0->unk28 != GLUE_F64(M2C_ERROR(/* Read from unset register $f5 */), 0U))) {
            sp0 = 0;
            var_a0 = arg0->unk44->unk8;
        }
        if ((var_a0 == 0x1900) && ((temp_a0_2 = arg0->unk44->unkC, (temp_a0_2 == 0x1400)) || (temp_a0_2 == 0x1402) || (temp_a0_2 == 0x1404))) {
            sp0 = 0;
        }
    }
    if (temp_s2->unk7B70 & 0x80) {
        if (sp4 != 1) {

        } else {
            goto block_85;
        }
    } else if (sp4 != 1) {

    } else {
        sp0 = 0;
block_85:
        if (temp_s2->unk784 == 0x1102) {
            sp0 = 0;
        }
    }
    if ((sp2 != 3) && (sp2 != 4)) {

    } else if ((temp_s2->unk788 == 0x1100) && (arg0->unk8 & 1)) {
        sp0 = 0;
    }
    temp_t2 = (temp_s2->unk788 == 0x1102) ? 0U : sp0;
    sp0 = temp_t2;
    if (temp_t2 != 0) {
        if (sp4 != 0) {
            // Error: negative shift count
            // At instruction: bgez $a0, .L0d9a47e4
            if (M2C_ERROR()) {
                sp198 = 1.0f;
                var_f15 = arg0->unk2C;
                sp19C = var_f15;
                var_f8 = arg0->unk30;
                sp1A0 = var_f8;
                var_f10 = arg0->unk34;
                var_f7 = 1.0f;
            } else {
                var_f6 = second half of f64;
                var_f7 = (f32) ((f64) 1.0f * 0.5);
                sp198 = var_f7;
                var_f14 = second half of f64;
                var_f15 = (f32) ((f64) arg0->unk2C * 0.5);
                sp19C = var_f15;
                var_f8 = (f32) ((f64) arg0->unk30 * 0.5);
                sp1A0 = var_f8;
                var_f11 = second half of f64;
                var_f10 = (f32) ((f64) arg0->unk34 * 0.5);
            }
            sp1A4 = var_f10;
            M2C_ERROR(/* unknown instruction: movf.s $f18, $f9, $fcc3 */);
            M2C_ERROR(/* unknown instruction: movf.s $f17, $f18, $fcc2 */);
            M2C_ERROR(/* unknown instruction: movf.s $f16, $f17, $fcc1 */);
            temp_f16 = fabsf(var_f11);
            temp_f4 = var_s0->unk1E20;
            if (temp_f16 != var_f6) {
                var_f19 = var_f7 / temp_f16;
                sp1A8 = var_f19;
                var_f17 = temp_f4 * var_f19;
                sp1B8 = var_f17;
            } else {
                var_f17 = var_f7;
                sp1A8 = var_f7;
                var_f19 = var_f7;
                sp1B8 = var_f7;
            }
            temp_f7 = fabsf(temp_f13);
            var_f16 = var_f15;
            if (temp_f7 != var_f6) {
                var_f23 = var_f15 / temp_f7;
                sp1AC = var_f23;
                var_f16 = temp_f4 * var_f23;
                sp1BC = var_f16;
            } else {
                sp1AC = var_f15;
                var_f23 = var_f15;
                sp1BC = var_f15;
            }
            temp_f7_2 = fabsf(var_f14);
            var_f18 = var_f8;
            if (temp_f7_2 != var_f6) {
                var_f21 = var_f8 / temp_f7_2;
                sp1B0 = var_f21;
                var_f18 = temp_f4 * var_f21;
                sp1C0 = var_f18;
            } else {
                sp1B0 = var_f8;
                var_f21 = var_f8;
                sp1C0 = var_f8;
            }
            temp_f7_3 = fabsf(temp_f12);
            var_f15_2 = var_f10;
            if (temp_f7_3 != var_f6) {
                var_f25 = var_f10 / temp_f7_3;
                sp1B4 = var_f25;
                var_f15_2 = temp_f4 * var_f25;
                sp1C4 = var_f15_2;
            } else {
                sp1B4 = var_f10;
                var_f25 = var_f10;
                sp1C4 = var_f10;
            }
            M2C_ERROR(/* unknown instruction: movf.s $f1, $f8, $fcc7 */);
            M2C_ERROR(/* unknown instruction: movf.s $f0, $f7, $fcc6 */);
            M2C_ERROR(/* unknown instruction: movf.s $f31, $f1, $fcc5 */);
            M2C_ERROR(/* unknown instruction: movf.s $f8, $f0, $fcc4 */);
            M2C_ERROR(/* unknown instruction: movf.s $f29, $f31, $fcc3 */);
            M2C_ERROR(/* unknown instruction: movf.s $f27, $f8, $fcc2 */);
            temp_f10 = M2C_ERROR(/* unknown instruction: movf.s $f10, $f29, $fcc1 */);
            temp_f7_4 = M2C_ERROR(/* unknown instruction: movf.s $f7, $f27, $fcc0 */);
            temp_a0_3 = M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc0 */);
            if ((temp_a0_3 != 0) && (temp_f10 <= temp_f4)) {
                if (temp_f4 < sp188) {
                    sp188 = temp_f4;
                } else {
                    temp_f7_5 = -temp_f4;
                    if (sp188 < temp_f7_5) {
                        sp188 = temp_f7_5;
                    }
                }
                temp_f5 = sp188.unk4;
                if (var_s0->unk1E20 < temp_f5) {
                    sp188.unk4 = var_s0->unk1E20;
                } else {
                    temp_f7_6 = -var_s0->unk1E20;
                    if (temp_f5 < temp_f7_6) {
                        sp188.unk4 = temp_f7_6;
                    }
                }
                temp_f5_2 = sp188.unk8;
                if (var_s0->unk1E20 < temp_f5_2) {
                    sp188.unk8 = var_s0->unk1E20;
                } else {
                    temp_f7_7 = -var_s0->unk1E20;
                    if (temp_f5_2 < temp_f7_7) {
                        sp188.unk8 = temp_f7_7;
                    }
                }
                temp_f5_3 = sp188.unkC;
                if (var_s0->unk1E20 < temp_f5_3) {
                    sp188.unkC = var_s0->unk1E20;
                } else {
                    temp_f7_8 = -var_s0->unk1E20;
                    if (temp_f5_3 < temp_f7_8) {
                        sp188.unkC = temp_f7_8;
                    }
                }
                if (var_s0->unk1E20 < fabsf(arg0->unk18)) {
                    sp198 = var_f17;
                }
                if (var_s0->unk1E20 < fabsf(arg0->unk1C)) {
                    sp19C = var_f16;
                }
                if (var_s0->unk1E20 < fabsf(arg0->unk20)) {
                    sp1A0 = var_f18;
                }
                if (var_s0->unk1E20 < fabsf(arg0->unk24)) {
                    sp1A4 = var_f15_2;
                }
                __glOdysseyImageChainAddOpAcceptSignedDataFromHost((? **) &sp188, (s64) &sp198, temp_a2, temp_a3, (bitwise f32) &sp1B8, temp_a5, temp_a6, temp_a7, temp_f12, temp_f13, var_f14, var_f15_2, var_f16, var_f17, var_f18, var_f19);
            } else if ((M2C_ERROR(/* unknown instruction: movf.s $f5, $f7, $fcc4 */) <= temp_f4) && (temp_f4 < M2C_ERROR(/* unknown instruction: movf.s $f9, $f16, $fcc0 */))) {
                if (temp_f4 < temp_f7_4) {
                    temp_f4_2 = var_s0->unk1E20;
                    if (temp_f4_2 < sp188) {
                        sp188 = temp_f4_2;
                    } else {
                        temp_f7_9 = -temp_f4_2;
                        if (sp188 < temp_f7_9) {
                            sp188 = temp_f7_9;
                        }
                    }
                    temp_f4_3 = var_s0->unk1E20;
                    temp_f5_4 = sp188.unk4;
                    if (temp_f4_3 < temp_f5_4) {
                        sp188.unk4 = temp_f4_3;
                    } else {
                        temp_f7_10 = -temp_f4_3;
                        if (temp_f5_4 < temp_f7_10) {
                            sp188.unk4 = temp_f7_10;
                        }
                    }
                    temp_f4_4 = var_s0->unk1E20;
                    temp_f5_5 = sp188.unk8;
                    if (temp_f4_4 < temp_f5_5) {
                        sp188.unk8 = temp_f4_4;
                    } else {
                        temp_f7_11 = -temp_f4_4;
                        if (temp_f5_5 < temp_f7_11) {
                            sp188.unk8 = temp_f7_11;
                        }
                    }
                    temp_f4_5 = var_s0->unk1E20;
                    temp_f5_6 = sp188.unkC;
                    if (temp_f4_5 < temp_f5_6) {
                        sp188.unkC = temp_f4_5;
                    } else {
                        temp_f7_12 = -temp_f4_5;
                        if (temp_f5_6 < temp_f7_12) {
                            sp188.unkC = temp_f7_12;
                        }
                    }
                    sp198 = var_f6;
                    sp19C = var_f6;
                    sp1A0 = var_f6;
                    sp1A4 = var_f6;
                } else {
                    var_f15_2 = (f32) (f64) var_f14;
                    var_f14 = second half of f64;
                    sp1A4 = var_f25;
                    sp1A0 = var_f21;
                    sp19C = var_f23;
                    sp198 = var_f19;
                    sp194 = M2C_ERROR(/* unknown instruction: movf.s $f5, $f6, $fcc2 */);
                    sp190 = M2C_ERROR(/* unknown instruction: movt.s $f4, $f5, $fcc5 */);
                    sp18C = M2C_ERROR(/* unknown instruction: movt.s $f3, $f5, $fcc4 */);
                    sp188 = M2C_ERROR(/* unknown instruction: movt.s $f2, $f5, $fcc3 */);
                }
                sub_0d9a0000(&sp188, (s32) &sp198, temp_a2, (bitwise s32) temp_a3, &sp1B8, (s32) temp_a5, temp_a6, (bitwise s32) temp_a7, temp_f12, temp_f13, var_f14, var_f15_2, var_f16, var_f17, var_f18, var_f19);
            } else if ((temp_a0_3 != 0) && (temp_f4 < temp_f10)) {
                if (temp_f4 < temp_f7_4) {
                    temp_f4_6 = var_s0->unk1E20;
                    if (temp_f4_6 < sp188) {
                        sp188 = temp_f4_6;
                    } else {
                        temp_f7_13 = -temp_f4_6;
                        if (sp188 < temp_f7_13) {
                            sp188 = temp_f7_13;
                        }
                    }
                    temp_f4_7 = var_s0->unk1E20;
                    temp_f5_7 = sp188.unk4;
                    if (temp_f4_7 < temp_f5_7) {
                        sp188.unk4 = temp_f4_7;
                    } else {
                        temp_f7_14 = -temp_f4_7;
                        if (temp_f5_7 < temp_f7_14) {
                            sp188.unk4 = temp_f7_14;
                        }
                    }
                    temp_f4_8 = var_s0->unk1E20;
                    temp_f5_8 = sp188.unk8;
                    if (temp_f4_8 < temp_f5_8) {
                        sp188.unk8 = temp_f4_8;
                    } else {
                        temp_f7_15 = -temp_f4_8;
                        if (temp_f5_8 < temp_f7_15) {
                            sp188.unk8 = temp_f7_15;
                        }
                    }
                    temp_f4_9 = var_s0->unk1E20;
                    temp_f5_9 = sp188.unkC;
                    if (temp_f4_9 < temp_f5_9) {
                        sp188.unkC = temp_f4_9;
                    } else {
                        temp_f7_16 = -temp_f4_9;
                        if (temp_f5_9 < temp_f7_16) {
                            sp188.unkC = temp_f7_16;
                        }
                    }
                    sp198 = var_f6;
                    sp19C = var_f6;
                    sp1A0 = var_f6;
                    sp1A4 = var_f6;
                } else {
                    // Error: Tried to use a double-precision instruction with odd-numbered float register $f29
                    // At instruction: c.lt.d $f1, $f29
                }
                __glOdysseyImageChainAddOpAcceptSignedDataFromHost((? **) &sp188, (s64) &sp198, temp_a2, temp_a3, (bitwise f32) &sp1B8, temp_a5, temp_a6, temp_a7, temp_f12, temp_f13, var_f14, var_f15_2, var_f16, var_f17, var_f18, var_f19);
            } else {
                sub_0d9a0000(&sp188, (s32) &sp198, temp_a2, (bitwise s32) temp_a3, &sp1B8, (s32) temp_a5, temp_a6, (bitwise s32) temp_a7, temp_f12, temp_f13, var_f14, var_f15_2, var_f16, var_f17, var_f18, var_f19);
                var_s0->unk6960 = (s32) (0x200000 | var_s0->unk6960);
                var_s0->unk-695C = (s32) (var_s0->unk-695C | 1);
                *(void *)0x1018 = 2;
            }
            __glOdysseyImageMovePixelsDMAtoGfx(arg0->unk48, arg0->unk44, sp2C0, 1, 0);
            temp_s2->unk7CC4 = sp1C8;
            temp_s2->unk7CDC = (s32) sp1C8.unk18;
            temp_s2->unk7CD8 = (s32) sp1C8.unk14;
            temp_s2->unk7CD4 = (s32) sp1C8.unk10;
            temp_s2->unk7CD0 = (s32) sp1C8.unkC;
            temp_s2->unk7CCC = (s32) sp1C8.unk8;
            temp_s2->unk7CC8 = (s32) sp1C8.unk4;
            var_s0->unk-6958 = (s32) sp2B8;
            var_s0->unk-695C = (s32) sp298;
            var_s0->unk-6960 = (s32) sp2A8;
            var_s0->unk-6964 = (s32) sp2A0;
            temp_s2->unk7C3C = (s32) sp288;
            temp_s2->unk7BFC = temp_s3;
            temp_s2->unk7C38 = (s32) sp2B0;
            temp_s2->unk7C34 = (s32) sp290;
            var_s0->unk-73E8 = (s64) sp1E8.unk30;
            var_s0->unk-73F0 = (s64) sp1E8.unk28;
            var_s0->unk-73F8 = (s64) sp1E8.unk20;
            var_s0->unk-7400 = (s64) sp1E8.unk18;
            var_s0->unk-7408 = (s64) sp1E8.unk10;
            var_s0->unk-7410 = (s64) sp1E8.unk8;
            var_s0->unk-73E0 = (s64) sp1E8.unk38;
            var_s0->unk-7418 = sp1E8;
            var_s0->unk-741C = (s32) unksp330;
            var_s0->unk-72F8 = (s32) sp228.unk1C;
            var_s0->unk-72FC = (s32) sp228.unk18;
            var_s0->unk-7300 = (f32) sp228.unk14;
            var_s0->unk-7304 = (s32) sp228.unk10;
            var_s0->unk-7308 = (s32) sp228.unkC;
            var_s0->unk-730C = (s32) sp228.unk8;
            var_s0->unk-7310 = (s32) sp228.unk4;
            var_s0->unk-7314 = sp228;
            var_s0->unk-7318 = (s32) unksp328;
            var_s0->unk-7294 = (bitwise f32) unksp310;
            var_s0->unk-7290 = (? **) unksp320;
            var_s0->unk-728C = (s32) unksp318;
            var_s0->unk6960 = (s32) (var_s0->unk6960 | 0x238203);
            *(void *)0x1018 = 2;
        } else {
            temp_a1 = arg0->unk44;
            if (temp_a1->unk8 != 0x1900) {
                sp104 = 0.0f;
                sp100 = 0.0f;
                spFC = 0.0f;
                spF8 = 0.0f;
                spF4 = 0.0f;
                spF0 = 0.0f;
                spEC = 0.0f;
                spE8 = 0.0f;
                spE4 = 0.0f;
                spE0 = 0.0f;
                spDC = 0.0f;
                spD8 = 0.0f;
                spD4 = 1.0f;
                spD0 = 1.0f;
                spCC = 1.0f;
                spC8 = 1.0f;
                sp248 = (s64) temp_s2->unk7C3C;
                sp258 = (s64) temp_s2->unk7C38;
                sp270 = (s64) temp_s2->unk7C34;
                sp280 = (s64) temp_s2->unk7BFC;
                sp268 = (s64) var_s0->unk-6958;
                sp260 = (s64) var_s0->unk-695C;
                sp278 = (s64) var_s0->unk-6960;
                sp250 = (s64) var_s0->unk-6964;
                sp108.unk4 = (s32) temp_s2->unk7CC8;
                sp108.unk8 = (s32) temp_s2->unk7CCC;
                sp108.unkC = (s32) temp_s2->unk7CD0;
                sp108.unk14 = (s32) temp_s2->unk7CD8;
                sp108.unk18 = (s32) temp_s2->unk7CDC;
                sp108.unk10 = (s32) temp_s2->unk7CD4;
                sp108 = temp_s2->unk7CC4;
                sp128.unk38 = (s64) var_s0->unk-73E0;
                sp128.unk30 = (s64) var_s0->unk-73E8;
                sp128.unk28 = (s64) var_s0->unk-73F0;
                sp128.unk20 = (s64) var_s0->unk-73F8;
                sp128.unk18 = (s64) var_s0->unk-7400;
                sp128.unk10 = (s64) var_s0->unk-7408;
                sp128.unk8 = (s64) var_s0->unk-7410;
                sp128 = var_s0->unk-7418;
                unksp2E0 = (s64) var_s0->unk-741C;
                sp168.unk4 = (s32) var_s0->unk-7310;
                sp168.unk8 = (s32) var_s0->unk-730C;
                sp168.unkC = (s32) var_s0->unk-7308;
                sp168.unk10 = (s32) var_s0->unk-7304;
                sp168.unk14 = (f32) var_s0->unk-7300;
                sp168.unk18 = (s32) var_s0->unk-72FC;
                sp168.unk1C = (s32) var_s0->unk-72F8;
                sp168 = var_s0->unk-7314;
                temp_a7_2 = var_s0->unk-728C;
                temp_a6_2 = var_s0->unk-7294;
                temp_a5_2 = var_s0->unk-7318;
                temp_s2->unk7BFC = (s32) (sp280 & ~0x20000);
                var_s0->unk6960 = (s32) (var_s0->unk6960 | 2);
                *(void *)0x1018 = 2;
                temp_a2_2 = temp_s2->unk7CD4 | 0x40000 | 0x4000;
                temp_s2->unk7CD4 = temp_a2_2;
                var_s0->unk6960 = (s32) (var_s0->unk6960 | 0x200);
                *(void *)0x1018 = 2;
                var_s0->unk6960 = (s32) (var_s0->unk6960 | 0x200000);
                var_s0->unk-695C = (s32) (var_s0->unk-695C & ~0x100000);
                *(void *)0x1018 = 2;
                temp_f13_2 = arg0->unk18;
                spC8 = temp_f13_2;
                temp_f12_2 = arg0->unk1C;
                spCC = temp_f12_2;
                temp_f14 = arg0->unk20;
                spD0 = temp_f14;
                temp_f10_2 = arg0->unk24;
                spD4 = temp_f10_2;
                M2C_ERROR(/* unknown instruction: movf.s $f11, $f4, $fcc1 */);
                M2C_ERROR(/* unknown instruction: movf.s $f7, $f11, $fcc0 */);
                temp_f5_10 = fabsf(spC8.unkC);
                M2C_ERROR(/* unknown instruction: movf.s $f9, $f7, $fcc7 */);
                unksp2E8 = (s64) temp_a7_2;
                unksp2F0 = (bitwise s64) temp_a6_2;
                unksp2F8 = (s64) temp_a5_2;
                unksp300 = (s64) var_s0->unk-7290;
                spD8 = arg0->unk28;
                spDC = arg0->unk2C;
                spE0 = arg0->unk30;
                spE4 = arg0->unk34;
                M2C_ERROR(/* unknown instruction: movf.s $f21, $f9, $fcc5 */);
                M2C_ERROR(/* unknown instruction: movf.s $f11, $f21, $fcc4 */);
                M2C_ERROR(/* unknown instruction: movf.s $f19, $f11, $fcc3 */);
                temp_f8 = fabsf(temp_f13_2);
                temp_f4_10 = var_s0->unk1E20;
                temp_f7_17 = arg0->unk28;
                if (temp_f8 != 0.0f) {
                    var_f19_2 = temp_f7_17 / temp_f8;
                    spE8 = var_f19_2;
                    var_f15_3 = temp_f4_10 * var_f19_2;
                    spF8 = var_f15_3;
                } else {
                    var_f15_3 = temp_f7_17;
                    spE8 = temp_f7_17;
                    var_f19_2 = temp_f7_17;
                    spF8 = temp_f7_17;
                }
                temp_f8_2 = fabsf(temp_f12_2);
                temp_f7_18 = arg0->unk2C;
                if (temp_f8_2 != 0.0f) {
                    var_f23_2 = temp_f7_18 / temp_f8_2;
                    spEC = var_f23_2;
                    var_f16_2 = temp_f4_10 * var_f23_2;
                    spFC = var_f16_2;
                } else {
                    var_f16_2 = temp_f7_18;
                    spEC = temp_f7_18;
                    var_f23_2 = temp_f7_18;
                    spFC = temp_f7_18;
                }
                temp_f8_3 = fabsf(temp_f14);
                temp_f7_19 = arg0->unk30;
                if (temp_f8_3 != 0.0f) {
                    var_f21_2 = temp_f7_19 / temp_f8_3;
                    spF0 = var_f21_2;
                    var_f18_2 = temp_f4_10 * var_f21_2;
                    sp100 = var_f18_2;
                } else {
                    var_f18_2 = temp_f7_19;
                    spF0 = temp_f7_19;
                    var_f21_2 = temp_f7_19;
                    sp100 = temp_f7_19;
                }
                temp_f8_4 = fabsf(temp_f10_2);
                temp_f7_20 = arg0->unk34;
                if (temp_f8_4 != 0.0f) {
                    var_f25_2 = temp_f7_20 / temp_f10_2;
                    spF4 = var_f25_2;
                    var_f17_2 = temp_f4_10 * (temp_f7_20 / temp_f8_4);
                    sp104 = var_f17_2;
                } else {
                    var_f17_2 = temp_f7_20;
                    spF4 = temp_f7_20;
                    var_f25_2 = temp_f7_20;
                    sp104 = temp_f7_20;
                }
                M2C_ERROR(/* unknown instruction: movf.s $f1, $f8, $fcc1 */);
                M2C_ERROR(/* unknown instruction: movf.s $f0, $f7, $fcc0 */);
                M2C_ERROR(/* unknown instruction: movf.s $f31, $f1, $fcc7 */);
                M2C_ERROR(/* unknown instruction: movf.s $f8, $f0, $fcc6 */);
                M2C_ERROR(/* unknown instruction: movf.s $f29, $f31, $fcc5 */);
                M2C_ERROR(/* unknown instruction: movf.s $f27, $f8, $fcc4 */);
                temp_f11 = M2C_ERROR(/* unknown instruction: movf.s $f11, $f29, $fcc3 */);
                temp_f7_21 = M2C_ERROR(/* unknown instruction: movf.s $f7, $f27, $fcc2 */);
                temp_a0_4 = M2C_ERROR(/* unknown instruction: movf $a0, $zero, $fcc2 */);
                if ((temp_a0_4 != 0) && (temp_f11 <= temp_f4_10)) {
                    if (temp_f4_10 < spC8) {
                        spC8 = temp_f4_10;
                    } else {
                        temp_f7_22 = -temp_f4_10;
                        if (spC8 < temp_f7_22) {
                            spC8 = temp_f7_22;
                        }
                    }
                    temp_f5_11 = spC8.unk4;
                    if (var_s0->unk1E20 < temp_f5_11) {
                        spC8.unk4 = var_s0->unk1E20;
                    } else {
                        temp_f7_23 = -var_s0->unk1E20;
                        if (temp_f5_11 < temp_f7_23) {
                            spC8.unk4 = temp_f7_23;
                        }
                    }
                    temp_f5_12 = spC8.unk8;
                    if (var_s0->unk1E20 < temp_f5_12) {
                        spC8.unk8 = var_s0->unk1E20;
                    } else {
                        temp_f7_24 = -var_s0->unk1E20;
                        if (temp_f5_12 < temp_f7_24) {
                            spC8.unk8 = temp_f7_24;
                        }
                    }
                    temp_f5_13 = spC8.unkC;
                    if (var_s0->unk1E20 < temp_f5_13) {
                        spC8.unkC = var_s0->unk1E20;
                    } else {
                        temp_f7_25 = -var_s0->unk1E20;
                        if (temp_f5_13 < temp_f7_25) {
                            spC8.unkC = temp_f7_25;
                        }
                    }
                    if (var_s0->unk1E20 < fabsf(arg0->unk18)) {
                        spD8 = var_f15_3;
                    }
                    if (var_s0->unk1E20 < fabsf(arg0->unk1C)) {
                        spDC = var_f16_2;
                    }
                    if (var_s0->unk1E20 < fabsf(arg0->unk20)) {
                        spE0 = var_f18_2;
                    }
                    if (var_s0->unk1E20 < fabsf(arg0->unk24)) {
                        spE4 = var_f17_2;
                    }
                    sub_0d9a0000(&spC8, (s32) &spD8, temp_a2_2, 0x40000, &spE8, temp_a5_2, (bitwise s32) temp_a6_2, temp_a7_2, temp_f12_2, temp_f13_2, temp_f14, var_f15_3, var_f16_2, var_f17_2, var_f18_2, var_f19_2);
                } else if ((M2C_ERROR(/* unknown instruction: movf.s $f5, $f9, $fcc6 */) <= temp_f4_10) && (temp_f4_10 < M2C_ERROR(/* unknown instruction: movf.s $f9, $f19, $fcc2 */))) {
                    if (temp_f4_10 < temp_f7_21) {
                        temp_f4_11 = var_s0->unk1E20;
                        if (temp_f4_11 < spC8) {
                            spC8 = temp_f4_11;
                        } else {
                            temp_f7_26 = -temp_f4_11;
                            if (spC8 < temp_f7_26) {
                                spC8 = temp_f7_26;
                            }
                        }
                        temp_f4_12 = var_s0->unk1E20;
                        temp_f5_14 = spC8.unk4;
                        if (temp_f4_12 < temp_f5_14) {
                            spC8.unk4 = temp_f4_12;
                        } else {
                            temp_f7_27 = -temp_f4_12;
                            if (temp_f5_14 < temp_f7_27) {
                                spC8.unk4 = temp_f7_27;
                            }
                        }
                        temp_f4_13 = var_s0->unk1E20;
                        temp_f5_15 = spC8.unk8;
                        if (temp_f4_13 < temp_f5_15) {
                            spC8.unk8 = temp_f4_13;
                        } else {
                            temp_f7_28 = -temp_f4_13;
                            if (temp_f5_15 < temp_f7_28) {
                                spC8.unk8 = temp_f7_28;
                            }
                        }
                        temp_f4_14 = var_s0->unk1E20;
                        temp_f5_16 = spC8.unkC;
                        if (temp_f4_14 < temp_f5_16) {
                            spC8.unkC = temp_f4_14;
                        } else {
                            temp_f7_29 = -temp_f4_14;
                            if (temp_f5_16 < temp_f7_29) {
                                spC8.unkC = temp_f7_29;
                            }
                        }
                        spD8 = 0.0f;
                        spDC = 0.0f;
                        spE0 = 0.0f;
                        spE4 = 0.0f;
                    } else {
                        // Error: Tried to use a double-precision instruction with odd-numbered float register $f11
                        // At instruction: c.lt.d $f17, $f11
                    }
                    sub_0d9a0000(&spC8, (s32) &spD8, temp_a2_2, 0x40000, &spE8, temp_a5_2, (bitwise s32) temp_a6_2, temp_a7_2, temp_f12_2, temp_f13_2, temp_f14, var_f15_3, var_f16_2, var_f17_2, var_f18_2, var_f19_2);
                } else if ((temp_a0_4 != 0) && (temp_f4_10 < temp_f11)) {
                    if (temp_f4_10 < temp_f7_21) {
                        temp_f4_15 = var_s0->unk1E20;
                        if (temp_f4_15 < spC8) {
                            spC8 = temp_f4_15;
                        } else {
                            temp_f7_30 = -temp_f4_15;
                            if (spC8 < temp_f7_30) {
                                spC8 = temp_f7_30;
                            }
                        }
                        temp_f4_16 = var_s0->unk1E20;
                        temp_f5_17 = spC8.unk4;
                        if (temp_f4_16 < temp_f5_17) {
                            spC8.unk4 = temp_f4_16;
                        } else {
                            temp_f7_31 = -temp_f4_16;
                            if (temp_f5_17 < temp_f7_31) {
                                spC8.unk4 = temp_f7_31;
                            }
                        }
                        temp_f4_17 = var_s0->unk1E20;
                        temp_f5_18 = spC8.unk8;
                        if (temp_f4_17 < temp_f5_18) {
                            spC8.unk8 = temp_f4_17;
                        } else {
                            temp_f7_32 = -temp_f4_17;
                            if (temp_f5_18 < temp_f7_32) {
                                spC8.unk8 = temp_f7_32;
                            }
                        }
                        temp_f4_18 = var_s0->unk1E20;
                        temp_f5_19 = spC8.unkC;
                        if (temp_f4_18 < temp_f5_19) {
                            spC8.unkC = temp_f4_18;
                        } else {
                            temp_f7_33 = -temp_f4_18;
                            if (temp_f5_19 < temp_f7_33) {
                                spC8.unkC = temp_f7_33;
                            }
                        }
                        spD8 = 0.0f;
                        spDC = 0.0f;
                        spE0 = 0.0f;
                        spE4 = 0.0f;
                    } else {
                        var_f18_2 = M2C_ERROR(/* unknown instruction: movt.s $f18, $f27, $fcc7 */);
                        spE4 = var_f25_2;
                        spE0 = var_f21_2;
                        var_f17_2 = M2C_ERROR(/* unknown instruction: movt.s $f17, $f27, $fcc6 */);
                        spDC = var_f23_2;
                        var_f16_2 = M2C_ERROR(/* unknown instruction: movt.s $f16, $f27, $fcc5 */);
                        spD8 = var_f19_2;
                        spD4 = M2C_ERROR(/* unknown instruction: movf.s $f27, $f29, $fcc4 */);
                        spD0 = var_f18_2;
                        spCC = var_f17_2;
                        spC8 = var_f16_2;
                    }
                    sub_0d9a0000(&spC8, (s32) &spD8, temp_a2_2, 0x40000, &spE8, temp_a5_2, (bitwise s32) temp_a6_2, temp_a7_2, temp_f12_2, temp_f13_2, temp_f14, var_f15_3, var_f16_2, var_f17_2, var_f18_2, var_f19_2);
                } else {
                    sub_0d9a0000(&spC8, (s32) &spD8, temp_a2_2, 0x40000, &spE8, temp_a5_2, (bitwise s32) temp_a6_2, temp_a7_2, temp_f12_2, temp_f13_2, temp_f14, var_f15_3, var_f16_2, var_f17_2, var_f18_2, var_f19_2);
                }
                var_a6 = 1;
                if ((f64) arg0->unk18 == 1.0) {
                    var_a6 = 1;
                    if ((f64) arg0->unk1C == 1.0) {
                        var_a6 = 1;
                        if ((f64) arg0->unk20 == 1.0) {
                            var_a6 = 1;
                            if ((f64) arg0->unk24 == 1.0) {
                                var_a6 = 1;
                                if ((f64) arg0->unk28 == GLUE_F64((second half of f64), 0U)) {
                                    var_a6 = 1;
                                    if ((f64) arg0->unk2C == GLUE_F64((second half of f64), 0U)) {
                                        var_a6 = 1;
                                        if ((f64) arg0->unk30 == GLUE_F64((second half of f64), 0U)) {
                                            var_a6 = 1;
                                            if ((f64) arg0->unk34 == GLUE_F64((second half of f64), 0U)) {
                                                var_a6 = 0;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                __glOdysseyImageMovePixelsDMAtoGfx(arg0->unk48, arg0->unk44, sp2C0, (var_a6 & 0xFF) != 0, 1);
                temp_s2->unk7CC4 = sp108;
                temp_s2->unk7CDC = (s32) sp108.unk18;
                temp_s2->unk7CD8 = (s32) sp108.unk14;
                temp_s2->unk7CD4 = (s32) sp108.unk10;
                temp_s2->unk7CD0 = (s32) sp108.unkC;
                temp_s2->unk7CCC = (s32) sp108.unk8;
                temp_s2->unk7CC8 = (s32) sp108.unk4;
                var_s0->unk-6958 = (s32) sp268;
                var_s0->unk-695C = (s32) sp260;
                var_s0->unk-6960 = (s32) sp278;
                var_s0->unk-6964 = (s32) sp250;
                temp_s2->unk7C3C = (s32) sp248;
                temp_s2->unk7C38 = (s32) sp258;
                temp_s2->unk7C34 = (s32) sp270;
                temp_s2->unk7BFC = (s32) sp280;
                var_s0->unk-73E0 = (s64) sp128.unk38;
                var_s0->unk-73E8 = (s64) sp128.unk30;
                var_s0->unk-73F0 = (s64) sp128.unk28;
                var_s0->unk-73F8 = (s64) sp128.unk20;
                var_s0->unk-7400 = (s64) sp128.unk18;
                var_s0->unk-7408 = (s64) sp128.unk10;
                var_s0->unk-7410 = (s64) sp128.unk8;
                var_s0->unk-7418 = sp128;
                var_s0->unk-741C = (s32) unksp2E0;
                var_s0->unk-72F8 = (s32) sp168.unk1C;
                var_s0->unk-72FC = (s32) sp168.unk18;
                var_s0->unk-7300 = (f32) sp168.unk14;
                var_s0->unk-7304 = (s32) sp168.unk10;
                var_s0->unk-7308 = (s32) sp168.unkC;
                var_s0->unk-730C = (s32) sp168.unk8;
                var_s0->unk-7310 = (s32) sp168.unk4;
                var_s0->unk-7314 = sp168;
                var_s0->unk-728C = (s32) unksp2E8;
                var_s0->unk-7290 = (? **) unksp300;
                var_s0->unk-7294 = (bitwise f32) unksp2F0;
                var_s0->unk-7318 = (s32) unksp2F8;
                var_s0->unk6960 = (s32) (var_s0->unk6960 | 0x238203);
                *(void *)0x1018 = 2;
            } else {
                __glOdysseyImageMovePixelsDMAtoGfx(arg0->unk48, temp_a1, sp2C0, 0, 1, 1, 0x1102, 0x1900);
            }
        }
        /* Duplicate return node #60. Try simplifying control flow for better match */
        return 1;
    }
    sp18 = 0x1908;
    sp1C = 0x1403;
    sp20 = 1.0f;
    sp24 = 1.0f;
    sp28 = 1.0f;
    sp2C = 1.0f;
    sp30 = 0.0f;
    sp34 = 0.0f;
    sp38 = 0.0f;
    sp3C = 0.0f;
    temp_a0_5 = arg0->unk44;
    if (__glOdysseyImageCalcSuitableHostFormatForDownload(temp_a0_5->unk8, temp_a0_5->unkC, arg0->unk48->unk34, &sp18, &sp1C, 1, 0x1102, 0x1900) != 0) {
        sp20 = arg0->unk18;
        sp24 = arg0->unk1C;
        sp28 = arg0->unk20;
        sp2C = arg0->unk24;
        sp30 = arg0->unk28;
        sp34 = arg0->unk2C;
        sp38 = arg0->unk30;
        sp3C = arg0->unk34;
        temp_f19 = (s32) sp2C0->unk0;
        sp40 = temp_f19;
        temp_f18 = (s32) sp2C0->unk4;
        sp44 = temp_f18;
        temp_f21 = (s32) sp2C0->unk8;
        sp48 = temp_f21;
        temp_f17 = (s32) sp2C0->unkC;
        sp4C = temp_f17;
        sp54 = 0;
        sp50 = 0;
        sp60 = 0;
        temp_v0 = ((temp_f21 < temp_f19) ? temp_f19 : temp_f21) - ((temp_f19 >= temp_f21) ? temp_f21 : temp_f19);
        sp58 = temp_v0;
        sp60.unk38 = 0;
        sp60.unk30 = 0;
        sp60.unk28 = 0;
        sp60.unk20 = 0;
        sp60.unk18 = 0;
        sp60.unk10 = 0;
        sp60.unk8 = 0;
        sp78 = 1;
        sp6C = sp1C;
        sp68 = sp18;
        sp60 = 1;
        unksp64 = 0;
        temp_t8 = ((temp_f17 < temp_f18) ? temp_f18 : temp_f17) - ((temp_f18 >= temp_f17) ? temp_f17 : temp_f18);
        sp98 = 0;
        sp5C = temp_t8;
        sp70 = ((temp_v0 < 0) ? 0 : temp_v0) - ((temp_v0 > 0) ? 0 : temp_v0);
        sp74 = ((temp_t8 < 0) ? 0 : temp_t8) - ((temp_t8 > 0) ? 0 : temp_t8);
        temp_a7_3 = var_s0->unk-58C8;
        sp8C = temp_a7_3;
        __glOdysseyImageConvertHostImage((f32 *) &sp60, &sp50, (s8 *) arg0->unk44, &sp40, &sp20, &sp30, 0U, temp_a7_3);
        spAC = (f32) sp5C;
        spA8 = (f32) sp58;
        spA4 = (f32) sp54;
        spA0 = (f32) sp50;
        spB0 = sp2C0->unk10;
        spB4 = sp2C0->unk14;
        spB8 = sp2C0->unk18;
        spBC = sp2C0->unk1C;
        __glOdysseyImageMovePixelsDMAtoGfx(arg0->unk48, (f32 *) &sp60, (s64) &spA0, 0, 1);
        return 1;
    }
    return 0;
}

/*
Decompilation failure in function ImageChainAddOpReadbackColor:

Unable to determine jump table for jr instruction at ody_image_chain.s line 33313.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function __glOdysseyRenderFunc_ReadbackColor:

Unable to determine jump table for jr instruction at ody_image_chain.s line 33435.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

s32 ImageChainAddOpColorZoom(s64 arg0) {
    s64 sp0;
    s64 temp_v0;

    sp0 = arg0;
    temp_v0 = sub_0d990000();
    if (temp_v0 == 0) {
        return 0;
    }
    temp_v0->unkC = 1;
    temp_v0->unk0 = 0xC;
    temp_v0->unk4 = (void *) (sub_0d9a0000 + 0x5F30);
    temp_v0->unk8 = (s32) (temp_v0->unk8 | 0x2C);
    sub_0d990000((f32 *) sp0, (f32 *) temp_v0, sp0->unk8, 0, (void *)1);
    return 1;
}

s32 RenderFunc_ColorZoom(void *arg0, s64 arg1) {
    __glOdysseyImageMovePixelsTexture(arg0->unk48, arg0->unk44, arg1, 1);
    return 1;
}

s32 ImageChainAddOpIndexZoom(s64 arg0) {
    s64 sp0;
    s64 temp_v0;

    sp0 = arg0;
    temp_v0 = sub_0d990000();
    if (temp_v0 == 0) {
        return 0;
    }
    temp_v0->unkC = 1;
    temp_v0->unk0 = 0xD;
    temp_v0->unk4 = (void *) (sub_0d9a0000 + 0x6010);
    temp_v0->unk8 = (s32) (temp_v0->unk8 | 0x2C);
    sub_0d990000((f32 *) sp0, (f32 *) temp_v0, sp0->unk8, 0, (void *)1);
    return 1;
}

s32 RenderFunc_IndexZoom(void *arg0, s64 arg1) {
    __glOdysseyImageMovePixelsTexture(arg0->unk48, arg0->unk44, arg1, 1);
    return 1;
}

s32 ImageChainAddOpInterlace(s64 arg0, s64 arg1) {
    s64 sp8;
    s64 sp0;
    s64 temp_v0;

    sp8 = arg0;
    sp0 = arg1;
    temp_v0 = sub_0d990000();
    if (temp_v0 != 0) {
        if (sp0 != 0) {
            temp_v0->unk0 = 0xE;
        } else {
            temp_v0->unk0 = 0xF;
        }
        temp_v0->unkC = 1;
        temp_v0->unk4 = (void *) (sub_0d9a0000 + 0x6100);
        temp_v0->unk8 = (s32) (temp_v0->unk8 | 0x2C);
        sub_0d990000((f32 *) sp8, (f32 *) temp_v0, sp8->unk8, 0, (void *)1);
        return 1;
    }
    return 0;
}

s32 RenderFunc_Interlace(void *arg0, s64 arg1, u8 arg7) {
    f32 *temp_a5;
    s8 var_a0;
    s8 var_a6;
    u8 var_a7;
    void *var_a4;

    // Error: negative shift count
    // At instruction: bgez $at, .L0d9a6144
    if (M2C_ERROR() || (var_a0 = 1, (arg0->unk0 != 0xE))) {
        var_a0 = 0;
    }
    var_a6 = 1;
    arg0->unk44->unkC = var_a0;
    temp_a5 = arg0->unk48;
    if (var_a4->unk704 & 0x20) {
        var_a4 = (void *) temp_a5->unk8;
        var_a7 = temp_a5->unkA;
        if (var_a4 == NULL) {
            if (var_a7 == 0) {
                goto block_7;
            }
        }
    } else {
block_7:
        var_a6 = 0;
    }
    temp_a5->unkC = var_a6;
    __glOdysseyImageMovePixelsTexture(arg0->unk48, arg0->unk44, arg1, 1, (s32) var_a4, (s64) temp_a5, (s32) var_a6, (s64) var_a7);
    arg0->unk44->unkC = 0;
    arg0->unk48->unkC = 0;
    return 1;
}

s32 ImageChainAddOpIndexShiftOffset(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s64 temp_v0;

    sp0 = arg0;
    sp8 = arg1;
    sp10 = arg2;
    temp_v0 = sub_0d990000();
    if (temp_v0 == 0) {
        return 0;
    }
    temp_v0->unkC = 0;
    temp_v0->unk0 = 6;
    temp_v0->unk34 = 0.0f;
    temp_v0->unk30 = 0.0f;
    temp_v0->unk2C = 0.0f;
    temp_v0->unk24 = 0.0f;
    temp_v0->unk20 = 0.0f;
    temp_v0->unk1C = 0.0f;
    temp_v0->unk4 = (void *) (sub_0d9a0000 + 0x62A0);
    temp_v0->unk8 = (s32) (temp_v0->unk8 | 2);
    temp_v0->unk28 = (f32) sp10;
    temp_v0->unk18 = (f32) sp8;
    sub_0d990000((f32 *) sp0, (f32 *) temp_v0, sp0->unk8, 0);
    return 1;
}

s32 RenderFunc_IndexShiftOffset(void *arg0, void *arg1) {
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    f32 sp4;

    sp4 = arg0->unk28;
    sp8 = (s32) arg1->unk0;
    spC = (s32) arg1->unk4;
    sp10 = (s32) arg1->unk8;
    sp14 = (s32) arg1->unkC;
    sp18 = (s32) arg1->unk10;
    sp1C = (s32) arg1->unk14;
    sp20 = (s32) arg1->unk18;
    sp24 = (s32) arg1->unk1C;
    __glOdysseyImageConvertHostImage(arg0->unk48, &sp18, arg0->unk44, &sp8, sp, &sp4, 0U, arg0->unk18);
    return 1;
}
