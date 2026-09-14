# v1 history reset and clone migration

The public `main` branch was replaced with a clean root on 2026-09-14. The v1
tree contains structure-only fingerprints and synthetic examples; observed log
excerpts and evidence-derived artifacts from the legacy history are not part of
the new root.

History replacement does not erase copies that already exist in forks, old
clones, caches, or pull-request references. Maintainers and downstream users
must therefore follow these rules:

1. Do not merge, push, or otherwise republish a commit from the pre-v1 history.
2. Replace old clones with a fresh clone. A hard reset alone may leave legacy
   objects in the local object database.
3. Fork owners should recreate or reset their forks from the new public root
   and remove legacy refs.
4. Keep any restricted incident-response backup outside public repositories and
   never use it as a Git remote.
5. Ask GitHub Support to clear eligible cached views and legacy fork or
   pull-request references.
6. Rotate any credential or token that may have appeared. A history reset does
   not make an exposed credential safe again.

Follow GitHub's maintained procedure: [Removing sensitive data from a
repository](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository).
Do not copy sensitive values into issues, commit messages, rewrite manifests,
or support tickets.
