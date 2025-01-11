local build_commands = {
  c = "!g++ -std=c++17 -o %:p:r.o %",
  cpp = "!g++ -std=c++23 -Wall -o %:p:r.o %",
  -- tex = "pdflatex %",
  tex = "VimtexCompile",
}
local debug_build_commands = {
  c = "!g++ -std=c++20 -g -o %:p:r.o %",
  cpp = "!g++ -std=c++23 -g -o %:p:r.o %",
}

vim.api.nvim_create_user_command("Build", function()
  local filetype = vim.bo.filetype

  for file, command in pairs(build_commands) do
    if filetype == file then
      vim.cmd(command)
      break
    end
  end
end, {})

vim.api.nvim_create_user_command("DebugBuild", function()
  local filetype = vim.bo.filetype

  for file, command in pairs(debug_build_commands) do
    if filetype == file then
      vim.cmd(command)
      break
    end
  end
end, {})
