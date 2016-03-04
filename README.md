This plugin manages sessions in vim using mksession.

### Known Issues

1. NERDTree buffers can cause quirky behavior on startup.
2. GITMSG buffers will overwrite the session file on commit.
3. If this plugin isn't the last entry in your bundles, it will cause conflicts with other plugins. e.g. The RainbowParenthesis functions will not be run by the vimrc if this plugin is last.

