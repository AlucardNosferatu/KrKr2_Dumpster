echo

@for /r .  %%I in (savedata) do if exist "%%I" rd/s/q "%%I"