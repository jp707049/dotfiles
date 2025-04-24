return {
    cmd = { "basedpyright-langserver", "--stdio" },
    filetypes = { "python" },
    root_markers = {
        "Pipfile",
        "pyproject.toml",
        "pyrightconfig.json",
        "requirements.txt",
        "setup.cfg",
        "setup.py",
    },
    settings = {
        basedpyright = {
            analysis = {
                autoImportCompletions = true,
                autoSearchPaths = true,
                diagnosticMode = "openFilesOnly",
                reportMissingTypeStubs = true,
                reportUndefinedVariable = "none", -- covered by ruff
                reportUnreachable = "none",
                reportUnusedImport = "none", -- covered by ruff
                typeCheckingMode = "basic", -- standard
                useLibraryCodeForTypes = true,
            },
            disableOrganizeImports = false,
        },
    },
    single_file_support = true,
}
