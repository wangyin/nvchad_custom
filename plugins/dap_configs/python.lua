local dap = require('dap')
dap.adapters.python = {
 type = 'executable';
 command = vim.fn.stdpath('data')..'/mason/packages/debugpy/venv/bin/python3';
 args = { '-m', 'debugpy.adapter' };
}

dap.configurations.python = {
 {
   -- The first three options are required by nvim-dap
   type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
   request = 'launch';
   name = "Launch file";
   -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options
   program = "${file}"; -- This configuration will launch the current file if used.
   pythonPath = function()
     --The below line will work for virtualenvwrapper, as vim.env.VIRTUAL_ENV points to the active env directory if you use it
     --Test the variable by running :lua print(vim.env.VIRTUAL_ENV) and find your path from there if it is defined
     local conda = vim.fn.environ()['CONDA_PREFIX']
     if conda then return conda ..'/bin/python' end
     -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
     -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
     -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable (done above).
     return '/usr/bin/python'
   end;
 },
}
