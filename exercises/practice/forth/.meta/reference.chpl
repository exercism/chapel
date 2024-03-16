module Forth {

  use List;
  use Map;

  const BINARY_OPS = ["+", "-", "*", "/", "swap", "over"];
  const UNARY_OPS = ["drop", "dup"];

  proc evaluate(statements: [] string) throws {
    var stack: list(int);
    var env: map(string, string);
    for statement in statements {
      var instructions = statement.toLower().split();
      if instructions[0] == ":" && instructions[instructions.size-1] == ";" {
        parse_variable_assignment(env, instructions);
      } else {
	for instruction in instructions {
	  evaluate_instruction(stack, env, instruction);
	}
      }
    }
    return stack;
  }

  proc parse_variable_assignment(ref env: map(string, string), instructions: [] string) throws {
    const varname = instructions[1],
          varvalues = instructions[2..instructions.size-2];
    if isNumber(varname) then throw new IllegalArgumentError("illegal operation");
    var substitued_instr = " ".join([varvalue in varvalues] env.get(varvalue, varvalue));
    if env.contains(varname) then env.replace(varname, substitued_instr);
    else env.add(varname, substitued_instr);
  }

  proc evaluate_instruction(ref stack: list(int), env: map(string, string), instr: string): void throws {
    if env.contains(instr) {
      var new_instrs = env.get(instr, "").split();
      for new_instr in new_instrs {
	evaluate_instruction(stack, env, new_instr);
      }
    } else execute_instruction(stack, instr);
  }

  proc execute_instruction(ref stack: list(int), instr: string) throws {
    if isNumber(instr) then stack.pushBack(instr: int);
    else if BINARY_OPS.find(instr) > -1 then execute_binary_operation(stack, instr);
    else if UNARY_OPS.find(instr) > -1 then execute_unary_operation(stack, instr);
    else throw new IllegalArgumentError("undefined operation");
  }

  proc execute_binary_operation(ref stack: list(int), instr: string) throws {
    if stack.isEmpty() then throw new IllegalArgumentError("empty stack");
    if stack.size == 1 then throw new IllegalArgumentError("only one value on the stack");

    const op1 = stack.popBack(),
	  op2 = stack.popBack();
    
    select instr {
      when "+" do stack.pushBack(op1 + op2);
      when "-" do stack.pushBack(op2 - op1);
      when "*" do stack.pushBack(op1 * op2);
      when "/" {
        if op1 == 0 then throw new IllegalArgumentError("divide by zero");
	else stack.pushBack(op2 / op1);
      }
      when "swap" do stack.pushBack([op1, op2]);
      when "over" do stack.pushBack([op2, op1, op2]);
      otherwise throw new IllegalArgumentError("How did you even get here?");
    }
  }

  proc execute_unary_operation(ref stack: list(int), instr: string) throws {
    if stack.isEmpty() then throw new IllegalArgumentError("empty stack");

    select instr {
      when "drop" do stack.popBack();
      otherwise do stack.pushBack(stack[stack.size-1]); // dup
    }
  }

  proc isNumber(s: string) {
    if s.startsWith("+") || s.startsWith("-") then return s[1..].isDigit();
    else return s.isDigit();
  }

}
