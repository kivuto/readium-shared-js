readium-shared-js: Kivuto Fork
------------------------------

### Differences

* getCurrentPosition added to ReaderView, allowing callers to avoid duplicate bookmark calculation calls (4e434c7)
* Kivuto-specific cfi-blacklist class (ffbfce8)
* Fix for rectangle offset calculation when in scroll view (d273440)
* Guard against pagination events emitted with no spine item data (6c382d6)

### Building

The `kivuto` subfolder contains a shell script that combines the following steps. It was written as a bash script as it uses the gnu patch program. If on Windows, use Git Bash (part of Git for Windows).

1. Copy plugins-override.cson file into place (includes highlights plugin, omits hypothesis).
2. Invokes `npm run prepare:all`.
3. Patches jQuery with fixes to Sizzle (IE11 getComputedStyle crash, IE permission denied on navigation).
4. Invokes `npm run build` with plugin overriding in place.