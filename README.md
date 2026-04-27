# tesi

Repository focalizzato sui sorgenti della tesi (LaTeX), con esclusione dal versionamento del materiale secondario/pesante.

## Obiettivo
- Tenere in git i file necessari a scrivere e ricompilare la tesi.
- Ridurre rumore e dimensioni della repo escludendo output generati, reference binarie e appunti grezzi.

## Contenuti principali
- `Tesi/`: sorgenti LaTeX della tesi (capitoli, bibliografia, classe, materiale front/back).
- `Dottorato.md`: sintesi testuale del materiale "dottorato".
- `Miei_Appunti.md`: sintesi strutturata degli appunti tecnici.

## Cosa viene escluso
Vedi `.gitignore` per il dettaglio. In sintesi:
- Cartelle non essenziali al build della tesi (`Documenti_Vari/`, `Riferimenti/`, `Dottorato/`, `Miei_Appunti/`).
- File pesanti o non testuali (es. `*.djvu`, `*.fig`, `*.xcf`, mesh).
- Artefatti di compilazione LaTeX (`*.aux`, `*.bbl`, `*.log`, ecc.).
				extra_domain2d (i due fili in 2d per validare il metodo al contorno)

